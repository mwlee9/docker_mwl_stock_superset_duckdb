docker exec -it stock-superset superset fab create-admin `
              --username admin `
              --firstname Superset `
              --lastname Admin `
              --email admin@superset.com `
              --password admin

docker exec -it stock-superset superset db upgrade

docker exec -it stock-superset superset init

pause

