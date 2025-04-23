# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat
# dengan nama image item-app, dan memiliki tag v1. (item-app:v1)
sudo docker image build -t item-app:v1 .

# Melihat daftar image di lokal.
sudo docker images

# Mengubah nama image agar sesuai dengan format Docker Hub 
# (atau GitHub Packages bila menerapkan saran keempat).
sudo docker tag item-app:v1 ghcr.io/b70-courses/item-app:v1

# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
# (Github Container Registry)
export CR_PAT=GITHUB_CLASSIC_TOKEN
echo $CR_PAT | sudo docker login ghcr.io -u GITHUB_USERNAME --password-stdin

# Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
sudo docker image push ghcr.io/b70-courses/item-app:v1