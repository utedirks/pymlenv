echo "Starting ..."
docker run -d --rm --name pymlenv -p 8080:8080 pymlenv:latest > /dev/null 2>&1

TOKEN=
while [ -z "$TOKEN" ]; do
    TOKEN=$(docker logs pymlenv 2>&1 | grep "?token" | cut -d "=" -f2 | head -n1)
    sleep 1
done

echo -e "Started - Open: http://127.0.0.1:8080/?token=${TOKEN}"
read -p "(Press enter to stop)" EMPTY

echo "Stopping ..."
docker stop pymlenv > /dev/null 2>&1
