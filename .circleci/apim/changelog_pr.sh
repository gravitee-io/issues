# Sanitize MILESTONE_VERSION
MILESTONE_VERSION_SANITIZED=$(echo ${MILESTONE_VERSION} | sed -e 's/[^a-zA-Z0-9]//g')

# Create a branch for the changelog PR
git checkout -b "changelog_apim_pr_${MILESTONE_VERSION_SANITIZED}"

git status

git add ./CHANGELOG*.adoc

git commit -m "Generate APIM changelog for version ${MILESTONE_VERSION}"

# If not DRY_RUN, push the branch to the remote
git push --set-upstream origin "changelog_apim_pr_${MILESTONE_VERSION_SANITIZED}"
gh pr create --title "APIM Changelog for: ${MILESTONE_VERSION}" --body "Generate APIM changelog for version ${MILESTONE_VERSION}" --reviewer "@gravitee-io/apim"
