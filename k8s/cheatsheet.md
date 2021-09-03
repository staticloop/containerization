### Observing Resources
### -------------------
<code>kubectl get all</code> # get all resources\
<code>kubectl get namespaces </code># get list of namespaces\
<code>kubectl get all --all-namespaces </code># see all resources in all namespaces\ 
<code>kubectl get --help </code># show options for 'get'\
<code>kubectl get pods </code># get all pods\
<code>kubectl get pods -n mynamespace </code># get all pods in namespace mynamespace\
<code>kubectl get pod mypod </code># get specific pod mypod\
<code>kubectl describe service myservice </code># get details of service myservice\
<code>kubectl logs mypod </code># show logs for the pod mypod\
<code>kubectl get pods -o wide </code> # show all pods with wide output format \ 
<code>kubectl get service nginx-service -o json </code> # show details of service nginx-service in json format\
<code>kubectl get deployment -o yaml > nginx-deployment.yaml </code> # save details of deployments in yaml format\
<code>kubectl get pods -l app=nginx -o wide </code> # get pods by label app=nginx and show details in wide format\
<code>kubectl get configmap </code># get all configmaps\

### Modifying resources
### ---------------------
kubectl apply -f workloads.yaml # create/update resources in file workloads.yaml to cluster\
kubectl delete -f pod-custom.yaml # delete resources in file workloads.yaml from cluster\
kubectl edit deployment nginx-deployment # open default editor to edit deployment nginx-deployment\
KUBE_EDITOR="nano" kubectl edit deployment nginx-deployment # open nano to edit deployment nginx-deployment\

### Context
### ---------
kubectl config get-contexts - shows config information, including available contexts\
kubectl config current-context - shows the current context\
kubectl config use-context docker-desktop - switch context\
kubectl exec -it nginx-pod -- /bin/bash\

### Deployments
### ------------
kubectl rollout status deployment nginx-deployment # display rollout status of deployment \
kubectl rollout history deployment nginx-deployment # display rollout history \
kubectl rollout undo deployment nginx-deployment # execute a rollback on deployment\