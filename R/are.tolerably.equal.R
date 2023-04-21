#' Test For Equality With Tolerance
#'
#' Determines if values are equals (within some tolerance).
#'
#' @param x A vector of numeric values
#' @param y Another vector of numeric values
#' @param tol The tolerance allowed between \code{x} and \code{y}
#'       to consider them equal
#' @param ... Ignored
#'
#' @examples
#' are.tolerably.equal(2, 2.00001)
#' are.tolerably.equal(2, 2.00001, 0.001)
#' are.tolerably.equal(c(2, 2.01, 2.0001), 2, 0.001)
#'
#' @return A logical vector with \code{TRUE} if the corresponding
#'         values in \code{x} and \code{y} are equal considering
#'         the specified tolerance level;
#'         \code{FALSE} otherwise
#'
#' @export
#'
are.tolerably.equal <- function(x, y, tol, ...) UseMethod("are.tolerably.equal")

#' @describeIn are.tolerably.equal Default implementation
#'
#' @export
#'
are.tolerably.equal.default <- function(x, y, tol = .Machine$double.eps^0.5, ...)
{
  abs(x - y) < tol
}


