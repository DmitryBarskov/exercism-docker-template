.env:
	echo "UID=$$(id -u)\nGID=$$(id -g)" > .env

configure: .env
	test ${TOKEN}
	docker compose run -it --rm default exercism configure --token ${TOKEN} --workspace=.

%:
	docker compose run -it --rm default exercism download --track=$@ --exercise=hello-world
