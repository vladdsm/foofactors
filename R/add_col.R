#' Adds column
#'
#' @description Adding a column to the dataframe
#'
#' @param x dataframe
#' @param name name of the column
#' @param value value
#' @param where position
#'
#' @return dataframe
#' @export
#'
#' @examples
#'
#' df <- data.frame(x = 1)
#' add_col(df, "y", 2)
#'
add_col <- function(x, name, value,
                    where = ncol(x) + 1) {
  if (name %in% names(x)) {
    x[[name]] <- value
    x
  } else {
    df <- setNames(data.frame(value), name)
    insert_into(x, df, where = where)
  } }




