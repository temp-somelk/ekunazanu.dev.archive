+++
title = "The Euler's Identity"
indextitle = "The Complex Plane: The Euler's Identity"
summary = "If you have ever enrolled in any of the STEM disciplines, chances are you would've come across Euler. Now there's a lot of genius things he came up with, but one of the most well known (and also one of the most elegant) has to be the Euler's Identity."
date = 2023-02-22T00:00:35+05:30
type = "blog"
categories = ["Mathematics"]
tags = ["Signal Processing", "Coordinate Geometry"]
code = false
math = true
draft = true
+++

If you have ever enrolled in any of the STEM disciplines, chances are you would've come across Euler. Now there's a lot of genius things he came up with, but one of the most well known (and also one of the most elegant) has to be the Euler's Identity, $e^{i\\pi} + 1 = 0$. From quantum physics to signal processing, it comes up very frequently in areas that may not even necessarily be directly under the mathematical domain. Now, even if you've never come across this expression, or even know what any of it means, I'll dissect every term and try to explain why it is the way it is and what it represents, using regular high school math.

## Imaginary Numbers

First, let's evaluate the expression $e^{i\\pi} + 1 = 0$. Rearranging it gives us $e^{i\\pi} = -1$. We have the terms $e$, $i$, $\pi$, which then simplifies to $-1$. We'll come back to $e$ later, but for now let's focus on the letter $i$. I'll assume you have never heard of imaginary numbers, and try to build an intuition, as to why why these numbers can help us represent a two dimensional plane.


Take the expression $x^{2} = -1$. Assuming you are familiar with integer multiplication, it would seems non-sensical at first, as to, how in the world can we multiply two same numbers with the same signs to get a negative value. And in fact, there is no such real number that multiplies to $-1$. So now what do we do? We make up a new number $n$ and define it such that $n \\times n = -1$, and let's call the imaginary number $i$, since it doesn't exist, at least among the real numbers. So we end up with $i \\times i = -1$. You may now say, "Hey that's cheating! You can't just make stuff up and then say, that's the soultion." But in mathematics as long as your definition is consistent with the internal rules, logic and structure of its environmental system, it is a valid theory (but that doesn't mean you can make up your own definitions and expect that to be the standard; it also has to be adopted by the wider population). And in fact, in math, redefining functions so that they are applicable more generally is not uncommon (we'll discuss more about that later).

{{< note summary="Imaginary numbers are real" >}}
When I say imaginary numbers do not exist, what I am trying to say is they do not exist in the real number line. If you think numbers are real, then so are imaginary numbers. They are used extensively to describe very real effects of quantum physics, our most accurate theory of reality so far.
{{< /note >}}

### Operations on Imaginary Numbers
How do we now fit these imaginary numbers we just created with the existing system of real numbers? We know that $i \\times i = -1$, what about $i + i$? What about $5 + i$? Or $5 \\times i$?

#### Addition

We will try addition operations with real and imaginary numbers before we move onto with multiplication. Let's try adding $1 + i$, which translate to $1 + 1\\sqrt{-1}$. Imaginary numbers are defined such that they can be added with each other, but cannot be added to real numbers — we cannot add $1$ and $1i$ to get $2$ or $2i$. This restriction might seem arbritary, but it would make more sense when we talk about the complex plane and rotations. Let's take the original expression $1 + i$. We cannot simplify it further, and we end up the same expression $1 + i$. Let's try another one with more terms in it: $3 + i + 23 + i + i -20 -i$. Here again, we cannot add real numbers to imaginary numbers. Taking this restriction into account, we end up with:

$$
= 3 + i + 23 + i + i -20 - i \\\\
= 3 + 23 -20 + i + i + i - i \\\\
= 6 + 2i \\\\
$$

We can take more examples, but you can see from this that any real numbers and imaginary numbers can be simplified and represented using the form $a + bi$. Another important thing you can notice is that we can represent the the magnitude of the imaginary compenent using real numbers. That is, while $bi$ is an imaginary number, $b$ itself is a real number. $a$ is also already a real number. This form $a + bi$, represent a set of real numbers and imaginary numbers, and we call this collective set complex numbers. From the above example, we can also deduce that addition of complex numbers is commutative.

