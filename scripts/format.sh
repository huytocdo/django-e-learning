#!/bin/sh

autoflake -i --remove-all-unused-imports --ignore-init-module-imports --remove-unused-variables /app/**/*.py
isort /app/**/*.py
black -q --skip-string-normalization --line-length 120 /app/**/*.py