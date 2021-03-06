% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_data.R
\name{read_var_file}
\alias{read_var_file}
\title{Read in a variant file.}
\usage{
read_var_file(fname, ...)
}
\arguments{
\item{fname}{The full file path to the variant file.}

\item{...}{Additional arguments to be passed to \code{\link{read.delim}}.}
}
\value{
The variant file as a data frame with \code{dplyr}'s tbl_df class.
}
\description{
\code{read_var_file} reads in a variant file output by the MPS pipeline i.e.
merged_collab.txt. Note that it can be a subset of the original (raw) file;
the main thing is that its column headers should not be processed beforehand.
It is basically a wrapper around \code{read.delim}, but the \code{na.strings}
is an 'empirical' parameter that specifies strings used throughout the file to
denote NAs.
}
\section{Warning}{
 This function takes more than 10mins to read in a data frame
  with > 7 million rows and 150 variables. \code{data.table}'s \code{fread}
  function is considerably faster, but I've found that it automatically
  converts column classes that were supposed to be numeric to character. I
  haven't figured out why it's doing this yet.
}
\examples{
\dontrun{
full_path <- "~/Desktop/Fam1_merged_collab.txt"
DF <- read_var_file(file.path(full_path))
}
}
\seealso{
\code{\link{read.table}}, \code{\link[dplyr]{tbl_df}} for more
  details.
}

