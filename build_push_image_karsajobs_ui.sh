# build Docker image
docker build -t ghcr.io/bagus-k/karsajobs-ui:latest .

#save access token Github
$GITHUB_ACCESS_TOKEN = ""

#Login ke GitHub Packages
echo $GITHUB_ACCESS_TOKEN | docker login ghcr.io -u bagusk --password-stdin 

#Mengunggah image Github Packages
docker push ghcr.io/bagus-k/karsajobs-ui:latest