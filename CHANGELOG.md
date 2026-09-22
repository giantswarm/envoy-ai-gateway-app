# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- **This chart is deprecated.** Upstream Envoy AI Gateway was [renamed to Agent Router](https://theagentrouter.ai/blog/envoy-ai-gateway-is-now-agent-router/) and moved to the AAIF. Use [agentgateway](https://github.com/giantswarm/agentgateway) instead. See [giantswarm/giantswarm#37718](https://github.com/giantswarm/giantswarm/issues/37718).
  - `deprecated: true` set in `Chart.yaml`.
  - The app has been removed from `gateway-api-bundle` ([#219](https://github.com/giantswarm/gateway-api-bundle/pull/219)).

## [0.1.1] - 2026-06-02

### Changed

- Update chart icon to use Giant Swarm-hosted Envoy AI Gateway icon.

## [0.1.0] - 2026-01-14

Initial release

- changed: `app.giantswarm.io` label group was changed to `application.giantswarm.io`

[Unreleased]: https://github.com/giantswarm/envoy-ai-gateway-app/compare/v0.1.1...HEAD
[0.1.1]: https://github.com/giantswarm/envoy-ai-gateway-app/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/envoy-ai-gateway-app/releases/tag/v0.1.0
