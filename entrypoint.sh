#!/bin/bash
set -e

chown -R 1000:nginx ./
nginx -g "daemon off;"