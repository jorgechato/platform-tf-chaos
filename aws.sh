#!/bin/bash

aws ecs \
    describe-services \
    --services api blog nginx \
    --cluster $CLUSTER \
    --query 'length(services[?status==`ACTIVE`])'
