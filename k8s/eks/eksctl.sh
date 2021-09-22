# create the cluster with max of 5 nodes with t3.medium machines
eksctl create cluster --name hr-system --version 1.18 --managed --asg-access --region us-west-2 --nodes 1 --nodes-min 1 --nodes-max 5 --nodegroup-name hr-workers --node-type t3.medium

# deploy cluster autoscaler on aws
kubectl apply -f cluster-autoscaler.yaml

# annotate cluster autoscaler deployment so that node running the auto scaler is not deleted 
kubectl -n kube-system annotate deployment.apps/cluster-autoscaler cluster-autoscaler.kubernetes.io/safe-to-evict="false"

# list cluster autoscaler resources
kubectl get all -n kube-system

# deploy cloudwatch agent and fluentd-cloudwatch as DaemonSet for log collection 
kubectl apply -f cloudwatch-agent.yaml

# cnable all types of logs including api, audit, authenticator, controllerManager and scheduler
eksctl utils update-cluster-logging --enable-types all --region us-west-2 --cluster hr-system --approve

# cleanup: delete the cluster 
eksctl delete cluster --name hr-system --region us-west-2 