### repo
### ---------

helm repo add stable https://charts.helm.sh/stable # Add a chart repository, helm repo add [NAME] [URL]
helm repo update # sync local with remote repo

### install
### ---------
helm install happy-panda bitnami/wordpress # install chart bitnami/wordpress from artifacthub.io
helm install hr-system ./hr-system # install chart local chart directory
helm install hr-system hr-system-0.1.0.tgz # install chart from tgz archive
helm install -f myvalues.yaml myredis ./redis # override default values from myvalues.yaml
helm install --set name=prod myredis ./redis # override key 'name' with value prod
helm install --debug --dry-run hr-system ./hr-system # execute a dry run, do not apply to cluster

### others
### ---------
helm list # show charts installed on the cluster 
helm uninstall hr-system # uninstall release with name hr-system
helm get all hr-system # get details on release with name hr-system
helm lint ./hr-system # verify that chart is well formed