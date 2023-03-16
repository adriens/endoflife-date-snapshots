# 🚀 Quickstart

## 🦆 Get DuckDB

```shell
brew install duckdb
```

## 😜 For impatients

```shell
duckdb -c 'SELECT * from read_csv_auto("https://raw.githubusercontent.com/adriens/endoflife-date-snapshots/main/data/details-with-headers.csv");'
```

## 🤵 For the others

```shell
pip install --upgrade kaggle
```

Then get the full database:

```shell
kaggle kernels output adriensales/endoflife-date-database-export -p endoflife-date-exports
cd endoflife-date-exports
ls -ltr
clear

```

```shell
echo "ℹ️  Available tables"
duckdb endoflife.date.duckdb -c 'show tables;'
echo "🚀 Get some data"
duckdb endoflife.date.duckdb -c 'select * from details limit 10;'

```
