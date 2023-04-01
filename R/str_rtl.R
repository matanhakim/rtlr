#' Wrap a string with RTL-embedding Unicode characters
#'
#' @param ... One or more character vectors, ideally of length 1.
#' @param multiline Whether to split the input strings to separate lines. Defaults to `FALSE`.
#'
#' @return A character vector.
#' @export
#'
#' @examples
#' # Notice how the `.` prints to the right, while it should print to the left
#' cat("א.")
#'
#' # `str_rtl()` fixes this:
#' str_rtl("א.") |> cat()
#'
#' str_rtl("א.", "ב.", multiline = TRUE) |> cat()
str_rtl <- function(..., multiline = FALSE) {
  if (multiline)
  {
    stringr::str_c(
      "\u202B",
      stringr::str_c(
        unlist(list(...)) |>
          stringr::str_replace_all("\n", "\n\u202B"),
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
        unlist(list(...)) |>
          stringr::str_replace_all("\n", "\n\u202B"),
        sep = "\u202B"
      )
    )
  }
}
