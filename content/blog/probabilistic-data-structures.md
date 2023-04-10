+++
title = "Probabilistic Data Structures"
indextitle = "Utizlizng Hashes: Probabilistic Data Structures"
summary = "Probabilistic data structures are, as the name suggests, data structures that are probabilistic in nature. What it means is that these data structures cannot give us exact answers, and only give us probable answers to queries on datasets."
date = 2023-02-25T09:11:12+05:30
type = "blog"
categories = ["Computer Science"]
tags = ["Cryptography"]
code = false
math = true
draft = true
+++

{{< note summary="Note" open="true" >}}
This article assumes you have a basic understanding of [Hashing](/blog/hashing). You do not need to know how they work, you just need to know what they do.
{{< /note >}}

Probabilistic data structures are, as the name suggests, data structures that are probabilistic in nature. What it means is that these data structures cannot give us exact answers, and only give us probable answers to queries on datasets. You might wonder, "Why even bother with these if they give us imprecise answers?!" Well, because what we sacrifice in precision, we gain in space and/or time efficiency. When we don't need exact answers, these data structures help us store and compute information, in sublinear space/time complexity, sometimes in $O(1)$ space and time.

## Bloom Filters

Bloom filters are one of the most popular probabilistic data structures that help us check for membership in a set or multisets. In simpler words, they help us check if an element is present in a set. Bloom filters cannot report with certainty that an element exists in a set, but it can tell us with certainty if it does **not** exist in a set. And they help us do it for big datasets using very little space.

### Hashmaps

So how do we store information using less information? You can compress the data and store only the unique values, but the space required will still roughly scale linearly with the input data. So what can we do? Hashing comes to the rescue. Well, sort of. We know hashing will always produce a fix length output for any given input. We also know that output is deterministic, i.e. it will produce the exact same output if our input is same. This solves two of our problems. First, we only have to store a fixed amount, even if the size of the element is large. The second is storing only distinct elements. Since hashes produce the same output for a given input, even if an elements occurs multiple times, if we hash it, we'll get the same result, and thus do not need to store it again. Hash collisions still happen, and it's the reason Bloom Filters are probabilistic, but we'll discuss about hash collisions later.

```goat {caption="Array size independent of size of individual elements"}
.--------------------------.                   .--------------.
| "Hello World"            |                   | 0xe59ff97941 |
+--------------------------+                   +--------------+
| 54355                    |                   | 0xc48d31bb03 |
+--------------------------+                   +--------------+
| "A somewhat long string" |    .---------.    | 0xded5505104 |
+--------------------------+    | Hashing |    +--------------+
| "Hello World"            | ---+ each    +--> | 0xe59ff97941 |
+--------------------------+    | element |    +--------------+
| "ggs"                    |    '---------'    | 0x6894ddb568 |
+--------------------------+                   +--------------+
| 54355                    |                   | 0xc48d31bb03 |
+--------------------------+                   +--------------+
| "abcdefghijk"            |                   | 0xe271dc47fa |
'--------------------------'                   '--------------'
```

```goat {caption="Array excluding the duplicates"}
.--------------.
| 0xe59ff97941 |
+--------------+
| 0xc48d31bb03 |
+--------------+
| 0xded5505104 |
+--------------+
| 0x6894ddb568 |
+--------------+
| 0xe271dc47fa |
'--------------'
```

So far we've managed to get rid of duplicates and store fixed length strings instead of entire elements, and that's good enough but we can do a lot better.

### Mapping to bitstrings

Assuming an $n$-bit hashing fuction whose result is perfectly random, we can use it to create an $m = 2^{n}$ bit bitstring and map the output to it. This means for every element, regardless of its size will use just one bit. The value of $m$ is decided based on our tolerance for hash collisions. For now we'll assume about 10 bits per element to keep hash collision below 1%.

``` goat {caption="m-bit Bitstring"}
.---+---+---+---+---+---+---+---+   +---.
| 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | … | 0 |
'---+---+---+---+---+---+---+---+   +---'
  1   2   3   4   5   6   7   8       m
```

We then take the element and pass it through a hashing function.

``` goat {caption="Storing element"}
              .-----------.
              | Element 1 |
              '-----+-----'
                    |
                    v
            +---------------+
            | Hash Function |
            +-----+---------+
                  |
                  |
                  v
.---+---+---+---+---+---+---+---+   +---.
| 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | … | 0 |
'---+---+---+---+---+---+---+---+   +---'
  1   2   3   4   5   6   7   8       m
```

To check for membership, we do the same thing.

``` goat {caption="Checking membership"}
              .-----------.
              | Element 2 |
              '-----+-----'
                    |
                    v
            +---------------+
            | Hash Function |
            +-+---+---+-----+
             /
            /
           v
.---+---+---+---+---+---+---+---+   +---.
| 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | … | 0 |
'---+---+---+---+---+---+---+---+   +---'
  1   2   3   4   5   6   7   8       m
```

