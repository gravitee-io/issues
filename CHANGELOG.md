# Change Log

## [0.17.0 (2016-07-20)](https://github.com/gravitee-io/issues/milestone/4?closed=1)

**Bug fixes**

- \[management-api\] User does not have access to API even if role is settled [\#156](https://github.com/gravitee-io/issues/issues/156)
- \[portal\] \[policy\] Do not update policy description when cancelling the dialog [\#153](https://github.com/gravitee-io/issues/issues/153)
- \[portal\] LDAP admins cannot create api keys [\#151](https://github.com/gravitee-io/issues/issues/151)
- \[gateway\] \[reporter\] Shutdown LMAX disruptor before reporter processors [\#131](https://github.com/gravitee-io/issues/issues/131)
- \[docker\] Error in launch.sh [\#128](https://github.com/gravitee-io/issues/issues/128)

**Features**

- \[policy\] \[groovy\] Use codemirror for groovy scripts textarea [\#152](https://github.com/gravitee-io/issues/issues/152)
- \[fetcher http\] test must not depend on external http server [\#150](https://github.com/gravitee-io/issues/issues/150)
- \[management-api\] Page ids don't have to contain the page title [\#148](https://github.com/gravitee-io/issues/issues/148)
- \[portal\] add a text-editor for webui's textarea [\#147](https://github.com/gravitee-io/issues/issues/147)
- \[archetype\] Update dependencies version [\#144](https://github.com/gravitee-io/issues/issues/144)
- \[policy\] \[dynamic-routing\] Regex naming group [\#142](https://github.com/gravitee-io/issues/issues/142)
- \[web-ui\] \[policy\] Add a title and/or description in policy configuration [\#141](https://github.com/gravitee-io/issues/issues/141)
- \[management-api\] Create an API from a Swagger descriptor [\#139](https://github.com/gravitee-io/issues/issues/139)
- \[reporter\] Gravitee may silently drop some Reportable events [\#134](https://github.com/gravitee-io/issues/issues/134)
- \[gateway\] Set endpoint selected by load-balancer in execution context [\#133](https://github.com/gravitee-io/issues/issues/133)
- \[gateway\] AbstractHttpInvoker creates Regexp objects wastefully  [\#129](https://github.com/gravitee-io/issues/issues/129)
- \[reporter\] \[file\] Reporter does too many unneeded memory allocations [\#127](https://github.com/gravitee-io/issues/issues/127)
- \[management-api\] Add a developer profile to run management-api from command-line [\#126](https://github.com/gravitee-io/issues/issues/126)
- \[reporter\] \[file\] Incoherent thread synchronisation [\#123](https://github.com/gravitee-io/issues/issues/123)

## [0.16.0 (2016-07-05)](https://github.com/gravitee-io/issues/milestone/3?closed=1)

**Bug fixes**

- \[policy\] \[mock\] Issue with special character  [\#118](https://github.com/gravitee-io/issues/issues/118)
- \[portal\] Policy view not well refreshed [\#117](https://github.com/gravitee-io/issues/issues/117)
- \[management-api\] spring-webmvc version mismatch  [\#116](https://github.com/gravitee-io/issues/issues/116)
- \[policy\] \[oauth2\] Send a 503 status code if oauth2 server is unavailable [\#103](https://github.com/gravitee-io/issues/issues/103)
- \[portal\] Unable to export API Definition [\#102](https://github.com/gravitee-io/issues/issues/102)
- \[portal\] Overlap problem on resource form [\#98](https://github.com/gravitee-io/issues/issues/98)
- \[portal\] Unable to upload a documentation file under Firefox [\#90](https://github.com/gravitee-io/issues/issues/90)
- \[portal\] Admin user must be able to manage all APIs / Applications [\#85](https://github.com/gravitee-io/issues/issues/85)

**Features**

- \[policy\] \[xslt\] XSL stylesheet should be templatable [\#122](https://github.com/gravitee-io/issues/issues/122)
- \[policy\] \[cache\] Force cache to refresh for a specific key [\#119](https://github.com/gravitee-io/issues/issues/119)
- \[gateway\] \[health-check\] Default expectation [\#111](https://github.com/gravitee-io/issues/issues/111)
- \[gateway\] Add jsonPath to expression language [\#109](https://github.com/gravitee-io/issues/issues/109)
- \[policy\] Logging policy [\#108](https://github.com/gravitee-io/issues/issues/108)
- \[policy\] \[rest-to-soap\] Use @OnRequestContent to push SOAP envelope [\#107](https://github.com/gravitee-io/issues/issues/107)
- \[tools\] Upgrade Vagrant box for Virtualbox [\#105](https://github.com/gravitee-io/issues/issues/105)
- \[gateway\] Upgrade to Vert.x 3.3.0 [\#104](https://github.com/gravitee-io/issues/issues/104)
- \[gateway\] Per-api HTTP proxy settings [\#96](https://github.com/gravitee-io/issues/issues/96)
- \[policy\] \[dynamic-routing\] Simplify dynamic routing policy matchers [\#94](https://github.com/gravitee-io/issues/issues/94)
- \[gateway\] \[health-check\] Disable endpoint automatically [\#92](https://github.com/gravitee-io/issues/issues/92)
- \[gateway\] \[health-check\] Endpoint state [\#91](https://github.com/gravitee-io/issues/issues/91)
- \[gateway\] @OnRequestContent [\#62](https://github.com/gravitee-io/issues/issues/62)
- \[portal\] Login page : focus on username input field. [\#14](https://github.com/gravitee-io/issues/issues/14)
- \[doc\] move all url to https [\#3](https://github.com/gravitee-io/issues/issues/3)

## [0.15.0 (2016-06-22)](https://github.com/gravitee-io/issues/milestone/2?closed=1)

**Bug fixes**

- \[portal\] Login page: Logo not well displayed under Safari [\#81](https://github.com/gravitee-io/issues/issues/81)

**Features**

- \[healthcheck\] Enable / disable health-check by endpoint  [\#88](https://github.com/gravitee-io/issues/issues/88)
- \[policy\] Dynamic routing policy [\#87](https://github.com/gravitee-io/issues/issues/87)

## [0.14.1 (2016-06-21)](https://github.com/gravitee-io/issues/milestone/1?closed=1)

**Bug fixes**

- \[management-api\] Unable to create a new API [\#84](https://github.com/gravitee-io/issues/issues/84)
- \[gateway\] gateway cannot connect to elastic reporter [\#1](https://github.com/gravitee-io/issues/issues/1)

**Features**

- \[portal\] redirect user to login page when he's disconnected [\#80](https://github.com/gravitee-io/issues/issues/80)
