% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/function_method-5_spearman_correlation.R
\name{DSPNorm.eval.spearman.correlation}
\alias{DSPNorm.eval.spearman.correlation}
\title{Evaluate Performance of Normalization Methods by Comparing Spearman correlation between DSP protein expression and the corresponding mRNA-level expression}
\usage{
DSPNorm.eval.spearman.correlation(
  normed.data.list,
  norm.methods.list,
  reference.data.matrix,
  main = ""
)
}
\arguments{
\item{normed.data.list}{a list object containing the normalized DSP expression matrix under all normalization methods, each normalized matrix can be either a data.frame or matrix.}

\item{norm.methods.list}{a numerical vector of the method IDs to be compared, for instance, norm.methods.list = 1:17.}

\item{reference.data.matrix}{mRNA-Seq expression data of either a matrix or a data.frame class. Must be arranged in exactly the same order of the DSP protein expression data.}

\item{main}{title to be added to the output figure.}
}
\value{
ggplot2 object of box plot, for both Spearman correlation strengths and Spearman correlation p values.
}
\description{
The function generates box plots of Spearman correlations of matched protein-mRNA expressions. A better normalization method is expected to yield stronger correlation between protein expression and the corresponding mRNA expression within the same ROI.
}
\examples{
data(COVID.19.DSP)

high.Expr.normed.DSP.matched.to.WTA <-
   COVID.19.DSP$high.Expr.normed.DSP.matched.to.WTA

high.Expr.Q3normed.WTA <-
   COVID.19.DSP$high.Expr.Q3normed.WTA

DSPNorm.eval.spearman.correlation(
   normed.data.list = high.Expr.normed.DSP.matched.to.WTA,
   norm.methods.list = c(1:5, 8:16),
   reference.data.matrix = high.Expr.Q3normed.WTA,
   main = "All Patients: across ROIs within Each Molecule")
}
