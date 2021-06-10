docker rm -f medics
docker run -idt -v `pwd`:/workspace -p 8000:8000 --name medics medics:0.0.1 tail -f /dev/null
docker exec -it medics bash