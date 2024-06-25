# ZeroTier Helm Charts



## Adding the Chart Repo

```
helm repo add zerotier https://zerotier.github.io/helm-charts
```

## Crisp Status Local (crisp-status-local)

Installs an instance of [crisp-status-local](https://github.com/crisp-im/crisp-status-local) into your cluster.

### Configuring the chart

There's only one required configuration variable: `crispReporterToken:`.  Get this from your crisp.chat status page settings.

## ZeroTier Ingress Helm (zerotier-ingress-helm)

This chart enables connections to private services running inside your Kubernetes cluster over ZeroTierby combining an instance of ZeroTier with an instance of Nginx.

### Configuring the Chart

Create your values.yaml file.  The following fields are required:

| Field Name | Description |
| ---------- | ----------- |
| nginx.listenPort | The port Nginx is configured to listen on (default 8000) |
| nginx.proxyAddress | The URL of the upstream service.  (ex: `http://my-service.my-namespace.svc.cluster.local:1234`) |
| nginx.proxyTimeout | The timeout (in seconds) for prosied requests (default 60) |
| zerotier.identity.public | The public ZeroTier identity. Use `zerotier-idtool` to generate an identity on a per-ingress basis.|
| zerotier.identity.secret | The secret ZeroTier identity. Use `zerotier-idtool` to generate an identity on a per-ingress basis.|
| zerotier.networkID | The network ID the ZeroTier instance will connect to. |