``` goat {caption="Hash Collisions"}
              .-----------.
              | Element 3 |
              '-----+-----'
                    |
                    v
            +---------------+
            | Hash Function |
            +-----+---------+
                  |
                  |
                  v
.---+---+---+---+---+---+---+---+   +---.
| 0 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | … | 0 |
'---+---+---+---+---+---+---+---+   +---'
  1   2   3   4   5   6   7   8       m
```

``` goat {caption="Using Multiple Hash Functions"}
              .-----------.
              | Element 3 |
              '--+-----+--'
                /       \
               v         v
 +-----------------+ +-----------------+
 | Hash Function 1 | | Hash Function 2 |
 +------------+----+ +--------+--------+
               \             /
                \           /
                 v         v
.---+---+---+---+---+---+---+---+   +---.
| 0 | 0 | 1 | 0 | 1 | 0 | 1 | 0 | … | 0 |
'---+---+---+---+---+---+---+---+   +---'
  1   2   3   4   5   6   7   8       m
```

### Counting Bloom Filters

``` goat
.---+---+---+---+---+---+---+---+   +---.
| 0 | 2 | 0 | 1 | 0 | 0 | 1 | 1 | … | 0 |
'---+---+---+---+---+---+---+---+   +---'
```

## Count-Min Sketch

``` goat {caption="A Sketch"}
          .---+---+---+---+---+---+---+---+   +---.  -.
          | 0 |   |   |   |   |   |   |   | … | 0 |   |
          +---+---+---+---+---+---+---+---+   +---+   |
          |   |   |   |   |   |   |   |   | … | 0 |   |
          +---+---+---+---+---+---+---+---+   +---+   +- d
          |   |   |   |   |   |   |   |   | … | 0 |   |
          +---+---+---+---+---+---+---+---+   +---+   |
          |   |   |   |   |   |   |   |   | … | 0 |   |
          '---+---+---+---+---+---+---+---+   +---'  -'
            1   2   3   4   5   6   7   8       m
```

## HyperLogLog

HyperLogLog is another data structure that uses hashing as well, but it is a bit different from Bloom Filters and Count-Min Skteches. I still do want to include it because, it too, is a very popular probabilistic data structure that is generally used in conjuction with the previous two types. The name HyperLogLog may or may not sound cool, but the clever math behind it definitely is.

So far we can check if an element *probably* exists in a set or definitely does **not** exist in a set with Bloom Filters, and we can find approximate the minimum frequency of a given element in a set using the Count-Min Sketch. HyperLogLog comes in to help us approximate the total number of *unique* elements in a given set (or multi-sets).

### Probabilities

Take three coins. Keep randomly tossing them until all of them are heads. Repeat.

``` goat {caption="Probablility of getting three heads"}
                     .-.   .-.   .-.
                    | H | | H | | T |
                     '-'   '-'   '-'
                     .-.   .-.   .-.
                    | T | | T | | H |
                     '-'   '-'   '-'
                     .-.   .-.   .-.
                    | T | | H | | H |
                     '-'   '-'   '-'
                     .-.   .-.   .-.
                    | H | | H | | H | <-- All heads occur
                     '-'   '-'   '-'      every eight set
                     .-.   .-.   .-.      of tosses
                    | H | | T | | H |
                     '-'   '-'   '-'
                     .-.   .-.   .-.
                    | T | | H | | H |
                     '-'   '-'   '-'
                     .-.   .-.   .-.
                    | H | | T | | T |
                     '-'   '-'   '-'
                     .-.   .-.   .-.
                    | T | | H | | T |
                     '-'   '-'   '-'
```

The probability of getting all heads is 1/8. Another way of saying it would be, the combination occurs once on average for every eight sets of tosses.

``` goat {caption="UID of element"}
.---+---+---+---+---+---+---+---.
| 0 | 1 | 0 | 1 | 0 | 1 | 0 | 0 |
'---+---+---+---+---+---+---+---'
  1   2   3   4   5   6   7   8
```

``` goat {caption="Probability"}
Probability of being 0 -------.
= 1/2                         |
                              v
.---+---+---+---+---+---+---+---.
| 0 | 1 | 0 | 1 | 0 | 1 | 0 | 0 |
'---+---+---+---+---+---+---+---'
  1   2   3   4   5   6   7   8
```

``` goat {caption="cap"}
Probability of both ------+---.
being 0                   |   |
= 1/4                     v   v
.---+---+---+---+---+---+---+---.
| 0 | 1 | 0 | 1 | 0 | 1 | 0 | 0 |
'---+---+---+---+---+---+---+---'
  1   2   3   4   5   6   7   8
```
