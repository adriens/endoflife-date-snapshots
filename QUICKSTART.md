# 🚀 Quickstart

```shell
kaggle kernels output adriensales/endoflife-date-database-export -p endoflife-date-exports
cd endoflife-date-exports
ls -ltr
clear

# Install duckdb
DUCKDB_VERSION=v0.7.1
wget -O https://github.com/duckdb/duckdb/releases/download/$DUCKDB_VERSION/duckdb_cli-linux-amd64.zip duckdb_cli-linux-amd64.zip
md5sum duckdb_cli-linux-amd64.zip
unzip duckdb_cli-linux-amd64.zip
./duckdb --version

echo "ℹ️  Available tables"
./duckdb endoflife.date.duckdb -c 'show tables;'
echo "🚀 Get some data"
./duckdb endoflife.date.duckdb -c 'select * from details limit 10;'

```
