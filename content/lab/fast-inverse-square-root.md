+++
title = "Fast Inverse Square Root"
indextitle = "Video Games Genius: Fast Inverse Square Root"
summary = "under 160 chars"
date = 2023-09-11T02:40:52+05:30
type = "lab"
categories = [""]
tags = [""]
math = false
draft = true
+++

![Image of Fast Inverse Square Root](/media/lab/fast-inverse-square-root/header.png)

```
#include <stdio.h>

float FastInvSqrt(float num) {
    float xhalf = 0.5f * num;
    long x = *((long *) &num);                // Switch to log2(num); IEEE754 magic
    x = 0x5f375a86 - (x >> 1);                // Convert to -log(0.5x)
    num = *((float *) &x);                    // Switch from log to float
    return num * (1.5f - xhalf * num * num);  // Netownian approximation
}

int main() {
    float num;
    scanf("%f", &num);
    printf("%f", FastInvSqrt(num));
}
```

{{< footnotelist >}}