#### Multiplication

Now, let's try multiplying real and imaginary numbers. Luckily, there's no restrictions in the definitions of imaginary numbers that prevent us from multiplying real number with imaginary numbers. So taking $i = \\sqrt{-1}$, we can write $5 \\times \\sqrt{-1}$ as $5\\sqrt{-1}$, or $5 \\times i = 5i$. Also muplitplying imaginary numbers by imaginary numbers, should result in us getting a negative product, by the very definition of imaginary numbers. Assuming, imaginary number multiplication operations are commutative, we can separate the imaginary number $i$, and its real component:

$$
4i \\times 2i \\\\
= 4 \\times i \\times \\ 2 \\times i \\\\
= 8 \\times \\ i^{2} \\\\
= 8(-1) \\\\
= -8 \\\\
$$

Similary we can expand it for complex numbers that have both a real and an imaginary component. We are also allowed to perform distributive operations on complex numbers. Let's try it out:

$$
(3 - 2i) \\cdot (-4 + 5i) \\\\
= 3 \\cdot (-4 + 5i) - 2i \\cdot (-4 + 5i) \\\\
= [3(-4) + 3(5i)] - [2i(-4) + 2i(5i)] \\\\
= -12 + 15i - [-8i + 10(i)^{2}] \\\\
= -12 + 15i - [-8i - 10] \\\\
= -12 + 15i + 8i +10 \\\\
= -2 + 23i
$$

## The Complex Plane

Once you are comfortable with the idea of adding and multiplying numbers by $i$ or $\\sqrt{-1}$, we can move onto recognizing some patterns and quirks of imaginary numbers.

If we take any complex number, and multiply it by $i$, something interesting happens:
$$
(a + bi) \\cdot i \\\\
= (a \\cdot i) + (bi \\cdot i) \\\\
= ai + b \\cdot (i \\cdot i) \\\\
= ai + b \\cdot i^{2} \\\\
= ai + b \\cdot (-1) \\\\
= ai - b \\\\
= -b + ai \\\\
$$

If we multiply the result, we end up with $-a - bi$. Multiplying it again leaves us with $b - ai$. Doing it again gives us back our orginal number $a+ bi$.

If you observe carefully, the pattern here is obvious. Every time we multiply the complex number by $i$, the real components and imaginary components switch places, and the real component changes its sign. It happens because of the very way $i$ is defined. What is less obvious, is why exactly it's important. It doesn't seem very useful to us algebraically, but if we start thinking about it geometrically, it becomes *very* interesting very quickly.

### Complex Rotations

Take a point $(a, b)$ and plot it on the cartesian plane. Now rotate the point 90°, 180° and 270° counter-clockwise with respect to the origin.

![Point at (2, -5): Rotated 90°, 180° and 270°](/media/geogebra-export.png)

Notice, the coordinates of the 90° rotated point is $(-b, a)$, the coordinates for the 180° rotated point is $(-a, -b)$ and the one for the 270° is $(b, -a)$. It is strikingly similar to the pattern we observed earlier before when we multiplied any complex number by $i$. In fact, if we take the real and imaginary component of a complex number on different axes which are mutually perpendicular to each other, we have a very elegant system of describing a two dimensional plane where 90° rotation transforms can be described by a single multiplication operation with the imaginary number $i$. So that's what we do. We define our imaginary numbers on an axis that is perpendicular to the real number line, where the imaginary numbers are represented on the vertical axis, and the real numbers are represented on horizontal axis. This is how we end up with the complex plane, where multiplying any complex number by $i$ has the effect of rotating that point counter clockwise by 90°.

You might think, "Why go through so much trouble defining new things just to be able to represent a 90° rotation transform?". And it's a fair question. The answer is because we can generalize and expand this transform beyond just right angles.

#### A Different Perspecitve

