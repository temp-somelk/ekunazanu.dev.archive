+++
title = "The Fourier Transform"
indextitle = "Periodic Functions: The Fourier Transform"
summary = "Explaining how the Fourier Transform converts a time domain signals to a frequency domain signals"
date = 2023-02-22T00:01:03+05:30
type = "lab"
categories = ["Mathematics"]
tags = ["Signal Processing"]
math = true
draft = true
+++

Imagine you are given a function $y = f(x)$. Now what if I asked you to to represent this function as a sum of sine waves? Seems tricky, if not impossible at first. It might look daunting from afar, but the underlying principle behind Fourier transforms is actually relatively simple and really elegant.

## Time vs Frequency

{{< img alt="time v frequency graph" caption="A time domain vs a frequency domain graph of the same signal" draksrc="" lightsrc="" >}}

### Use Cases

* Sound Processing
*

## Euler's Formula

### The complex plane



for any number, $x^{yi}$ results in a comlex number $a + bi$.

### Euler's Identity
Now, for $e^{i\\pi} = -1$

testing

I won't pretend to know why it's true, but I am pretty sure it has to do something with calculus. I never paid attention in calc classes, although I might come back later to explain why it happens once I myself have a solid understanding of this phenomena. But for now, take it as a given, and assume $e^{i\\pi} = -1$.

Since the complex coordinates now have a frequency of $2\\pi$, this means we know have a unit circle, which means we can represent the coordinates in polar form $\\cos(\\theta), i\\sin(\\theta)$. Where $\\cos(\\theta)$ represents the $x$ coordinate and $i\\sin(\\theta)$ represents the $y$ coordinate.


Thus, we end up with

$$X(f)\\ \\triangleq \\ \\int \_{-\\infty }^{\\infty }x(t)\\ e^{-i2\\pi ft}\\ {\\rm {d}}t$$

## Alternatives
Why not just use the unit circle and use sin and cos then? We can! We can also use plain vectors to represent the unit circle. We just represent it using.

[^1]:
