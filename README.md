jsonStrings
================

``` r
library(jsonStrings)
options("jsonStrings.prettyPrint" = TRUE) # for pretty-printing the JSON strings
```

## Define a JSON string

``` r
jsonstring <- jsonString("
  {
    \"foo\": \"hello\",
    \"bar\": {\"x\": 1, \"y\": 2},
    \"baz\": [9, 99, null]
  }
")
```

## Extract a JSON value

``` r
jsonAt(jsonstring, "foo")
## "hello"
jsonAt(jsonstring, c("bar", "y"))
## 2
jsonAt(jsonstring, list("baz", 2))
## null
```

## Erase a JSON value

``` r
jsonErase(jsonstring, "baz")
## {
##     "bar": {
##         "x": 1,
##         "y": 2
##     },
##     "foo": "hello"
## }
```

## Check existence of a property

``` r
jsonHasKey(jsonstring, "bar")
## [1] TRUE
```

## Check a type

``` r
jsonIs(jsonstring, "object")
## [1] TRUE
```

## Add a property

``` r
jsonAddProperty(jsonstring, "new", "[4,5]")
## {
##     "bar": {
##         "x": 1,
##         "y": 2
##     },
##     "baz": [
##         9,
##         99,
##         null
##     ],
##     "foo": "hello",
##     "new": [
##         4,
##         5
##     ]
## }
```

## Update a JSON string

``` r
jsonUpdate(
  jsonstring,
  "{
    \"foo\": \"goodbye\",
    \"qux\": 10000
  }"
)
## {
##     "bar": {
##         "x": 1,
##         "y": 2
##     },
##     "baz": [
##         9,
##         99,
##         null
##     ],
##     "foo": "goodbye",
##     "qux": 10000
## }
```

## Patch a JSON string

``` r
jsonpatch <- jsonString("[
  {\"op\": \"remove\", \"path\": \"/foo\"},
  {\"op\": \"replace\", \"path\": \"/baz/2\", \"value\": 9999}
]")
jsonPatch(jsonstring, jsonpatch)
## {
##     "bar": {
##         "x": 1,
##         "y": 2
##     },
##     "baz": [
##         9,
##         99,
##         9999
##     ]
## }
```
