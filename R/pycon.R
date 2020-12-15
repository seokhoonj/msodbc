#' Connect to mssql server with python
#'
#' @param condaenv is a anaconda virtual environment name
#' @param server is a server 
#' @param database is a database 
#' @param charset is a character set
#' @keywords ms-sql connector with python
pycon <- function(condaenv, server, database, charset = "UTF-8") {
  use_condaenv(condaenv = condaenv)
  if (!py_module_available("pymssql")) py_install("pymssql")
  if (!py_module_available("pandas")) py_install("pandas")
  pymssql <- import("pymssql")
  pd <- import("pandas")
  pymssql$connect(server = server, database = database, charset = charset)
}