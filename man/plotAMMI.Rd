\name{plot.AMMI}
\alias{plot.AMMI}
%- plot.AMMI.
\title{ PLOT AMMI }
\description{
  Biplot AMMI.
}
\usage{
\method{plot}{AMMI}(x,first=1,second=2,third=3,type=1,number=FALSE,gcol=NULL,ecol=NULL,
icol=NULL,angle=25,lwd=1.8,length=0.1,xlab=NULL,ylab=NULL,xlim=NULL,ylim=NULL,...)
}
\arguments{
  \item{x}{ object AMMI }
  \item{first}{ position axis x, 0=Y-dependent, 1=PC1, 2=PC2, 3=PC3}
  \item{second}{ position axis y,0=Y-dependent, 1=PC1, 2=PC2, 3=PC3}
  \item{third}{ position axis z,0=Y-dependent, 1=PC1, 2=PC2, 3=PC3}
  \item{type}{ 1=biplot, 2= triplot 3=influence genotype}
  \item{number}{ TRUE or FALSE names or number genotypes}
  \item{gcol}{ genotype color}
  \item{ecol}{ environment color }
  \item{icol}{ influence color}
  \item{angle}{ angle from the shaft of the arrow to the edge of the arrow head }
  \item{lwd}{ parameter line width in function arrow}
  \item{length}{ parameter length in function arrow}
  \item{xlab}{ x labels}
  \item{ylab}{ y labels} 
  \item{xlim}{ x limites}
  \item{ylim}{ y limites}
  \item{\dots}{ other parameters of plot}
}

\details{
type=1 produce graphs biplot.
type=2 produce graphs triplot, the components are normalizad in scale 0-1.
type=3 produce graphs on a 2d point set that are all subgraphs 
of the Delaunay triangulation with relative neighbor graph.

The relative neighbor graph is defined by the relation, x and y are neighbors if

\deqn{d(x,y) \le min(max(d(x,z),d(y,z))| z \in S)}{d(x,y) <= min(max(d(x,z),d(y,z))| z in S)}

where d() is the distance, S is the set of BIPLOT points and z is an arbitrary point in S. 

help(relativeneigh) package=spdep
}

\author{ Felipe de Mendiburu }

\seealso{\code{\link{AMMI}} }

\examples{
library(agricolae)
data(plrv)
model<- with(plrv,AMMI(Locality, Genotype, Rep, Yield))
# biplot PC2 vs PC1
plot(model)
## plot PC1 vs Yield
plot(model,0,1,gcol="blue",ecol="green")
## triplot PC 2,3,4
if (requireNamespace("klaR", quietly = TRUE)) {
plot(model,first=2,second=3,third=4, type=2,number=TRUE)
}
# biplot with influence genotype in pc3 vs pc2
if (requireNamespace("spdep", quietly = TRUE)) {
plot(model,first=2,second=3, type=3,number=TRUE,icol="green")
}
}
\keyword{ aplot }% at least one, from doc/KEYWORDS

