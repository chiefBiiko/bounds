# bounds

[![Build Status](https://travis-ci.org/chiefBiiko/bounds.svg?branch=master)](https://travis-ci.org/chiefBiiko/bounds)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/chiefBiiko/bounds?branch=master&svg=true)](https://ci.appveyor.com/project/chiefBiiko/bounds)

`bounds` packs two tiny functions. `bounds::bind` implements partial application. `bounds::isBound` checks whether or not a function is bound to its enclosing environment (i.e. has free variables) - is a (common sense) closure.

```r
devtools::install_github('chiefBiiko/bounds')
```
