# Outputs
Output  endoflife-date-snapshots-01-teaser.mp4
Output  endoflife-date-snapshots-01-teaser.webm

# Set up a 1200x600 terminal with 46px font.
Set FontSize 20
Set Width 1200
Set Height 600

# Type a command in the terminal.
Type "# 🙋  So you want to get daily endoflife.date snapshots❔"
Enter
Sleep 500ms


Type "# 📥  Get latest Kaggle Kernel"
Enter
Sleep 200ms
Type "kaggle kernels output adriensales/endoflife-date-database-export -p endoflife-date-snapshots"
Enter
Sleep 10000ms
Type "clear"
Enter

Type "cd endoflife-date-snapshots ; tree"
Enter
Sleep 2000ms
Type "file exports/*"
Enter
Sleep 3500ms
Type "clear"
Enter

Type "# 🦆  Get duckdb"
Enter
Type "wget https://github.com/duckdb/duckdb/releases/download/v0.7.1/duckdb_cli-linux-amd64.zip -O duckdb_cli-linux-amd64.zip -q --show-progress"
Enter
Sleep 3500ms
Type "md5sum duckdb_cli-linux-amd64.zip"
Enter
Type "unzip -o duckdb_cli-linux-amd64.zip"
Enter
Sleep 500ms

Type "./duckdb --version "
Enter
Enter
Sleep 1000ms
Type "clear"
Sleep 500ms

Enter
Type "#  🕵️  Discover tables"
Enter
Sleep 750ms
Type "./duckdb endoflife.date.duckdb -c 'show tables;'"
Enter
Sleep 2000ms
Type "clear"
Enter
Sleep 100ms

Enter
Type "#  📝  Snapshot metadatas"
Enter
Sleep 750ms
Type "./duckdb endoflife.date.duckdb -c 'select key, substr(value, 1, 25) as value from README;'"
Enter
Sleep 4000ms
Type "clear"
Enter
Sleep 100ms


Type "# 📊  Get a sample of products"
Enter
Sleep 750ms
Type "./duckdb endoflife.date.duckdb -c 'SELECT id from product using sample 10 order by product;'"
Enter
Sleep 2000ms
Type "clear"
Enter

Type "./duckdb endoflife.date.duckdb -c  'SELECT product, cycle, latest_release_date, is_lts from details where latest_release_date is not null order by latest_release_date desc limit 10;'"
Enter
Sleep 2000ms


Enter
Type "clear"
Enter
Type "# 🤙 See you on https://github.com/adriens/endoflife-date-snapshots"
Sleep 2000ms
Type "clear"
Enter

Hide
Type "qrencode -m 2 -t utf8 https://github.com/adriens/endoflife-date-snapshots"
Enter
Show
Type " 🎉 🎊 🥳 🌟 🎁 💼 🚀 💯"
Sleep 8000ms
