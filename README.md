- Create local Registry
- docker run -d -p 5000:5000 --restart=always --name registry registry:2
- Building docker image locally:
- docker login localhost:5000
- docker build -t localhost:5000/hello-springboot .
- kubectl apply -f kube
- kubectl port-forward svc/frontend 8383:8181
- curl --location 'localhost:8383/k8s/api/v1/hello'
- or Postman GET localhost:8383/k8s/api/v1/hello
- Clean up with kubectl delete -f kube

- Skaffold build and deploy steps are as follows:
- skaffold init
- Choose Dockerfile
- Choose pom.xml
- skaffold dev --default-repo=localhost:5000 --port-forward
- Test on: localhost:8080/k8s/api/v1/hello