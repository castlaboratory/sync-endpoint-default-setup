#!/usr/bin/env bash
ID=$(docker ps --quiet --filter "name=syncldap_db")
docker cp exec-dump.sh $ID:/exec-dump.sh 
docker exec $ID ./exec-dump.sh


