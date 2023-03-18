+++
title = "The Fast Fourier Transform"
indextitle = "Time Complexity: The Fast Fourier Transform"
summary = "Explaining the importance of algorithmic efficiency using the Fast Fourier Transform"
date = 2023-02-22T03:22:02+05:30
type = "blog"
categories = ["Computer Science"]
tags = ["Signal Processing"]
code = false
math = false
draft = true
+++

{{< note open="true" summary="Note" >}}
This article assumes you have a basic understanding of the [Discrete Fourier Transform](/blog/discrete-fourier-transform).
{{< /note >}}

While Dicrete Fourier transforms

## Including

## Efficiency

In computer science, we use a term called [Time Complexity](wikipediapages) to represent how an algorithm scales, with regards to the time needed to perform the computation, with respect to the size of the given input data. By removing the redundant calculations in FFT, we reduce the number of operations need to perform from the square of the number of the inputs to just . So formally we can say, the time complexity of the algorithm has been reduced from <span class="mathin">O(n<sup>2</sup>)</span> to <span class="mathin">O(nlog<sub>2</sub>n)</span>.

## Implementation
