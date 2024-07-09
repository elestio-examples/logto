#set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready
echo "Waiting for software to be ready ..."
sleep 30s;

if [ -e "./initialized" ]; then
    echo "Already initialized, skipping..."
else
    docker-compose exec -T app sh -c "npm run alteration deploy latest"
    sed -i "s~npm run cli db seed && ~~g" ./docker-compose.yml
    touch "./initialized"
fi

sed -i "s~# ~~g" ./docker-compose.yml

docker-compose down;
docker-compose up -d;
sleep 30s;