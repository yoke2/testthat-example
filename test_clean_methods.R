# tests for methods

context('Clean Column Methods')

source("clean_methods.R")

# cleans column 1
test_that("test clean column 1", {
    expect_equal(clean_col_1("-1.0"),"NA") # demo success case
})

test_that("test clean column 2", {
    skip('stub')
})

test_that("test clean column 3", {
    skip('stub')
})

test_that("test clean column 4", {
    skip('stub')
})

test_that("test clean column 5", {
    expect_equal(clean_col_5("SENTOSA"),"setosa") # demo failure case
})
