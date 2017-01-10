#!/bin/sh
curl -sS "https://www.wowace.com/api/projects/$1/package?token=$WOWACE_API_TOKEN"
