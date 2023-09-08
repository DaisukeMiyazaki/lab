#!/bin/bash

DCPS=$(docker-compose ps -q)
if [ -z "$DCPS" ]; then
    echo "Launch..."
    docker-compose build
    # xdg-open http://localhost:8888
    open http://localhost:8888
    docker-compose up
else
    echo "Shutdown..."
    docker-compose down
fi
