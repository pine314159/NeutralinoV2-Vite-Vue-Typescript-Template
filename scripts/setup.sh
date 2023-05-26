#!/bin/bash
cd ../frontend/src || exit # cd to frontend/src
if [ -f "./auth_info.json" ];then
  rm ./auth_info.json
fi
echo '{"port": 0,"accessToken": "none"}' > ./auth_info.json
cd .. || exit # cd to frontend
npm install && npm run build
cd .. || exit # cd to project root
if [ -d ".tmp/" ];then
  rm -rf .tmp/auth_info.json
  else
  mkdir .tmp
fi
cd .tmp || exit # cd to .tmp
touch auth_info.json
BASE_PATH=$(pwd)
cd ../frontend/src || exit # cd to frontend/src
if [ -f "auth_info.json" ];then
  rm ./auth_info.json
fi
ln -s "$BASE_PATH"/auth_info.json ./auth_info.json


