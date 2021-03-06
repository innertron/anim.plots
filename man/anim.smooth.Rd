% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/postprocessing.R
\name{anim.smooth}
\alias{anim.smooth}
\title{Smooth an \code{anim.frames} object}
\usage{
anim.smooth(x, fps = 10)
}
\arguments{
\item{x}{an \code{anim.frames} object}

\item{fps}{how many frames per second to smooth to}
}
\value{
A smoothed \code{anim.frames} object, with the \code{speed} attribute equal
to \code{fps}.
}
\description{
Some export formats ignore information in the \code{times}
attribute and plot frames at constant speed. \code{anim.smooth} creates
a smoothed version of the \code{anim.frames} object with frames at
constant intervals, suitable for export.
}
\details{
Note that plot parameters such as x and y positions are not interpolated.
If you want your whole animation to look smoother, you have to do
the work yourself using e.g.\code{\link{approx}}.

If you smooth to a large value of \code{fps}, the animations may look bad
in R because they overtax the graphics engine. They should still look good
when saved, though.
}
\examples{
accel <- anim.plot(1, 1:30, times=sqrt(1:30))
\dontrun{
anim.save(accel, "GIF", "wrong.gif")
}
accel <- anim.smooth(accel, fps=20)
\dontrun{
anim.save(accel, "GIF", "better.gif")
}
}

