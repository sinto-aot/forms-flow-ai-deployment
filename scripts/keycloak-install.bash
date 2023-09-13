
cd ../docker-compose/
docker_compose_file='docker-compose.yml'
if [[ -f .env ]]; then
    rm .env
fi
    docker-compose -p formsflow-ai -f $docker_compose_file up --build -d keycloak 
