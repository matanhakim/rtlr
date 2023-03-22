test_that("str_rtl() adds RTL-embeeding Unicode character", {
  expect_equal(
    str_rtl("א.", "ב."),
    stringr::str_c("\u202B", stringr::str_c("א.", "ב.", sep = "\u202B"))
  )
  expect_equal(
    str_rtl("א.", "ב.", multiline = TRUE),
    stringr::str_c("\u202B", stringr::str_c("א.", "ב.", sep = "\n\u202B", collapse = "\n\u202B"))
  )
})
