#' pysql 
#'
#' @param query is a query 
#' @param conn is a server connector
#' @keywords pysql 
pysql <- function(query, conn) {
  if (missing(conn) & exists("conn", envir = parent.frame())) 
    conn <- get("conn", envir = parent.frame())
  pd <- import('pandas')
  pd$read_sql(query, con = conn)
}