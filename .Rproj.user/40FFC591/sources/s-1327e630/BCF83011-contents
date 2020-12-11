#' sql 
#'
#' @param query is a query 
#' @param conn is a server connector
#' @keywords sql 
sql <- function(query, conn) {
  if (missing(conn) & exists("conn")) conn <- conn
  dbGetQuery(conn, query)
}