There is another way to look at how multiplying by $i$ rotates the complex point by 90°. I would go on to argue this approach can be generalized and is much more intuitive to understand complex number rotations geometrically. Notice what happens when we multiply a complex number by $-1$. Take an example, $(2 + 5i) \\cdot (-1) = (-2 - 5i)$.

![Multiplying a complex number by -1](/media/geogebra-export(5).png)

The new complex number points in the opposite direction, or it has gone through a 180° rotation. Now, what if instead of multiplying by -1 at once, we did it it two steps. What if $(-2 - 5i) \\cdot n \\cdot n = (-2 -5i)$. Since two half step multiplications result in a 180° rotation, this multiplication by a single $n$ would thus result in a 90° rotation.

![Getting to -1 in 2 steps](/media/geogebra-export(2).png)

From $(2 + 5i) \\cdot (-1) = (-2 - 5i)$ and $(2 + 5i) \\cdot n \\cdot n = (-2 - 5i)$, we can deduce that $n \\cdot n = -1$, or $n = i$. And multiplying $(2 + 5i)$ by $i$ does indeed give a product, in this case $(-5 + 2i)$, which is a 90° counter clockwise rotation of the original point. Sweet.

We can go even further. What if we took four steps to get to $-1$? In that case we would end up with $n \\cdot n \\cdot n \\cdot n = -1$. Intution tells us that if it took 4 steps to get to $-1$ or a 180° rotation, each one of the steps would equate to a 45° rotation.

![Getting to -1 in 4 steps](/media/geogebra-export(1).png)

Coming back to the expression, $n \\cdot n \\cdot n \\cdot n = -1$, if we simplify it, we get $n = \\sqrt{i}$. And it makes sense if you think about it. If multiplying by $-1$ rotates the point by 180° and multiplying by $\\sqrt{-1}$ or $i$ rotates that point by 90°, it would seem logical that multiplying by $\\sqrt{\\sqrt{-1}}$ or $\\sqrt{i}$ would result in a 45° rotation. But what in world does $\\sqrt{i}$ even mean? We defined $\\sqrt{-1}$ to be i, but how do we define $\\sqrt{i}$ ? Do we have to now again define what $\\sqrt{i}$ would mean? What about for 22.5° rotations? Do we have to define $\\sqrt{\\sqrt{i}}$ as well? Luckily we don't have to. Turns out we can describe $\\sqrt{i}$ and other angles using $i$ itself.

Let us assume there is a complex number $(a + bi) = \\sqrt{i}$, **where $a$ and $b$ are real numbers**.

$$
\\implies (a + bi)^{2} = i \\\\
\\implies a^{2} - b^{2} + 2abi = i
$$

Comparing the real components,
$$
\\implies  a^{2} - b^{2} = 0 \\longrightarrow I \\\\
\\implies a = \\pm b \\\\
$$

Comparing the imaginary components,

$$
\\implies 2ab = 1 \\\\
\\implies b = \\tfrac{1}{2a}\\ or\\ a = \\tfrac{1}{2b} \\\\
$$

Now, substituting values of $a$ from $I$,

$$
\\implies b = \\tfrac{1}{\\pm 2 b} \\\\
\\implies b^{2} = \\pm \\tfrac{1}{2}
$$

But we assumed $b$ is real ($b$ is real, $bi$ is imaginary), hence

$$
\\implies b^{2} = \\tfrac{1}{2} \\\\
\\implies b = \\tfrac{1}{\\sqrt{2}} \\\\
Similarly,\\ a = \\tfrac{1}{\\sqrt{2}} \\\\
$$

Thus, we end up with:

$$
\\sqrt{i} = (a + bi) = \\left(\\frac{1}{\\sqrt{2}} + \\frac{1}{\\sqrt{2}}i \\right)
$$

So by our logic, if we multiply any complex number by $\\sqrt{i}$ or $\\left( \\frac{1}{\\sqrt{2}} + \\frac{1}{\\sqrt{2}}i \\right)$, we must get a point that is rotated by 45°. Let's try it with the complex number, $2 + 5i$ :

