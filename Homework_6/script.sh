#!/bin/bash
              
case $1 in
create)
        docker run -d \
            --name devops_nginx_container \
            -p 8080:80 \
            --restart unless-stopped \
            devops_nginx:alpine
        exit 0
        ;;
start)
        docker start devops_nginx_container
        exit 0
        ;;
stop)
        docker stop devops_nginx_container
        exit 0
        ;;
destroy)
        docker rm devops_nginx_container
        exit 0
        ;;
esac
exit 0
