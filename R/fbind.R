#' Function to join factors
#'
#' @description some description to add into the package
#'
#' @param a first factor
#' @param b second factor
#'
#' @return factor
#' @export
#'
#' @examples
#' a <- c("first", "second")
#' b <- c("one", "three")
#' fbind(a, b)
#'
fbind <- function(a, b){

  factor(c(as.character(a), as.character(b)))
}
