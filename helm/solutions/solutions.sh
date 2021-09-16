##################
# walkthrough hr-system
##################
kubectl get all
helm install --debug --dry-run myhr-system hr-system-0.1.0.tgz
helm install myhr-system hr-system-0.1.0.tgz
helm list
kubectl get all
helm get all myhr-system 
helm uninstall myhr-system
kubectl get all

##################
# setup wordpress
##################
kubectl get all
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install my-release bitnami/wordpress
kubectl get all
helm list
helm get all my-release
helm uninstall my-release
kubectl get all

##################
# Neo4j-Helm
##################
helm install mygraph https://github.com/neo4j-contrib/neo4j-helm/releases/download/4.3.2-1/neo4j-4.3.2-1.tgz --set core.standalone=true --set acceptLicenseAgreement=yes --set neo4jPassword=mySecretPassword