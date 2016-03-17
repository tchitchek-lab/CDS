# CDS: A fold-change based statistical test for concomitant identification of distinctness and similarity in gene expression analysis.
Nicolas Tchitchek  

# CDS-test
CDS: A fold-change based statistical test for concomitant identification of distinctness and similarity in gene expression analysis.

# Description
The Concomitant evaluation of Distinctness and Similarity is a fold-change-based statistical test that allows to detect differentially and similarly expressed genes. Given two sets of gene measurements in different biological conditions, probabilities of making type I and type II errors in stating that a gene is differentially or similarly expressed from one condition to the other can be calculated. Furthermore, a confidence interval for the fold-change can be delineated.
Details
Package: 	CDS
Type: 	Package
Version: 	1.0
Date: 	2012-05-23
License: 	GPL
Link: 	CDS.zip

# Author(s)
Nicolas Tchitchek, Jose Felipe Golib Dzib, Brice Targat, Sebastian Noth, Arndt Benecke, and Annick Lesne
Maintainer: Nicolas Tchitchek <nicolas@ihes.fr>

# References
Nicolas Tchitchek, Jose Felipe Golib Dzib, Brice Targat, Sebastian Noth, Arndt Benecke, and Annick Lesne. CDS: A fold-change based statistical test for concomitant identification of distinctness and similarity in gene expression analysis. Genomics, Proteomics & Bioinformatics, 2012. Supplementary Materials

# Examples


```r
# compQ0(m1,s1,m2,s2,TAN_ALPHA_0)
#
#Compute the probability Q0 (the probability of making an error in stating that a certain gene is differentially expressed between the two biological conditions) based on the means (m1 and m2) and standard deviations (s1 and s2) for each of the two biological conditions. TAN_ALPHA_0 corresponds to a fold-change criteria for stating difference between two values.
q0 <- compQ0(31,1.4,11,2.3,2)
[1] 0.01345081
```


```r
# compQA(m1,s1,m2,s2,TAN_ALPHA_A)
#
#Compute the probability QA (the probability of making an error in stating that a certain gene is similarly expressed between the two biological conditions) based on the means (m1 and m2) and standard deviations (s1 and s2) for each of the two biological conditions. TAN_ALPHA_A corresponds to a fold-change criteria for stating the similarity between two values.
qA <- compQA(11,0.1,16,0.2,1.5)
[1] 0.003741817
```


```r
#Compute the confident interval of the fold-change based on a specific confident level EPSILON.
R  <- compR(15,0.1,12,0.2,0.01)
[1] 1.200805 12140.955838
```





