

# https://github.com/gravitee-io/issues/milestones

if [ "x${MILESTONE_VERSION}" == "x" ]; then
  echo "[MILESTONE_VERSION] env. var. is not set, and must be."
  exit 5
fi;

if [ "x${DRY_RUN}" == "x" ]; then
  echo "[DRY_RUN] env. var. is not set, and must be."
  exit 5
fi;

ssh -T git@github.com || true

export GIT_GRAVITEE_DOCKER_REPO=$(mktemp -d -t "git_gravitee_packages_repo-XXXXXXXXXX")
git clone git@github.com:gravitee-io/gravitee-docker.git ${GIT_GRAVITEE_DOCKER_REPO}

export OPS_HOME=$(pwd)

cd ${GIT_GRAVITEE_DOCKER_REPO}

git checkout ci2
# [cicd/fix-changelog-def] fixes https://app.circleci.com/pipelines/github/gravitee-io/issues/93/workflows/0ac13855-4455-4013-80b9-29739be8d1e8/jobs/94
# see also PR :
git checkout cicd/fix-changelog-def


export DOCK_IMAGE_NAME="graviteeio/changelog"


docker build -t ${DOCK_IMAGE_NAME} images/changelog/

cd ${OPS_HOME}

# --- Now we run the image to Generate the Changelog


export GIT_GRAVITEE_ISSUES_REPO=$(mktemp -d -t "git_gravitee_issues_repo-XXXXXXXXXX")
git clone git@github.com:gravitee-io/issues.git ${GIT_GRAVITEE_ISSUES_REPO}

# docker run --rm--env MILESTONE_VERSION="${MILESTONE_VERSION}" -v ${GIT_GRAVITEE_ISSUES_REPO}:/data ${DOCK_IMAGE_NAME}
docker run --name chglog_generator_apim --env MILESTONE_VERSION="${MILESTONE_VERSION}" -v ${GIT_GRAVITEE_ISSUES_REPO}:/data ${DOCK_IMAGE_NAME}
echo "# ---------------------------------------------------------------"
echo "   Here are the logs  of the [chglog_generator_apim] container : "
echo "# ---------------------------------------------------------------"
docker logs chglog_generator_apim



cd ${GIT_GRAVITEE_ISSUES_REPO}
# --------------------------------------------------------
echo "# --------------------------------------------------------"
echo "   Here is the full Generated CHANGELOG : "
echo "# --------------------------------------------------------"
# cat ${GIT_GRAVITEE_ISSUES_REPO}/CHANGELOG*.adoc
export FICH_MODIF=$(git status | grep modified | awk '{print $2}')
cat ${FICH_MODIF}
# echo "# --------------------------------------------------------"
# echo "Here are the 40 first lines of the Generated CHANGELOG : "
# echo "# --------------------------------------------------------"
# # cat ${GIT_GRAVITEE_ISSUES_REPO}/CHANGELOG*.adoc
# export FICH_MODIF=$(git status | grep modified | awk '{print $2}')
# cat ${FICH_MODIF} | head -n 40
echo "# --------------------------------------------------------"
echo "Here is the git status : "
git status
echo "# --------------------------------------------------------"
git add --update
git commit -m "Generate changelog for version ${MILESTONE_VERSION}"

export WHAT_THE_HECK_REPLACEMENT=$(echo "${MILESTONE_VERSION}" | sed "s# #_#g")
git tag ${WHAT_THE_HECK_REPLACEMENT}


if [ "${DRY_RUN}" == "0" ]; then
  echo "# --->>> NO IT IS NOT A DRY RUN"
  git push --tags origin master
else
  echo "# --->>> THIS IS A DRY RUN (no git push)"
fi;

echo "# --------------------------------------------------------"
echo "# --- This Orb job next version will : "
echo "# --- + exec dry run "
echo "# --- + send the Generated CHANGELOG to slack "
echo "# --- + approval job to git push CHANGELOG "
echo "# --------------------------------------------------------"
