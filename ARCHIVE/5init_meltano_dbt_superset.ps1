# Run the below if you haven't setup a project yet
$Project_Name = Read-Host -Prompt 'Project Name'

docker exec -it -w /workspaces/volumes superset meltano init $Project_Name 

docker exec -it -w /workspaces/volumes/$Project_Name superset meltano add loader target-duckdb
docker exec -it -w /workspaces/volumes/$Project_Name superset meltano add utility dbt-duckdb

docker exec -it -w /workspaces/volumes/$Project_Name superset meltano install utility target-duckdb
docker exec -it -w /workspaces/volumes/$Project_Name superset meltano install utility dbt-duckdb

pause