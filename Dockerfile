FROM apache/superset

# Switching to root to install the required packages
USER root

RUN pip install --no-cache-dir jupyterlab duckdb jupysql duckdb-engine openpyxl wtforms_json

# Switching back to using the `superset` user
USER superset

WORKDIR /workspaces