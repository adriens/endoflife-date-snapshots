# 🦆 `endoflife.date` database exports

Daily offline **& consolidated database dumps** of [`endoflife.date`](https://endoflife.date/).

# 🔖 Kaggle

- See [ endoflife.date database export ](https://www.kaggle.com/code/adriensales/endoflife-date-database-export/notebook) for more.

# 🚀 Quickstart

## ☝️ Prerequisite

- [✔️`duckdb`installed](https://duckdb.org/docs/installation/)

## 🕹️ Enjoy data

```shell
mkdir -p endoflife-date-exports
kaggle kernels output adriensales/endoflife-date-database-export -p endoflife-date-exports
cd endoflife-date-exports
ls -ltr
clear
duckdb --version
echo "ℹ️  Available tables"
duckdb endoflife.date.duckdb -c 'show tables;'
echo "🚀 Get some data"
duckdb endoflife.date.duckdb -c 'select * from details limit 10;'
```
