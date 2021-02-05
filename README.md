#Project-4
##Operationalize a Machine Learning Microservice Api
[![CircleCI](https://circleci.com/gh/ravisethi21/project4-udacity.svg?style=svg)](https://circleci.com/gh/ravisethi21/circleci-docs)


###Summary

Contanerizing a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. Data was initially taken from Kaggle,the data source site. This project tests our ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling. The app is containerized via docker desktop and kubernetes cluster. It is verified by circleci.


###Instructons

1) clone devops udacity repo (starter code)
2) created .circleci/config.yml
3) setting up virtual environment
		- python3 -m venv ~/.devops
		- source ~/.devops/bin/activate
4) installing dependencies via makefile
		- make install
5) linting project (hadolint for Dockerfile / pylint for Python)
		-make lint
6) Completing steps in Dockerfile
7) Completing run_docker.sh
8) Running run_docker.sh
		- ./run_docker.sh
9) Running predictions via make_predictons.sh in another terminal.
		- ./make_predictions.sh
10) Adding log statement in app.py
11) Repeat steps 8 and 9
12) Add the logs in docker_out.txt
13) Completing upload_docker.sh
14) Uploading image on dockerhub via upload_docker.sh
		- ./upload_docker.sh
15) Configure Kubernetes to run locally
		- kubectl config view
16) Completing run_kubernetes.sh
17) Running run_kubernetes.sh
		- ./run_kubernetes.sh
18) checking status of kubernetes pod
		- kubectl get pod
19) Repeating step 17 once status is running.
20) Making a Prediction via make_predictions.sh
		- ./make_prediction.sh
21) Add the logs in kubernetes_out.txt
22) Delete the kubernetes cluster
23) Push project directory to github
24) Setting up Circleci project
25) Adding a status badge.


###Repository Overview

1) .circleci
	- .circleci/config.yml for circleci configuration
2) model_data
	- contains data for machine learning app.
3) output_txt_files
	- docker_out.txt
		- contains log info of prediction in docker container.
	-kubernetes_out.txt
		- contains log info of prediction in kubernetes cluster.
4) app.py
	-application source code
5) Dockerfile
	- configuration for Docker image
6) make_prediction.sh
	- bash file to get prediction from app
7) Makefile
	- commands to setup environment and linting
8) requirements.txt
	- contains dependencies
9) run_docker.sh
	- bash file to build and run docker image.
10) run_kubernetes.sh
	- bash file to build and run kubernetes cluster.
11) upload_docker.sh
	- bash file to upload docker to dockerhub.
12) README.md
	- Project summary, steps and repository overview


