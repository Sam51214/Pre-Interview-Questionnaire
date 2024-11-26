# Pre-Interview-Questionnaire

# for Docker 
build docker images from the docker file
docker build -t java-app .
run the image on port 8080
docker run -d --name java-app -p 8080:8080 java-app 
 
# for deploying k8s
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

# verifying the deployment 
kubectl get deployments
kubectl get pods
kubectl get services
