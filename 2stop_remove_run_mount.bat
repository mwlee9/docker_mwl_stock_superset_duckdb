docker stop stock-superset

docker rm stock-superset

docker run ^
		-dp 8888:8888 ^
		-p 4040:4040 ^
		-p 8080:8088 ^
		-it ^
		-e "SUPERSET_SECRET_KEY=123456789" ^
		--mount type=bind,source=%cd%/VOLUMES,target=/workspaces/volumes ^
		--name stock-superset ^
		lee/stock-superset 