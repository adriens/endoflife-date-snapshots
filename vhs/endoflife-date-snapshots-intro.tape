# Outputs
Output  endoflife-date-snapshots-intro.mp4
Output  endoflife-date-snapshots-intro.webm
Output  endoflife-date-snapshots-intro.gif

# Set up a 1200x600 terminal with 46px font.
Set FontSize 20
Set Width 1200
Set Height 600

# Type a command in the terminal.
Type "# 🙋  So you want to get daily endoflife.date snapshots❔"
Enter

# Pause for dramatic effect...
Sleep 500ms


Type "# 🦆 First, check duckdb"
Enter
Type "clear"
Enter
Type "duckdb --help"
Enter
Sleep 1s
Type "duckdb --version"
Sleep 1s
Type clear
Enter

Type "# 1️⃣ Create target dir and get data"
Enter
Sleep 500ms
Type "mkdir -p endoflife-date-exports"
Enter
Sleep 500ms
Type "# 2️⃣ Get latest snapshot"
Sleep 200ms
Type "kaggle kernels output adriensales/endoflife-date-database-export -p endoflife-date-exports"
Enter
Type "cd endoflife-date-exports"
Enter
Type "tree"
Enter
Sleep 500ms
Type "file exports/*"
Sleep 2s
Type "clear"
Enter


Type "# 3️⃣ Discover tables"
Sleep 500ms
Enter
Type "duckdb endoflife.date.duckdb -c 'show tables;'"
Enter
Sleep 2s

Type "# 📊 Get some data""
Enter
Sleep 300ms
Type "duckdb endoflife.date.duckdb -c 'select * from details limit 10;'"
Enter
Sleep 1500ms

Type "duckdb endoflife.date.duckdb -c  'SELECT product, cycle, latest_release_date, is_lts from details where latest_release_date is not null order by latest_release_date desc limit 20;'"
Enter
Sleep 1500ms
Type "# 🔖 Go to https://github.com/adriens/endoflife-date-snapshots for more."
Sleep 2s
