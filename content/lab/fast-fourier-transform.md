+++
title = "The Fast Fourier Transform"
indextitle = "Time Complexity: The Fast Fourier Transform"
summary = "Explaining the importance of algorithmic efficiency using the Fast Fourier Transform"
date = 2023-02-22T03:22:02+05:30
type = "lab"
categories = ["Computer Science"]
tags = ["Signal Processing"]
math = true
draft = true
+++

While Dicrete Fourier transforms

## Including

## Efficiency

In computer science, we use a term called [Time Complexity](https://en.wikipedia.org/wiki/Time_complexity) to represent how an algorithm scales, with regards to the time needed to perform the computation, with respect to the size of the given input data. By removing the redundant calculations in FFT, we reduce the number of operations need to perform from the square of the number of the inputs to just . So formally we can say, the time complexity of the algorithm has been reduced from $O(n^{2})$ to $O(n \\cdot logn)$.

## Implementation
