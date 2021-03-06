% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jsonStrings.R
\name{jsonUpdate}
\alias{jsonUpdate}
\title{Update object}
\usage{
jsonUpdate(jsonstring1, jsonstring2)
}
\arguments{
\item{jsonstring1}{a JSON string representing an object}

\item{jsonstring2}{a JSON string representing an object}
}
\value{
A JSON string.
}
\description{
Update a JSON string.
}
\examples{
jstring1 <- jsonString("{\"a\":[1,2,3],\"b\":\"hello\"}")
jstring2 <- jsonString("{\"a\":[4,5,6],\"c\":\"goodbye\"}")
jsonUpdate(jstring1, jstring2)
}
