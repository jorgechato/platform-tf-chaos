#!/bin/bash

ID=$(sshpass -p $PASS ssh $USER@$SERVER docker ps -q --filter "name=ecs-$1-*" --format='{{.ID}}')

sshpass -p $PASS ssh $USER@$SERVER docker stop $ID
