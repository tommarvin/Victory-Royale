#some aws stuff here, access key and region etc
aws eks --region eu-west-2 update-kubeconfig --name vrcluster

#make kubectl
cd kubernetes

kubectl config get-contexts
kubectl apply -f backend/backend.yaml
kubectl apply -f frontend/frontend.yaml
kubectl apply -f nginx/config-map.yaml
kubectl apply -f nginx/service.yaml
kubectl apply -f nginx/deployment.yaml
kubectl get services
kubectl get pods