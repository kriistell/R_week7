> library("RSQLite")
>  drv <- dbDriver("SQLite")
> con <- dbConnect(drv, "/Users/Pgordon84/Desktop/simplecharter.sqlite")
> query1 = dbGetQuery(con, "Select * from Reports")
Error in sqliteExecStatement(con, statement, bind.data) : 
  RS-DBI driver: (error in statement: no such table: Reports)
> query1 = dbGetQuery(con, "Select * from Report")
>  library(sqldf)
>   sqldf("attach 'Test7.sqlite' as new")
NULL
> sqldf("CREATE TABLE BostonT AS SELECT * FROM Boston", dbname = "Test7.sqlite")
NULL