#set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready
echo "Waiting for software to be ready ..."
sleep 30s;

docker-compose exec -T app sh -c "npm run cli db seed"

if [ -e "./initialized" ]; then
    echo "Already initialized, skipping..."
else
    # If the file doesn't exist, create it and echo "popopo"
    docker-compose exec -T app sh -c "npm run cli db seed"
    docker-compose exec -T app sh -c "npm run alteration deploy latest"
    sed -i "s~# ~~g" ./docker-compose.yml
    touch "./initialized"
fi