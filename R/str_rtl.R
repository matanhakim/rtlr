#' Wrap a string with RTL-embedding Unicode characters
#'
#' @param ... One or more character vectors, ideally of length 1.
#' @param multiline Whether to split the input strings to separate lines. Defaults to `FALSE`.
#'
#' @returns A character vector.
#' @export
#'
#' @examples
#' # Notice how the `.` prints to the right, while in RTL it should print to the left
#' cat("a.")
#'
#' # `str_rtl()` fixes this:
#' str_rtl("a.") |> cat()
#'
#' str_rtl("a.", "b.", multiline = TRUE) |> cat()
str_rtl <- function(..., multiline = FALSE) {
  if (multiline)
  {
    stringr::str_c(
      "\u202B",
      stringr::str_c(
        ...,
        sep = "\n\u202B",
        collapse = "\n\u202B"
      )
    )
  }
  else
  {
    stringr::str_c(
      "\u202B",
      stringr::str_c(
        ...,
        sep = "\u202B"
      )
    )
  }
}
