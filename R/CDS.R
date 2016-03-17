# Here specify here the working directory with the jar file
#setwd('C:/Users/ntchi/Desktop/CDS/')

#library(rJava)
rJava::.jinit(classpath=c("./ssj.jar","./CDS.jar"))

#' @title xxx
#'
#' @description xxx
#'
#' @param m1 xxx
#' @param s1 xxx
#' @param m2 xxx
#' @param m2 xxx
#' @param TAN_ALPHA_0 xxx
#'
#' @return xxx
#'
#' @export
compQ0 <- function(m1,s1,m2,s2,TAN_ALPHA_0){
	hjw <- rJava::.jnew("CDS")
	q0  <- rJava::.jcall(hjw,"D","compQ0",m1,s1,m2,s2,TAN_ALPHA_0)
	return(q0)
}

#' @title xxx
#'
#' @description xxx
#'
#' @param m1 xxx
#' @param s1 xxx
#' @param m2 xxx
#' @param m2 xxx
#' @param TAN_ALPHA_A xxx
#'
#' @return xxx
#'
#' @export
compQA <- function(m1,s1,m2,s2,TAN_ALPHA_A){
	hjw <- rJava::.jnew("CDS")
	qA  <- rJava::.jcall(hjw,"D","compQA",m1,s1,m2,s2,TAN_ALPHA_A)
	return(qA)
}

#' @title xxx
#'
#' @description xxx
#'
#' @param m1 xxx
#' @param s1 xxx
#' @param m2 xxx
#' @param m2 xxx
#' @param ESPILON xxx
#'
#' @return xxx
#'
#' @export
compR <- function(m1,s1,m2,s2,ESPILON){
	hjw <- rJava::.jnew("CDS")
	r0  <- rJava::.jcall(hjw,"D","compR0",m1,s1,m2,s2,ESPILON)
	rA  <- rJava::.jcall(hjw,"D","compRA",m1,s1,m2,s2,ESPILON)
	return(c(r0,rA))
}
