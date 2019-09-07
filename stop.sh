#!/bin/bash

ID=$(ssh $USER@$SERVER docker ps -q --filter "name=ecs-$1-*" --format='{{.ID}}')

ssh $USER@$SERVER docker stop $ID
