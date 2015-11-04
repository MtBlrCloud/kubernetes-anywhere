./weave launch-router
./weave launch-proxy --rewrite-inspect
./weave expose -h $HOSTNAME.weave.local

docker run -v /var/run/weave/weave.sock:/weave.sock weaveworks/kubernetes-anywhere:tools compose up
docker run weaveworks/kubernetes-anywhere:tools kubectl create -f /skydns-addon
