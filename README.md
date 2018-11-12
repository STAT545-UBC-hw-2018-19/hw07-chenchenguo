<!-- README.md is generated from README.Rmd. Please edit that file -->
### Hw07- R package
This assignment is aim to enhance the use of R package. Foofactors is used here.

Content | Completion
--------|---------
factor detect | :raised_hand:
factor reorder | :raised_hand:
factor set | :raised_hand:
factor read & write | :raised_hand:
### foofactors

Factors are a very useful type of variable in R, but they can also drive you nuts. This package provides some helper functions for the care and feeding of factors.

### Installation
\[[foofactors](https://github.com/jennybc/foofactors)\]
``` r
devtools::install_github("jennybc/foofactors")
```

### Quick demo

Binding two factors via `fbind()`:

``` r
library(foofactors)
a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))
```

Simply catenating two factors leads to a result that most don't expect.

``` r
c(a, b)
#> [1] 1 3 4 2 1 3 4 2
```

The `fbind()` function glues two factors together and returns factor.

``` r
fbind(a, b)
#> [1] character hits      your      eyeballs  but       integer   where it 
#> [8] counts   
#> Levels: but character counts eyeballs hits integer where it your
```
