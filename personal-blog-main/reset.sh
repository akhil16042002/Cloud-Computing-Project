#minikube stop
#minikube delete
minikube start 
#source ~/.bashrc
#eval $(minikube -p minikube docker-env) #linux
minikube docker-env | Invoke-Expression  #powershell 
kubectl apply -f configmap.yaml
kubectl apply -f secret.yaml
kubectl apply -f services.yaml
kubectl apply -f flask-service.yaml
kubectl apply -f mongo-express-service.yaml
kubectl apply -f deployments.yaml
kubectl apply -f flask-deployment.yaml
kubectl apply -f mongo-express-deployment.yaml #
docker build -t flask-app -f  Dockerfile .


