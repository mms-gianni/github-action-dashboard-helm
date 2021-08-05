# Helm Charts for the GitHub Action Dashboard

![ScreenShot](https://github.com/ChrisKinsman/github-action-dashboard/blob/main/docs/images/ActionDashboardScreenShot.png?raw=true)

https://github.com/ChrisKinsman/github-action-dashboard

## Helm installation
```
helm repo add github-action-dashboard https://mms-gianni.github.io/github-action-dashboard-helm

helm install github-action-dashboard github-action-dashboard/github-action-dashboard
```

## Local installation with KiND

### Requirements
- KiND (v0.11.1 go1.16.4)
- HELM (v3.4.2 go1.14.13)

### install
```
export RELEASENAME=github-action-dashboard
kind create cluster --config kind.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
helm install $RELEASENAME ./github-action-dashboard -f ./github-action-dashboard/values.yaml -n $RELEASENAME --create-namespace
```

### update values
```
helm upgrade $RELEASENAME ./github-action-dashboard -f ./github-action-dashboard/values.yaml  -n $RELEASENAME
```

### uninstall
```
kind delete cluster --name github-action-dashboard
```
