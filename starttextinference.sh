# create a new docker network
docker network create mynet

model=ehartford/dolphin-2.1-mistral-7b
volume=$PWD/data # share a volume with the Docker container to avoid downloading weights every run

docker run --name textinference --network mynet --gpus all --shm-size 1g -p 8080:80 -v $volume:/data ghcr.io/huggingface/text-generation-inference:1.1.0 --model-id $model