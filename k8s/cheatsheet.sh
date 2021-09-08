### minikube
### ---------
minikube start # start cluster
minikube stop # stop cluster
minikube ip # retrieve the IP of vm for use in the browser
minikube dashboard # start web UI dashboard
minikube ssh # ssh into minikube vm
eval $(minikube docker-env) # set docker cli to point to minikube docker runtime
minikube kubectl -- get pods # execute kubectl command inside the minikube vm
alias kubectl="minikube kubectl --" # create alias for easy usage with kubectl inside minikube

### context
### ---------
kubectl config get-contexts # List available contexts
kubectl config current-context # shows the current context
kubectl config view # shows details config information of contexts
kubectl config use-context docker-desktop # switch kubectl to use docker desktop
kubectl config use-context minikube # switch to minikube cluster

### observing resources
### -------------------
kubectl get all # get all resources
kubectl get namespaces # get list of namespaces
kubectl get all --all-namespaces # see all resources in all namespaces
kubectl get --help # show options for 'get'
kubectl get pods # get all pods
kubectl get pods -n mynamespace # get all pods in namespace mynamespace
kubectl get pod mypod # get specific pod mypod
kubectl describe service myservice # get details of service myservice
kubectl logs mypod # show logs for the pod mypod
kubectl get pods -o wide  # show all pods with wide output format 
kubectl get service nginx-service -o json  # show details of service nginx-service in json format
kubectl get deployment -o yaml > nginx-deployment.yaml  # save details of deployments in yaml format
kubectl get pods -l app=nginx -o wide  # get pods by label app=nginx and show details in wide format
kubectl get configmap # get all configmaps

### modifying resources
### ---------------------
kubectl apply -f workloads.yaml # create/update resources in file workloads.yaml to cluster
kubectl delete -f pod-custom.yaml # delete resources in file workloads.yaml from cluster
kubectl edit deployment nginx-deployment # open default editor to edit deployment nginx-deployment
KUBE_EDITOR="nano" kubectl edit deployment nginx-deployment # open nano to edit deployment nginx-deployment

### deployments
### ------------
kubectl rollout status deployment nginx-deployment # display rollout status of deployment 
kubectl rollout history deployment nginx-deployment # display rollout history 
kubectl rollout undo deployment nginx-deployment # execute a rollback on deployment