# Stop the Hugging Face container
docker stop textinference

# Remove the Hugging Face container
docker rm textinference

# Remove the Docker network
docker network rm mynet