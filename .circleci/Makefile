app_version=v1.0.0
app_name=avneeshverma-udacitycapstone
docker_path=avneeshver/${app_name}

dockerimage:
	docker build -t ${docker_path}:${app_version} .
	docker push ${docker_path}:${app_version}