$$
(2 + 5i) \\cdot \\left(\\tfrac{1}{\\sqrt{2}} + \\tfrac{1}{\\sqrt{2}} i \\right) \\\\
= \\left(2 \\cdot \\tfrac{1}{\\sqrt{2}} + 2 \\cdot \\tfrac{1}{\\sqrt{2}}i \\right) + \\left( 5i \\cdot \\tfrac{1}{\\sqrt{2}} + 5i \\cdot \\tfrac{1}{\\sqrt{2}}i \\right) \\\\
= \\left( \\tfrac{2}{\\sqrt{2}} + \\tfrac{2}{\\sqrt{2}}i \\right) + \\left( \\tfrac{5}{\\sqrt{2}}i - \\tfrac{5}{\\sqrt{2}} \\right) \\\\
= \\left( - \\tfrac{3}{\\sqrt{2}} + \\tfrac{7}{\\sqrt{2}} i \\right) \\\\
$$

![2 + 5i rotated 45°](/media/geogebra-export(6).png)

And sure enough, the point $\\left( - \\frac{3}{\\sqrt{2}} + \\frac{7}{\\sqrt{2}} i \\right)$ lies where $(2 + 5i)$ would have landed if it was rotated 45° with respect to the origin.

Similary getting to $-1$ and $i$ in three steps, or $\\sqrt[3]{-1}$ and $\\sqrt[3]{i}$ should correspond to 60° and 30° rotations respectively.

![Getting to -1 in 3 steps](/media/geogebra-export(8).png)

![Getting to i in 3 steps](/media/geogebra-export(7).png)

Solving for $(a + bi) = -1^{3}$, we get $\\sqrt[3]{-1} = \\left( \\frac{1}{2} + \\frac{\\sqrt{3}}{2} i \\right)$. We, of course, also get $(-1 + 0i)$ as a solution, but we'll ignore that since it doesnt help us to represent 60° rotations. But if you are curious as to how the solution $-1$ would map out geometrically, think of it as rotating the plane thrice by 180°. First, we multiply by $-1$ to rotate it 180°, and then multiply it again by $-1$ (which is the same as multiplying by $1$), we rotate a total of 360° and get back the same position. We multiply a final third time to again end up at the 180° rotated position. $(-1 + 0i)$ is indeed a valid solution, but it's not important for us. We just take the solution $\\left( \\frac{1}{2} + \\frac{\\sqrt{3}}{2} i \\right)$ for our case. Similarly, for $i$ we get $\\sqrt[3]{i} = \\left( \\frac{\\sqrt{3}}{2} + \\frac{1}{2} i \\right)$. You can verify it, but multiplying a complex number by the above values does indeed rotate the plane by 60° and 30°.

#### Scaling

If you're familiar with trigonometry and observe the values for $\\sqrt{i}$, $\\sqrt[3]{i}$, $\\sqrt[3]{-1}$ and $i$, you can see that the complex number multipliers that correspond to a pure rotation, all lie on the unit circle. That is, all the complex numbers are of the form ($\\cos{\\theta} + i\\sin{\\theta})$ for their corresponding angles $\\theta$. The unit circle is of the form $x^{2}+y^{2} = 1$. Substituting the real component $a$ for $x$, and the imaginary component $b$ for $y$, tells us if the sum of the square of the real and imaginary components is $1$, it must lie on the unit circle. That is, for a complex number $(a + bi)$, if $a^{2} + b^{2} = 1$, the point must lie on a circle of radius 1. Similarly using Pythagora's theorem, we can extrapolate that for a complex number $(a+bi)$, where $a^{2} + b^{2} = x$, the radius of the circle it lies on is $\\sqrt{x}$. This *radius* is also the length of the line from the origin to the point, and is called the magnitude of the complex number. The magnitude determines how much a given point is **scaled, not rotated**, if we multiply it with another complex number. It also tells us why $i$, $\\sqrt{i}$, etc *has* to lie on the unit circle, because otherwise we would not be just peforming a pure rotation, but also be scaling the plane. Using the same logic, multiplying a complex number by a positive real number just scales it, without performing any rotation.

