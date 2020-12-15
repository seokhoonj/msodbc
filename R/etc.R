clean <- function(df) {
  col_list <- names(sapply(df, class)[sapply(df, class) == "list"])
  col_char <- names(sapply(df, class)[sapply(df, class) == "character"])
  df[, col_list] <- lapply(df[, col_list], unlist)
  df[, col_char] <- lapply(df[, col_char], trimws)
  df
}
