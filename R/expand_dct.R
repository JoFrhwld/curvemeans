#' Expand DCT
#'
#' Given a set of DCT parameters, expand
#' the fitted curve.
#' @param coefs Either a 1d vector of DCT coefficients,
#'        or a \eqn{n\times}\code{coefs} matrix
#' @param size The desired output length of the expansion
#'
#' @returns A \eqn{n\times}\code{size} matrix of the
#'          expanded DCT
#'
#' @example examples/expand_dct_example.R
#' @export

expand_dct <- function(coefs, size = length(coefs)){
  n_basis = length(coefs)
  basis <- dct_basis(n_basis = n_basis, size = size)
  fit <- c(coefs %*% basis)
  return(fit)
}