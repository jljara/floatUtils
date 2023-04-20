
#' Test For Divisibility With Tolerance
#'
#' Determines if some value(s) is(are) divisible by some other(s)
#' (within some tolerance).
#'
#' @param x A vector of numeric values with the dividends
#' @param y A vector of numeric values with the divisors
#' @param tol The tolerance allowed for \code{round(x / y)} from
#'        whole numbers to consider \code{x} divisible by \code{y}
#' @param ... Ignored
#'
#' @examples
#' is.divisible(10, 5)
#' is.divisible(10, 50)
#' is.divisible(10, 50, 0.5)
#' is.divisible(c(1, 5, 10), 50, 0.05)
#'
#' @return A logical vector with \code{TRUE} if the corresponding
#'         value in \code{x} is divisible by the corresponding value
#'         in \code{y} considering the specified tolerance level;
#'         \code{FALSE} otherwise
#'
#' @export
#'
is.divisible <- function(x, y, tol, ...) UseMethod("is.divisible")

#' @describeIn is.divisible Default implementation
#'
#' @export
#'
is.divisible.default <- function(x, y, tol = .Machine$double.eps^0.5, ...)
{
  is.wholenumber( x / y, tol, ...)
}

