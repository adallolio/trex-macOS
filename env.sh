#!/bin/bash
#
# @author Alberto Dallolio <albydallo@gmail.com>
# @2018 


export PREFIX=share
export CONTAINER_NAME=trex
export BASE_CONTAINER=$PREFIX/$CONTAINER_NAME
export BASE_NAME=$PREFIX-trex
export VERSION=v0.1.2

echo Name:$CONTAINER_NAME \$CONTAINER_NAME
echo Container:$BASE_CONTAINER \$BASE_CONTAINER
echo Image:$BASE_NAME \$BASE_NAME
echo Version:$VERSION