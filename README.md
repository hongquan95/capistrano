# README #
Centralized Multi-deployment with Capistrano

## R

## install capistrano version 3.16.0
```sh
gem install capistrano -v 3.16.0
```
## install bundler
```sh
gem install bundler
```

## How to setup

```sh
#!script
git clone git@github.com:hongquan95/capistrano.git
cd capistrano
cd api
cp .env.example .env
bundle install
```

## How to deploy

```sh
#!script

cd path/to/capistrano/api
cap -T

# Deploy api - dev
cap api:dev deploy branch=develop

# Deploy api - prod
cap api:production deploy branch=master
```
## Install Jenkins and config [Refer](/jenkins)
