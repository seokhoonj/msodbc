#' Connect to mssql server 
#'
#' @param dsn is a data source name 
#' @param database is a database 
#' @param path is a search path 
#' @keywords ms-sql connector 
msconn <- function(dsn, db, path) {
  msconn <- dbConnect(drv = odbc::odbc(),
                      dsn = dsn,
                      database = db,
                      options = paste0("-c search_path=", path),
                      DBMSencoding = "UTF-8")
}
