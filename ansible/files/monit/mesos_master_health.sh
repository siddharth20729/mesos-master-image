#!/bin/bash

curl --fail $(hostname --ip):5050/health
