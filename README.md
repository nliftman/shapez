shapez
================

<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->

[![R-CMD-check](https://github.com/nliftman/SDS270PROJ2/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/nliftman/SDS270PROJ2/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## Purpose

This package calculates the area and volume of simple, and somewhat
complex shapes. It also includes a dataset with the first 1000 prime
numbers.

## Target Audience

There are two target audiences of our package. One is the user who wants
R to run just like a calculator, so these functions are used to
calculate these shapes. The other target audience is a young child first
getting familiar with R, and writing code in R. They can use these
functions to understand R and writing R code from the perspective of
calculations they already understand!

## Installation

You can install the development version of shapez like so:

``` r
remotes::install_github("nliftman/shapez")
```

## Examples

### Area

Calculations of area of a circle with a graph:

``` r
library(shapez)
area_circle(4, 1)
```

![](README_files/figure-gfm/example-1.png)<!-- -->

    ## [1] 50.26548

Calculations of area of a pentagon without a graph:

``` r
area_pentagon(3, 4, 0)
```

    ## [1] 15.4843

Calculations of area of octagon with a graph:

``` r
area_octagon(6, 1)
```

![](README_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

    ## [1] 173.8234

### Volume

Calculations of volume of sphere:

``` r
library(shapez)
volume_sphere(7)
```

    ## [1] 1436.755

Calculations of volume of square pyramid:

``` r
volume_square_pyramid(2, 2)
```

    ## [1] 2.666667

Calculations of volume of tetrahedron:

``` r
volume_tetrahedron(1982)
```

    ## [1] 917581613

### Dataset

Look at the first 10 prime numbers, and if they are even or odd!

``` r
head(primes, 10)
```

    ##    ind prime_n type
    ## 1    1       2 even
    ## 2    2       3  odd
    ## 3    3       5  odd
    ## 4    4       7  odd
    ## 5    5      11  odd
    ## 6    6      13  odd
    ## 7    7      17  odd
    ## 8    8      19  odd
    ## 9    9      23  odd
    ## 10  10      29  odd

## Package Proposal

We will continue working on this package to do calculations of volume
and area; however, we will also start adding more complicated shapes and
will be adding perimeter and surface area functions. Additionally, we
hope to add functions that find other geometric properties relevant to
an individual shape such as base area, diagonal lengths, circumferences,
etc. The user would then have an option to display all the relevant
properties values for their shape when they call the volume function on
it. We also hope to build our functions better, possibly instead of
using for loops using the map function. Finally, we hope to add a
function to draw the shape being calculated.
