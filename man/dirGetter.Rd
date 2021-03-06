% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dirchoose.R
\name{dirGetter}
\alias{dirGetter}
\title{Create a function that updates a folder tree based on the given restrictions}
\usage{
dirGetter(roots, restrictions, filetypes, hidden = FALSE)
}
\arguments{
\item{roots}{A named vector of absolute filepaths or a function returning a 
named vector of absolute filepaths (the latter is useful if the volumes
should adapt to changes in the filesystem).}

\item{restrictions}{A vector of directories within the root that should be
filtered out of the results}

\item{filetypes}{Currently unused}

\item{hidden}{A logical value specifying whether hidden files should be 
returned or not}
}
\value{
A function taking a list representation of a folder hierarchy along
with the name of the root where it starts. See \code{\link{traverseDirs}} for
a description of the format for the list representation.
}
\description{
This functions returns a new function that will handle updating the folder 
tree. It is the folder equivalent of \code{\link{fileGetter}} but functions
slightly different as it needs to handle expanded branches of the folder 
hierarchy rather than just the content of a single directory at a time. The
returned function takes a representation of a folder hierarchy along with the
root to where it belongs and updates the tree to correspond with the current
state of the file system, without altering expansions etc.
}

