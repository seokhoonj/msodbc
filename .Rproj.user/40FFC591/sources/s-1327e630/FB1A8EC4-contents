#' Connect to mssql server 
#'
#' @param dsn is a data source name 
#' @param database is a database 
#' @param path is a search path 
#' @param DBMSencoding is a dbms encoding 
#' @keywords ms-sql connector 
mscon <- function(dsn, database, path, DBMSencoding = "UTF-8") {
  dbConnect(drv = odbc::odbc(),
            dsn = dsn,
            database = database,
            options = paste0("-c search_path=", path),
            DBMSencoding = DBMSencoding)
}
