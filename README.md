# CDS: A fold-change based statistical test for concomitant identification of distinctness and similarity in gene expression analysis.
Nicolas Tchitchek  

# Description
The Concomitant evaluation of Distinctness and Similarity is a fold-change-based statistical test that allows to detect differentially and similarly expressed genes. Given two sets of gene measurements in different biological conditions, probabilities of making type I and type II errors in stating that a gene is differentially or similarly expressed from one condition to the other can be calculated. Furthermore, a confidence interval for the fold-change can be delineated.

# Examples
```r
#Compute the probability Q0 (the probability of making an error in stating that a certain gene is differentially expressed between the two biological conditions) based on the means (m1 and m2) and standard deviations (s1 and s2) for each of the two biological conditions. TAN_ALPHA_0 corresponds to a fold-change criteria for stating difference between two values.
q0 <- compQ0(m1=31,s1=1.4,m2=11,s2=2.3,TAN_ALPHA_0=2)
[1] 0.01345081
```

```r
#Compute the probability QA (the probability of making an error in stating that a certain gene is similarly expressed between the two biological conditions) based on the means (m1 and m2) and standard deviations (s1 and s2) for each of the two biological conditions. TAN_ALPHA_A corresponds to a fold-change criteria for stating the similarity between two values.
qA <- compQA(m1=11,s1=0.1,m2=16,s2=0.2,TAN_ALPHA_A=1.5)
[1] 0.003741817
```

```r
#Compute the confident interval of the fold-change based on a specific confident level EPSILON.
R  <- compR(15,0.1,12,0.2,EPSILON=0.01)
[1] 1.200805 12140.955838
```

# References
[Tchitchek Nicolas, José Felipe Golib Dzib, Brice Targat, Sebastian Noth, Arndt Benecke, and Annick Lesne. 2012. CDS: A fold-change based statistical test for concomitant identification of distinctness and similarity in gene expression analysis. Genomics, Proteomics and Bioinformatics 10, no. 3: 127-135](http://www.ncbi.nlm.nih.gov/pubmed/22917185)


