% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Ising_grid.R
\name{make_Ising_grid}
\alias{make_Ising_grid}
\title{Make a Grid to Specify Multiple Ising Networks}
\usage{
make_Ising_grid(par1, par2 = NULL, thresholds, weiadj, beta = 1)
}
\arguments{
\item{par1, par2}{Generated from one of \code{\link[=single_threshold]{single_threshold()}},
\code{\link[=all_thresholds]{all_thresholds()}}, \code{\link[=single_wei]{single_wei()}}\verb{, [whole_weiadj()], or [beta_list()]. Use }par2 = NULL` if you only
want to vary one parameter.}

\item{thresholds, weiadj}{The thresholds and the weighted adjacency matrix
of the Ising network. If you have an \code{IsingFit} object estimated using
\code{\link[IsingFit:isingfit]{IsingFit::IsingFit()}}, you can find those two parameters in its components
(\verb{<IsingFit>$thresholds} and \verb{<IsingFit>$weiadj}).}

\item{beta}{The \eqn{\beta} value for calculating the Hamiltonian.}
}
\value{
An \code{Ising_grid} object that is based on a tibble and
contains the information of all simulation conditions.
}
\description{
Specify one or two varying parameters for
Ising networks. The output of \code{make_Ising_grid()} can be used to
make landscapes of multiple networks.
}
\details{
There are five possible ways to vary the parameters for Ising networks,
corresponding to five control functions:
\itemize{
\item \code{\link[=single_threshold]{single_threshold()}} Vary a threshold value for a single variable.
\item \code{\link[=all_thresholds]{all_thresholds()}} Vary all threshold values together.
\item \code{\link[=single_wei]{single_wei()}} Vary a single weight value for a path between two
variables.
\item \code{\link[=whole_weiadj]{whole_weiadj()}} Vary the whole weighted adjacency matrix.
\item \code{\link[=beta_list]{beta_list()}} Use a list of different beta values.
}

See \link{make_Ising_grid-control-functions} for details.
}
