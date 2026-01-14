# envoy-ai-gateway

Please add description

**Homepage:** <https://github.com/giantswarm/envoy-ai-gateway-app>

## Source Code

* <https://github.com/some-org/some-repo>

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs) to get started.

### Install from DockerHub

Once Helm has been set up correctly, install the chart from dockerhub:

``` shell
    helm install eg oci://docker.io/envoyproxy/gateway-helm --version v0.0.0-latest -n envoy-gateway-system --create-namespace
```
You can find all helm chart release in [Dockerhub](https://hub.docker.com/r/envoyproxy/gateway-helm/tags)

### Install from Source Code

You can also install the helm chart from the source code:

To install the eg chart along with Gateway API CRDs and Envoy Gateway CRDs:

``` shell
    make kube-deploy TAG=latest
```

### Skip install CRDs

You can install the eg chart along without Gateway API CRDs and Envoy Gateway CRDs, make sure CRDs exist in Cluster first if you want to skip to install them, otherwise EG may fail to start:

``` shell
    helm install eg --create-namespace oci://docker.io/envoyproxy/gateway-helm --version v0.0.0-latest -n envoy-gateway-system --skip-crds
```

To uninstall the chart:

``` shell
    helm uninstall eg -n envoy-gateway-system
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| controller.affinity | object | `{}` |  |
| controller.extraEnvVars | list | `[]` |  |
| controller.fullnameOverride | string | `"ai-gateway-controller"` |  |
| controller.image.repository | string | `"docker.io/envoyproxy/ai-gateway-controller"` |  |
| controller.image.tag | string | `""` |  |
| controller.imagePullPolicy | string | `"IfNotPresent"` |  |
| controller.imagePullSecrets | list | `[]` |  |
| controller.leaderElection.enabled | bool | `true` |  |
| controller.logLevel | string | `"info"` |  |
| controller.mcpSessionEncryptionSeed | string | `"default-insecure-seed"` |  |
| controller.metricsRequestHeaderAttributes | string | `""` |  |
| controller.metricsRequestHeaderLabels | string | `""` |  |
| controller.mutatingWebhook.caBundleName | string | `"ca.crt"` |  |
| controller.mutatingWebhook.certManager.certificateName | string | `"self-signed-cert-for-mutating-webhook"` |  |
| controller.mutatingWebhook.certManager.enable | bool | `false` |  |
| controller.mutatingWebhook.certManager.issuerName | string | `"self-signed-issuer-for-mutating-webhook"` |  |
| controller.mutatingWebhook.tlsCertName | string | `"tls.crt"` |  |
| controller.mutatingWebhook.tlsCertSecretName | string | `"self-signed-cert-for-mutating-webhook"` |  |
| controller.mutatingWebhook.tlsKeyName | string | `"tls.key"` |  |
| controller.nameOverride | string | `""` |  |
| controller.nodeSelector | object | `{}` |  |
| controller.podAnnotations | object | `{}` |  |
| controller.podEnv | object | `{}` |  |
| controller.podSecurityContext | object | `{}` |  |
| controller.replicaCount | int | `1` |  |
| controller.resources.limits.memory | string | `"1024Mi"` |  |
| controller.resources.requests.cpu | string | `"100m"` |  |
| controller.resources.requests.memory | string | `"256Mi"` |  |
| controller.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| controller.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| controller.securityContext.privileged | bool | `false` |  |
| controller.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| controller.securityContext.runAsGroup | int | `65532` |  |
| controller.securityContext.runAsNonRoot | bool | `true` |  |
| controller.securityContext.runAsUser | int | `65532` |  |
| controller.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| controller.service.ports[0].appProtocol | string | `"http"` |  |
| controller.service.ports[0].name | string | `"mutating-webhook"` |  |
| controller.service.ports[0].port | int | `9443` |  |
| controller.service.ports[0].protocol | string | `"TCP"` |  |
| controller.service.ports[0].targetPort | int | `9443` |  |
| controller.service.ports[1].appProtocol | string | `"grpc"` |  |
| controller.service.ports[1].name | string | `"grpc"` |  |
| controller.service.ports[1].port | int | `1063` |  |
| controller.service.ports[1].protocol | string | `"TCP"` |  |
| controller.service.ports[1].targetPort | int | `1063` |  |
| controller.service.ports[2].appProtocol | string | `"http"` |  |
| controller.service.ports[2].name | string | `"http-metrics"` |  |
| controller.service.ports[2].port | int | `9090` |  |
| controller.service.ports[2].protocol | string | `"TCP"` |  |
| controller.service.ports[2].targetPort | int | `9090` |  |
| controller.service.type | string | `"ClusterIP"` |  |
| controller.serviceAccount.annotations | object | `{}` |  |
| controller.serviceAccount.create | bool | `true` |  |
| controller.serviceAccount.name | string | `""` |  |
| controller.spanRequestHeaderAttributes | string | `""` |  |
| controller.tolerations | list | `[]` |  |
| controller.volumes | list | `[]` |  |
| controller.watch.cacheSyncTimeout | string | `"2m"` |  |
| controller.watch.namespaces | list | `[]` |  |
| endpointConfig.rootPrefix | string | `"/"` |  |
| envoyGateway.namespace | string | `"envoy-gateway-system"` |  |
| extProc.extraEnvVars | list | `[]` |  |
| extProc.image.repository | string | `"gsoci.azurecr.io/giantswarm/envoyproxy-ai-gateway-extproc"` |  |
| extProc.image.tag | string | `""` |  |
| extProc.imagePullPolicy | string | `"IfNotPresent"` |  |
| extProc.imagePullSecrets | list | `[]` |  |
| extProc.logLevel | string | `"info"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)

