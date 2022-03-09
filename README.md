# A [helm](https://github.com/helm/helm) docker image built to run in Azure Pipelines

## Why
Despite `helm` has it's own docker images it's not quite reasonable to run them in Azure Pipelines.
Azure Pipelines' [container jobs](https://docs.microsoft.com/en-us/azure/devops/pipelines/process/container-phases?view=azure-devops#non-glibc-based-containers) 
require additional tools (node, bash, sudo, shadow) to be present in your docker image, as well as Azure CLI needed for proper authentication. Thus, this repo was created.

## Example

This simplified example will get credentials for an abstract Kubernetes cluster
and install a helm chart into it.

```yaml
# azure-pipelines.yml in your db migrations repo
trigger: none

container: ghcr.io/arkadiuminc/helm:main

steps:

- script: az aks get-credentials -g my-aks-resource-group -n my-aks
  displayName: Get "my-aks" credentials

- script: helm install mariadb:stable
  displayName: Install MariaDB
```

## Arkadium

[We are hiring!](https://apply.workable.com/arkadium-1/?utm_source=github)
