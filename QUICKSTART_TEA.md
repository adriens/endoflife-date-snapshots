# 🚀 `tea.xyz` Quickstart

```shell
kaggle kernels output adriensales/endoflife-date-database-snapshots -p endoflife-date-database-snapshots

cd endoflife-date-database-snapshots
ls -ltr

tea duckdb --version

echo "ℹ️  Available tables"
tea duckdb endoflife.date.duckdb -c 'show tables;'
echo "🚀 Get some data"
tea duckdb  endoflife.date.duckdb -c 'select * from details limit 10;'

```
