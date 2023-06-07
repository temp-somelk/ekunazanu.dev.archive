+++
title = "Probabilistic Data Structures"
indextitle = "Utizlizng Hashes: Probabilistic Data Structures"
summary = "Probabilistic data structures are, as the name suggests, data structures that are probabilistic in nature. What it means is that these data structures cannot give us exact answers, and only give us probable answers to queries on datasets."
date = 2023-02-25T09:11:12+05:30
type = "blog"
categories = ["Computer Science"]
tags = ["Cryptography"]
math = true
draft = true
+++

![Header Image](https://www.echevarria.io/img/photos/v1/04.jpg)

Probabilistic data structures are, as the name suggests, data structures that are probabilistic in nature. What it means is that these data structures cannot give us exact answers, and only give us probable answers to queries on datasets. You might wonder, "Why even bother with these if they give us imprecise answers?!" Well, because what we sacrifice in precision, we gain in space and/or time efficiency. When we don't need exact answers, these data structures help us store and compute information, in sublinear space/time complexity, sometimes in $O(1)$ space and time.

## Bloom Filters

Bloom filters are one of the most popular probabilistic data structures that help us check for membership in a set or multisets. In simpler words, they help us check if an element is present in a set or not. Bloom filters cannot report with certainty that an element exists in a set, but it can tell us with certainty if it does **not** exist in a set. And they help us do it for big datasets using very little space.

### Hash Tables

So how do we store information using less information? You can compress the data and store only the unique values, but the space required will still roughly scale linearly with the number of elements and the size of each element. So what can we do? Hashing comes to the rescue. Well, sort of. We know hashing will always produce a fix length output for any given input. We also know that output is deterministic, i.e. it will produce the exact same output if our input is same. This solves two of our problems. First, we only have to store a fixed amount, even if the size of the element is large. The second is storing only distinct elements. Since hashes produce the same output for a given input, even if an elements occurs multiple times, if we hash it, we'll get the same result, and thus do not need to store it again. Hash collisions still happen, and it's the reason bloom filters are probabilistic, but we'll discuss about hash collisions later.

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
Here, we've hashed the contents of the elements and stored only the distinct hashes. And by doing so, we've managed to get rid of duplicates and store fixed length strings instead of entire elements, and that's good enough but we can do a lot better.

### Mapping to bitstrings

When we're using a hashing function, we know that the ouput will always be between n bits for a given n-bit hashing function. We can exploit this property to exponentially decrease the amount of storage needed to store the hashes. Also since the hash output has a *(somewhat)* random distribution, we know that for a given long enough hashing function (relative to the number of input elements), hash collisions are rare.

We can take an $n$ bit hashing function and create an $m = 2^{m}$ array and initialize it all to zeroes. For storing data, we can use

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

``` goat {caption="A Sketch of m length and d depth"}
          .---+---+---+---+---+---+---+---+   +---.  -.
          | 0 | 2 | 0 | 1 | 2 | 6 | 3 | 0 | … | 0 |   |
          +---+---+---+---+---+---+---+---+   +---+   |
          | 0 | 3 | 6 | 1 | 0 | 0 | 0 | 2 | … | 1 |   |
          +---+---+---+---+---+---+---+---+   +---+   +- d
          | 0 | 1 | 2 | 2 | 0 | 1 | 0 | 6 | … | 0 |   |
          +---+---+---+---+---+---+---+---+   +---+   |
          | 1 | 0 | 3 | 6 | 1 | 1 | 0 | 0 | … | 2 |   |
          '---+---+---+---+---+---+---+---+   +---'  -'
            1   2   3   4   5   6   7   8       m
```

Count min sketch is an modified form of Bloom Filters which allow us to calculate the minimum occurences of elements in a set.

It's kinda similar to Bloom Filters. Well, sort of. Instead of storing a bit for an element, we instead assign it more bits for it to be able to store a number, which we'll utilize as a counter. We do the same thing — create a hash table. Instead of creating a one-dimesnional array which stores the state of membership, we instead create a two dimesnional array each storing the cardinality of element. So what's in the other arrays?

Well here's the thing. Hash collisions can be prevented not just by expanding horizontally, i.e., by increasing the size of the array, but we can also increase it vertically, i.e. by adding an extra dimension to the array. Each array store the cardinality of the elements too, but using a different hashing function. Now you might ask "Why would you hash the elements multiple times and increase computational operations idiot?". Well because I'm a genius and I said so. Okay not really, but is genius indeed. Instead of just taking the cardinality of the element from one array, we take the minimum of the count-min-sketch. The probability of the two distinct elements having the same hashing function is already rare, depending on how big we chose our array. But using more hashing functions and looking at the intersection of the hash tables decreases the probability of hash collisions exponentially. This allows us to use **MUCH** smaller arrays.

Of course you might now say, "Well that's great, then lets just increase ```d``` and reduce ```m```, it'll reduce our sketch massively!" Well hold your horses there, you were partially right when you we talking about unnecessarily computing hashes multiple times. While it's not redundant, calculating hashes surely is costly, computationally speaking of course. After a point you hit a point of diminishing returns, so you need to find the sweet spot where the right tradeoffs are made.

Let's take an example. Here we'll take this set:

```
A = {
    Elem1,
    Elem2,
    Elem1,
    Elem3,
    Elem5,
    Elem5,
    Elem5,
    Elem1,
    Elem2,
    Elem5,
    Elem6,
    Elem3,
}
```

Let's start. We initialize a two dimensional array of ```m = 8``` breadth and ```d = 4``` depth. We'll discuss how the dimensions are decided later, for now let's just assume $m$ and $d$ are what they are.

``` goat {caption="Initial 2D Array"}
.---+---+---+---+---+---+---+---.
| 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
+---+---+---+---+---+---+---+---+
| 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
+---+---+---+---+---+---+---+---+
| 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
+---+---+---+---+---+---+---+---+
| 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
'---+---+---+---+---+---+---+---'
  1   2   3   4   5   6   7   8
```

First, we hash the first element in the set using 4 hashing functions and add 1 to the position denoted by the respective hash.

``` goat {caption="Hashing an element using multiple functions"}
Hash1(elem1) --> 3
.---+---+---+---+---+---+---+---.   -.
| 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 1  | 
'---+---+---+---+---+---+---+---'    |
                                     |
Hash2(elem1) --> 2                   |
.---+---+---+---+---+---+---+---.    |
| 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 2  |
'---+---+---+---+---+---+---+---'    |
                                     +--- d
Hash3(elem1) --> 8                   |
.---+---+---+---+---+---+---+---.    |
| 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 3  |
'---+---+---+---+---+---+---+---'    |
                                     |
Hash4(elem1) --> 6                   |
.---+---+---+---+---+---+---+---.    |
| 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 4  |
'---+---+---+---+---+---+---+---'   -'
  1   2   3   4   5   6   7   8
```

So we get the resulting 2D array:

``` goat
.---+---+---+---+---+---+---+---.
| 0 | 0 | 1 | 0 | 0 | 0 | 0 | 0 |
+---+---+---+---+---+---+---+---+
| 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 |
+---+---+---+---+---+---+---+---+
| 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |
+---+---+---+---+---+---+---+---+
| 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 |
'---+---+---+---+---+---+---+---'
  1   2   3   4   5   6   7   8
```

The given set had a frequency distribution as follows:

* Elem1: 3
* Elem2: 1
* Elem3: 2
* Elem4: 1
* Elem5: 6
* Elem6: 0

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
.-------------------.
|  .-.   .-.   .-.  |
| | H | | H | | H | |
|  '-'   '-'   '-'  |
'-------------------'
   .-.   .-.   .-.
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