![All points lie on the unit circle](/media/geogebra-export(9).png)

![2 + 5i has a magnitude of $\\sqrt{29}$](/media/geogebra-export(11).png)

#### Generalizing for Other Angles

By now, we can recognize that multiplying any complex number with another complex number that makes an angle $\\alpha$ with the origin rotates the plane by a by that angle, and that the angle is determined by the ratio of the real and imaginary component. To be precise, $\\theta = \\tan^{-1} \\left( \\frac{b}{a} \\right)$ for a complex number $(a + bi)$.

![$\\tan \\left( \\theta \\right) = b/a$](/media/geogebra-export(10).png)

### Complex Numbers as Functions

Another way of saying we are rotating a point by multiplying it by a complex number is to say we are adding rotation by multiplying the functions. If we have a complex number that is making an angle $\\alpha$ with the origin. *Mulitplying* it with with another complex number that makes an angle $\\beta$ with respect to the origin gives us a product that makes an angle $\\alpha + \\beta$ with respect to the origin. We can say that:

$$
f(\\alpha) \\cdot f(\\beta) = f(\\alpha + \\beta)
$$

## Euler's Number

We've talked enough about imaginary numbers and rotations so let's get back to Euler's Identity. Actually, let's get back to the Euler's number, $e$.

### Compound Interest

While $e$ is called the Euler's number, the constant may have been actually discovered by Jacob Bernoulli while studying about compound interests [^1] . But what does $e$ have to do with interest rates?

For the sake of simplicity, we'll limit the time period we're considering to one year. Now imagine an interest rate of 100% or 1 that compounds every year. If we put in 1.00 units, we'll end up with $1 + (1 \\cdot 1) = 2$ units. However if it was compounded biannually, after six months we will end up with $1 + \\left(\\frac{1}{2} \\cdot 1 \\right) = 1.5$. After another six months, we'll end up with $1.5 + \\left(\\frac{1}{2} \\cdot 1.5 \\right) = 2.25$. Let's calculate our returns if we compounded thrice a year. After four months, we'll have $1 + \\left( \\frac{1}{3} \\cdot 1 \\right) = \\frac{4}{3}$. After another four months, we'll have $\\frac{4}{3} + \\left( \\frac{1}{3} \\cdot \\frac{4}{3} \\right) = \\frac{16}{9}$. By the end of the year we are left with $\\frac{16}{9} + \\left(\\frac{1}{3} \\cdot \\frac{16}{9} \\right) = \\frac{64}{27}$. Let's try to generalize this pattern, if it was compounded $n$ times in a given year with an interest rate $x$ and initial principle $1$.

$$
For\\ n = 2 \\\\
r = \\left( 1 + \\left(\\tfrac{x}{2} \\cdot 1 \\right)\\right) + \\left(\\tfrac{x}{2} \\cdot 1 \\right) \\\\
$$

We magically increase our returns if we just keep increasing the .

$$ e\\equiv \\lim_{n\\to\\infty} \\left( 1 + \\frac{1}{n}\\right)^n$$

Let us dissect this

### Exponential Function

Redefining the exponential function

## Putting the Pieces Together



Since the velocity vector always matches the multiplication rotation vector i, since derivative of $e^{i} = i \\cdot e^{i}$. Therefore, you are going around a circle of radius 1 unit at the speed equal to 1 unit per unit. So after $\\pi$ units, you arrive at position vector $(-1, 0)$ . So, $e^{i\\pi} = - 1$.

I want to make it clear that $a^{i \\cdot t}$ would still trace out a unit circle for a real number $a$, but $t$ would not map to the distance walked on the circle, and instead it would represent $\\ln e something$

## Euler's Formula

This is a little extra in case you're still reading this. Let's try to expand beyond

[^1]: MacTutor History of Mathematics: [The number e](www-history.mcs.st-and.ac.uk/HistTopics/e.html).
