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

### RBAC
### ------------
kubectl get roles
kubectl get rolebindings
kubectl get clusterroles
kubectl get clusterrolebindings
kubectl get serviceaccount default -o yaml # get details of default service account
kubectl get serviceaccount <name> -o yaml # get details of service account  
kubectl get pod <podname> -o yaml # get details of service account associated with the pod

### Scheduling
### ------------
kubectl get nodes --show-labels # get list of nodes along with labels
kubectl label nodes <node-name> <label-key>=<label-value> # create a custom label on a node
kubectl label node docker-desktop virtualcpus- # remove a node label virtualcpus
kubectl taint nodes node1 key1=value1:NoSchedule # taint node node1 with key1 with value1
kubectl taint nodes node1 key1=value1:NoSchedule- # remove a taint from the node node1
kubectl describe node docker-desktop # look out for taint key

### observing
### ------------
kubectl get pods -o wide # get pod information in wide format
kubectl edit pod gateway-pod # edit Pod gateway-pod with default editor
kubectl edit deployment my-deployment # edit Deployment my-deployment with default editor  
KUBE_EDITOR="nano" kubectl edit deployment my-deployment # edit Deployment my-deployment with nano editor
kubectl get service nginx-service -o json # get details of nginx-service in json format
kubectl get deployment my-deployment -o yaml > my-deployment.yaml # save details of Deployment in yaml format 
kubectl get pods -l app=nginx -o wide # list pods with labels app=nginx 
