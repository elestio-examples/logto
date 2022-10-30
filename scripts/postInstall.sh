#set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready
echo "Waiting for software to be ready ..."
sleep 30s;

curl 'https://logto-u353.vm.elestio.app/api/session/register/username-password' \
  -H 'authority: logto-u353.vm.elestio.app' \
  -H 'accept: application/json' \
  -H 'accept-language: en' \
  -H 'content-type: application/json' \
  -H 'cookie: _interaction=9B-qQjGML7Ya6rhNKc5Va; _interaction.sig=alXgzzmoX8f9t1CC9NvjHlEv8Nw' \
  -H 'origin: https://logto-u353.vm.elestio.app' \
  -H 'referer: https://logto-u353.vm.elestio.app/sign-in' \
  -H 'sec-ch-ua: "Chromium";v="106", "Google Chrome";v="106", "Not;A=Brand";v="99"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "macOS"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36' \
  --data-raw '{"username":"root","password":"123456"}' \
  --compressed