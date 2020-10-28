# app

![Version: 0.0.20](https://img.shields.io/badge/Version-0.0.20-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: latest](https://img.shields.io/badge/AppVersion-latest-informational?style=flat-square)

An app for the web

## Values

| Key                                        | Type   | Default               | Description |
| ------------------------------------------ | ------ | --------------------- | ----------- |
| autoscaling.enabled                        | bool   | `true`                |             |
| autoscaling.maxReplicas                    | int    | `3`                   |             |
| autoscaling.minReplicas                    | int    | `1`                   |             |
| autoscaling.targetCPUUtilizationPercentage | int    | `80`                  |             |
| config                                     | object | `{}`                  |             |
| image.pullPolicy                           | string | `"Always"`            |             |
| image.repository                           | string | `"vibioh/scratch"`    |             |
| ingress.enabled                            | bool   | `false`               |             |
| ingress.hosts[0]                           | string | `"example.localhost"` |             |
| ingress.http_middlewares[0]                | string | `"redirect@file"`     |             |
| ingress.https_middlewares[0]               | string | `"compress@file"`     |             |
| ingress.https_middlewares[1]               | string | `"rate-limit@file"`   |             |
| init.command[0]                            | string | `"/bin/bash"`         |             |
| init.command[1]                            | string | `"-c"`                |             |
| init.command[2]                            | string | `"echo Hello"`        |             |
| init.enabled                               | bool   | `false`               |             |
| init.env                                   | object | `{}`                  |             |
| init.pullPolicy                            | string | `"Always"`            |             |
| init.repository                            | string | `"vibioh/scratch"`    |             |
| init.resources.limits.cpu                  | string | `"100m"`              |             |
| init.resources.limits.memory               | string | `"64M"`               |             |
| init.resources.requests.cpu                | string | `"100m"`              |             |
| init.resources.requests.memory             | string | `"64M"`               |             |
| init.secrets                               | object | `{}`                  |             |
| livenessProbePath                          | string | `"/health"`           |             |
| podAnnotations."prometheus.io/port"        | string | `"1080"`              |             |
| podAnnotations."prometheus.io/scheme"      | string | `"http"`              |             |
| podAnnotations."prometheus.io/scrape"      | string | `"true"`              |             |
| pod_disruption.enabled                     | bool   | `true`                |             |
| pod_disruption.minAvailable                | int    | `1`                   |             |
| port                                       | int    | `1080`                |             |
| readinessProbePath                         | string | `"/health"`           |             |
| resources.limits.cpu                       | string | `"100m"`              |             |
| resources.limits.memory                    | string | `"64M"`               |             |
| resources.requests.cpu                     | string | `"100m"`              |             |
| resources.requests.memory                  | string | `"64M"`               |             |
| secrets                                    | object | `{}`                  |             |
| service.port                               | int    | `80`                  |             |
| service.type                               | string | `"ClusterIP"`         |             |
| strategy                                   | object | `{}`                  |             |

---

Autogenerated from chart metadata using [helm-docs v1.4.0](https://github.com/norwoodj/helm-docs/releases/v1.4.0)