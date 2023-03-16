# 🚀 `tea.xyz` Quickstart

```shell
kaggle kernels output adriensales/endoflife-date-database-export -p endoflife-date-exports
cd endoflife-date-exports
ls -ltr

tea duckdb --version

echo "ℹ️  Available tables"
tea duckdb -c 'show tables;'
echo "🚀 Get some data"
tea duckdb  -c 'select * from details limit 10;'

```
