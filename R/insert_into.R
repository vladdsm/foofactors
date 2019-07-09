#' Insert columns into the dataframes
#'
#' @param x first dataframe
#' @param y second one which will be inserted
#' @param where the number of column before which we will insert
#'
#' @return this is a dataframe
#' @export
#'
#' @examples
#' library(foofactors)
#' x <- data.frame(a = 3, b = 4, c = 5)
#' y <- data.frame(X = 1, Y = 2)
#' where <- 2
#' insert_into(x, y, where)
#'
#'
insert_into <- function(x, y, where = 1) {
  if (where == 1) { # first col
    cbind(y, x)
  } else if (where > ncol(x)) { # last col
    cbind(x, y)
  } else {
    lhs <- 1:(where - 1)
    cbind(x[lhs], y, x[-lhs]) }
}
