# https://github.com/docker/for-mac/issues/3694
# https://github.com/docker/for-mac/issues/4774

kubectl patch clusterrolebinding docker-for-desktop-binding --type=json --patch $'[{"op":"replace", "path":"/subjects/0/name", "value":"system:serviceaccounts:kube-system"}]'