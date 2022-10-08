# Changelog

## v0.4.0-alpha.0

### Major features

- 🚀 publish container image on GitHub Container Registry
- 🚀 publish Helm Chart on GitHub pages
- ⬆️ upgrade dependencies to reduce warnings
- ✨ drop root privileges
- 🌱 some ground work to automate the release process via GitHub Actions

### Note worthy changes

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
