01_write-installed-packages.R
================
Jenny Bryan
2022-07-25

``` r
library(tidyverse)
```

    ## ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.1 ──

    ## ✔ ggplot2 3.3.6           ✔ purrr   0.3.4      
    ## ✔ tibble  3.1.7           ✔ dplyr   1.0.99.9000
    ## ✔ tidyr   1.2.0           ✔ stringr 1.4.0.9000 
    ## ✔ readr   2.1.2.9000      ✔ forcats 0.5.1

    ## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package, LibPath, Version, Priority, Built) %>%
  write_csv("installed-packages.csv")

ipt
```

    ## # A tibble: 377 × 5
    ##    Package         LibPath                                 Version Prior…¹ Built
    ##    <chr>           <chr>                                   <chr>   <chr>   <chr>
    ##  1 abcde           /Users/jenny/Library/R/x86_64/4.1/libr… 0.0.0.… <NA>    4.1.2
    ##  2 abind           /Users/jenny/Library/R/x86_64/4.1/libr… 1.4-5   <NA>    4.1.0
    ##  3 archive         /Users/jenny/Library/R/x86_64/4.1/libr… 1.1.3   <NA>    4.1.0
    ##  4 asciicast       /Users/jenny/Library/R/x86_64/4.1/libr… 1.0.0   <NA>    4.1.0
    ##  5 askpass         /Users/jenny/Library/R/x86_64/4.1/libr… 1.1     <NA>    4.1.0
    ##  6 assertthat      /Users/jenny/Library/R/x86_64/4.1/libr… 0.2.1   <NA>    4.1.0
    ##  7 available       /Users/jenny/Library/R/x86_64/4.1/libr… 1.0.4   <NA>    4.1.0
    ##  8 aws.ec2metadata /Users/jenny/Library/R/x86_64/4.1/libr… 0.2.0   <NA>    4.1.0
    ##  9 aws.signature   /Users/jenny/Library/R/x86_64/4.1/libr… 0.6.0   <NA>    4.1.0
    ## 10 backports       /Users/jenny/Library/R/x86_64/4.1/libr… 1.4.1   <NA>    4.1.0
    ## # … with 367 more rows, and abbreviated variable name ¹​Priority
    ## # ℹ Use `print(n = ...)` to see more rows
