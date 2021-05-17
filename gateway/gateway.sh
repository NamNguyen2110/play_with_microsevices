git status
git add .
now=$(date +"%c")
git commit -m "update project at $now"
git push
echo "Pushed to GitHub repository"
echo "------------------------------------------------------"
rm -r target
echo "Deleted target folder"
echo "------------------------------------------------------"
docker image rm -f namnguyen2110/discovery:latest
mvn package
docker build -t namnguyen2110/discovery:latest .
echo "Build completed docker image: namnguyen2110/discovery:latest"
echo "-------------------------------------------------------"
docker run --name discovery -d -p=8080:8080 namnguyen2110/discovery > service.log 2>&1 &
docker commit discovery namnguyen2110/discovery:latest
docker push namnguyen2110/discovery:latest
echo "Pushed to Dockerhub repository"
echo "--------------------------------------------------------"
docker stop discovery
docker rm discovery
echo "Stop and remove the completed current container"
echo "---------------------------------------------------------"
echo "Completed automation deployment on local"