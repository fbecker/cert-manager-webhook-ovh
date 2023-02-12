# Changelog

## v0.4.2-alpha.0

### Noteworthy changes

- ⏩ update cert-manager dependency to v1.11.0
- ⏩ update k8s dependency to v0.26.0
- ✨ build image using Go 1.19.5

## v0.4.1

### Noteworthy changes

- 🐛 include minutes and seconds in certificates duration fields. see [argoproj/argo-cd#6008](https://github.com/argoproj/argo-cd/issues/6008) for details. via [@aegaeonit](https://github.com/aegaeonit)
- ✨ optimize Dockerfile for better builds
- ✨ explicitly use Alpine 3.16 throughout the Dockerfile
- ✨ run the webhook as `nobody`/`nogroup`
- ✨ reduce container image from 107MB down to 56.2MB
- ✨ add CNAME strategy to issuers in [#8](https://github.com/aureq/cert-manager-webhook-ovh/pull/8). Thanks ([@Zcool85](https://github.com/Zcool85))
- ✨ build image using Go 1.19.4

## v0.4.0

### Major features

- ⚠️ breaking changes ahead if comming from previous version
- 📄 documentation and helm chart hosted at [https://aureq.github.io/cert-manager-webhook-ovh/](https://aureq.github.io/cert-manager-webhook-ovh/)
- ✨ deploy multiple `Issuer` (namespaced) and `ClusterIssuer` via chart
- ✨ either specify your OVH credentials, or use an existing secret
- ✨ OVH credential are all stored in a secret (ApplicationKey, ApplicaitonSecret, ConsumerKey)
- ✨ deploy necessary permissions to access the OVH credentials
- ✨ role based access control to access secrets across namespaces
- 🚀 publish container image on GitHub Container Registry
- 🚀 publish Helm Chart on GitHub pages
- ⬆️ upgrade dependencies to reduce warnings
- ✨ drop root privileges
- ✨ add support for HTTP/HTTPS proxy

### Noteworthy changes

- 🚀 use kubernetes recommended labels
- ✨ move some helm logic in _helpers.tpl
- ✨ completely rework `values.yaml` to support creating issuers and ovh credentials
- ✨ create role and bind it so the webhook can access necessary secrets
- ⬆️ upgrade dependencies to reduce warnings
  - cert-manager `v1.5.3` to `v1.9.1`
  - go-ovh `v1.1.0` to `v1.3.0`
  - client-go `v0.22.1` to `v0.24.2`
- build webhook using golang `1.18`
- ✨ add image pull secrets to helm chart by Julian Stiller)
- 🐛 fix base64 encoded secrets by [@julienkosinski](https://github.com/julienkosinski)
- 🔥 drop root privilges (missing attribution)
- 🐛 fix how security context is checked
- ✨ add RBAC (missing attribution)
- ⬆️ upgrade to Alpine Linux 3.16 container image
- 🐛 fix `Makefile` references and enable HTTP proxy to local build environment
- ✨ set `CAP_NET_BIND_SERVICE` to binary to bind on privileged ports without root privileges (missing attribution)
- 🐛 add `libpcap` to container image
- ✨ create logo based on cert-manager logo and [icons8](https://icons8.com/icon/92/link)
- ✨ more fields populated in `Chart.yaml`
- 🌱 some ground work to automate the release process via GitHub Actions and GitHub packages

## v0.4.0-alpha.1

### Major features

- ⚠️ breaking changes ahead
- ✨ major helm chart improvements
- ✨ deploy multiple `Issuer` (namespaced) and `ClusterIssuer` via chart
- ✨ either specify your OVH credentials, or use an existing secret
- ✨ OVH credential are all stored in a secret (ApplicationKey, ApplicaitonSecret, ConsumerKey)
- ✨ deploy necessary permissions to access the OVH credentials
- ✨ role based access control to access secrets across namespaces

### Note worthy changes

- ✨ move some helm logic in _helpers.tpl
- ✨ completely rework `values.yaml` to support creating issuers and ovh credentials
- ✨ create role and bind it so the webhook can access necessary secrets
- 📄 documentation and helm chart hosted at [https://aureq.github.io/cert-manager-webhook-ovh/](https://aureq.github.io/cert-manager-webhook-ovh/)

## v0.4.0-alpha.0

### Major features

- 🚀 publish container image on GitHub Container Registry
- 🚀 publish Helm Chart on GitHub pages
- ⬆️ upgrade dependencies to reduce warnings
- ✨ drop root privileges
- 🌱 some ground work to automate the release process via GitHub Actions

### Noteworthy changes

- ✨ add support for HTTP proxy
- ⬆️ upgrade dependencies to reduce warnings
  - cert-manager `v1.5.3` to `v1.9.1`
  - go-ovh `v1.1.0` to `v1.3.0`
  - client-go `v0.22.1` to `v0.24.2`
- build webhook using golang `1.18`
- ✨ add image pull secrets to helm chart by Julian Stiller)
- 🐛 fix base64 encoded secrets by [@julienkosinski](https://github.com/julienkosinski)
- 🔥 drop root privilges (missing attribution)
- 🐛 fix how security context is checked
- ✨ add RBAC (missing attribution)
- ⬆️ upgrade to Alpine Linux 3.16 container image
- 🐛 fix `Makefile` references and enable HTTP proxy to local build environment
- ✨ set `CAP_NET_BIND_SERVICE` to binary to bind on privileged ports without root privileges (missing attribution)
- 🐛 add `libpcap` to container image
- ✨ create logo based on cert-manager logo and [icons8](https://icons8.com/icon/92/link)
- ✨ more fields populated in `Chart.yaml`
- 🌱 some ground work to automate the release process via GitHub Actions and GitHub packages

## 0.3.0

- Initial work by [@baarde](https://github.com/baarde)
- [cert-manager-webhook-ovh](https://github.com/baarde/cert-manager-webhook-ovh/)
- Commit [`ab4d192`](https://github.com/baarde/cert-manager-webhook-ovh/commit/ab4d192358ed7048091e1788e7256fc4fbf5e767)
