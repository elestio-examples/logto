#set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready
echo "Waiting for software to be ready ..."
sleep 30s;

# docker-compose exec -T app bash -c "npm run cli db seed"

# target=$(docker-compose port app 3002)

# curl http://${target}/api/interaction \
#   -X 'PUT' \
#   -H 'accept: */*' \
#   -H 'accept-language: fr' \
#   -H 'cache-control: no-cache' \
#   -H 'content-type: application/json' \
#   -H 'pragma: no-cache' \
#   -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36' \
#   --data-raw '{"event":"Register","profile":{"username":"admin"}}' \
#   --compressed


#   curl http://${target}/api/interaction/profile \
#   -X 'PATCH' \
#   -H 'accept: */*' \
#   -H 'accept-language: fr' \
#   -H 'cache-control: no-cache' \
#   -H 'content-type: application/json' \
#   -H 'pragma: no-cache' \
#   -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36' \
#   --data-raw '{"password":"'${ADMIN_PASSWORD}'"}' \
#   --compressed