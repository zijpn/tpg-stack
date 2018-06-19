#!/bin/bash

case $1 in

  up)
    docker-compose up -d -t 0
    ;;

  down)
    docker-compose stop -t 0
    docker-compose down
    ;;

  status)
    docker-compose ps
    ;;

  tail)
    docker-compose logs -f $2
    ;;

  *)
    echo "Usage $0 [ up | down | status | tail ]" 1>&2
    exit 1
    ;;

esac
