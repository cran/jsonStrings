% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jsonStrings.R
\name{jsonPatch}
\alias{jsonPatch}
\title{Patch a JSON string}
\usage{
jsonPatch(jsondoc, jsonpatch)
}
\arguments{
\item{jsondoc}{a JSON string representing an object or an array}

\item{jsonpatch}{a JSON patch, a JSON string representing an array (see 
the link in details)}
}
\value{
A JSON string.
}
\description{
Apply a JSON patch to a JSON string.
}
\details{
See \href{http://jsonpatch.com/}{jsonpatch.com}.
}
\examples{
jsondoc <- jsonString("{\"a\":[1,2,3],\"b\":\"hello\"}")
jsonpatch <- jsonString("[
  {\"op\": \"remove\", \"path\": \"/a\"},
  {\"op\": \"replace\", \"path\": \"/b\", \"value\": null}
]")
jsonPatch(jsondoc, jsonpatch)
}
