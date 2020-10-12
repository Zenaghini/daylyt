#!/bin/bash

ng build
aws s3 rm --recursive s3://project-z-b/
aws s3 cp dist/best-motoring-hot-version/. s3://project-z-b/ --recursive
