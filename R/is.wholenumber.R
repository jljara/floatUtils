
#' Test For Integrity With Tolerance
#'
#' Determines if values are whole numbers (within some tolerance).
#'
#' @param x A numeric value or a vector of numeric values
#' @param tol The tolerance allowed between \code{x} and
#'        \code{round(x)} to consider \code{x} a whole number
#' @param ... Ignored
#'
#' @examples
#' is.wholenumber(10 / 5)
#' is.wholenumber(10 / 50)
#' is.wholenumber(10 / 50, 0.5)
#' is.wholenumber(c(1, 5, 10) / 50, 0.05)
#'
#' @return A logical vector with \code{TRUE} if the corresponding
#'         value in \code{x} is a whole number considering the
#'         specified tolerance level;
#'         \code{FALSE} otherwise
#'
#' @export
#'
is.wholenumber <- function(x, tol, ...) UseMethod("is.wholenumber")

#' @describeIn is.wholenumber Default implementation
#'
#' @export
#'
is.wholenumber.default <- function(x, tol = .Machine$double.eps^0.5, ...)
{
  abs(x - round(x)) < tol
}

