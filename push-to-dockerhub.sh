docker login
echo "Login Docker Hub"
echo "--------------------------------------------------------"
docker commit discovery namnguyen2110/discovery:latest
docker push namnguyen2110/discovery:latest
echo "Pushed to Dockerhub repository"
echo "--------------------------------------------------------"
docker stop discovery
docker rm discovery
echo "Stop and remove the completed current container"
echo "---------------------------------------------------------"
echo "Completed discovery deployment on local"
docker commit gateway namnguyen2110/discovery:latest
docker push namnguyen2110/gateway:latest
echo "Pushed to Dockerhub repository"
echo "--------------------------------------------------------"
docker stop gateway
docker rm gateway
echo "Stop and remove the completed current container"
echo "---------------------------------------------------------"
echo "Completed gateway deployment on local"
echo "---------------------------------------------------------"
echo "Completed deployment on local"