#' mssql 
#'
#' @param query is a query 
#' @param conn is a server connector
#' @keywords mssql 
mssql <- function(query, conn) {
  if (missing(conn) & exists("conn", envir = parent.frame())) 
    conn <- get("conn", envir = parent.frame())
  dbGetQuery(conn, query)
}