
#!/bin/bash
set -e
# Stop and remove old container if running
docker ps -q --filter "name=my-flask-app" | grep -q . && docker stop my-flask-app && docker rm my-flask-app

# Pull latest image (if needed)
docker pull your-repo/your-image:latest

# Run new container
docker run -d --name my-flask-app -p 5000:5000 naveen710/simple-python-flask-app:latest

