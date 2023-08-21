+++
title = "Test Template That Has Very Long Words SoThatItHasToWrap Around the Container"
indextitle = "Test: test"
summary = "This is a test page not meant for publication"
date = 2020-02-22T00:01:05+05:30
type = "lab"
categories = ["Mathematics", "Computer Science"]
tags = ["Test"]
math = true
draft = true
+++

{{< note summary="Hidden note" >}}
This is an example collapsed note
{{< /note >}}

{{< note summary="Open note" open="true" >}}
This is an example open note
{{< /note >}}

Paragraph with inline math $f(x) = x^{2}$ $y\_t = \\beta\_0 + \\theta\_1 x\_t + \\epsilon\_t$
$$and\\ block\\ math, e\\equiv \\lim\_{n\\to\\infty} \\left( 1 + \\frac{1}{n}\\right)^n = 2.71828$$

## Header2
Paragraph with a [link](linkaddress)

Huge fan of photos of [echevarrio.io](https://www.echevarria.io/).

{{< img alt="image of factory" lsrc="https://www.echevarria.io/img/photos/v1/01.jpg" dsrc="https://www.echevarria.io/img/photos/v1/04.jpg" >}}
![Traffic Lights](https://www.echevarria.io/img/photos/v1/02.jpg)
![Architecture](https://www.echevarria.io/img/photos/v1/05.jpg)
![Parking Lot](https://www.echevarria.io/img/photos/v1/08.jpg)
![Tree](https://www.echevarria.io/img/photos/v1/09.jpg)

### Header3
Another paragraph with *emphasis* or **strong emphasis**. ```monospaced string or inline code```. Underline is not supported and discouraged, to reduce confusion with links. ~~Strikethrough~~ is supported though.

{{< table caption="Some table" >}}
| left | right | center | YYYYY | gfdhcbfghrdcbvgfhdc | dghyh | ebhd |
|:-----|------:|:------:|-------|---------------------|-------|------|
|  1   |   a   |   1    |   1   |  ghelldfigffvbn     |  er   |  ww  |
|  2   |   a   |   1    | 11987 |  vgnbfhdrjcv b      |   q   | 222  |
|  3   |   a   |   1    | 23e4r | ftrhdejxncvbgfrhejs |   aa  |  rd  |
| 4    |   a   |   1    |  22   | fcngthrdjfcnv       |  aa   |  edr |
|  5   |   a   |   1    | 1215  |     gfyeh ftgrebd   |   a   | erf  |
|    6 |   a   |   1    | 2333  |   2w3erftg          |  aa   |  dfd |
|7     |   a   |   1    |  33   |   234 r 43edr 3ewd e|  a    |  vfc |
{{< /table >}}

```
code block
with just
    some lines
    of
text
that is very longgggggggggggggggggggggggggggggggggggggggggggggggg
```

This is some sample text again. I don't know what to say other than that this is tedious. Okay, maybe not, but at least this is a waste of time. At least on the bright side I get to practice my typing skills and frankly I am not surprised I'm this slow. Worse, I am making too many mistakes. Good thing my typing won't be a bottleneck. My brain will. Anyways I think this is enough text for a paragraph to check how images look between paragraphs.

![Cherry trees](https://www.echevarria.io/img/photos/v1/03.jpg "Cherry trees by the road")

This is some sample text again. I don't know what to say other than that this is tedious. Okay, maybe not, but at least this is a waste of time. At least on the bright side I get to practice my typing skills and frankly I am not surprised I'm this slow. Worse, I am making too many mistakes. Good thing my typing won't be a bottleneck. My brain will. Anyways I think this is enough text for a paragraph to check how images look between paragraphs.

Another paragraph and a table below:

{{< rawtable >}}
  <tr>
    <th>Partitions</th>
    <th>Windows Readable Partition</th>
    <th colspan="2"><b>LUKS Container</th>
    <th>BIOS Grub Partition</th>
    <th>UEFI Boot Partition</th>
  </tr>
  <tr>
    <th>gdisk hex</th>
    <td>0700</td>
    <td colspan="2">8300</td>
    <td>ef02</td>
    <td>ef00</td>
  </tr>
    <tr>
    <th rowspan="2">Block Device</td>
    <td>/dev/sdx1</td>
    <td colspan="2">/dev/sdx2</td>
    <td>/dev/sdx3</td>
    <td>/dev/sdx4</td>
  </tr>
    <tr>
    <td></td>
    <td>/dev/VolumeGroup/root</td>
    <td>/dev/VolumeGroup/home</td>
    <td colspan="2"></td>
  </tr>
    <tr>
    <th>File System</th>
    <td>FAT32/NTFS</td>
    <td>ext4</td>
    <td>ext4</td>
    <td>Unformatted</td>
    <td>FAT32</td>
  </tr>
    <tr>
    <th><b>Mountpoint</th>
    <td>Not Mounted</td>
    <td>/</td>
    <td>/home</td>
    <td>Not Mounted</td>
    <td>/boot</td>
  </tr>
  <tr>
    <th rowspan="2">Size</b></th>
    <td rowspan="2">As required</td>
    <td>At least 8GiB</td>
    <td>As required</td>
    <td rowspan="2">2MiB</td>
    <td rowspan="2">200MiB</td>
  </tr>
  <tr>
    <td colspan="2">(LUKS Container must accomodate size of both Logical volumes)</td>
  </tr>

{{< /rawtable >}}

Also testing syntax highlight:

```
int main(void){
    float num1;
    float num2;
    scanf("%f, %f", &num1, &num2);
    if (num1 > num2){
        printf("\033[31;1;4mThe first number is greater\033[0m");
    }
    else if (num2 > num1){
        printf("\033[32;1;4mThe second number is greater\033[0m");
    }
    else {
        printf("\033[34;1;4mBoth are equal\033[0m");
    }
    return 0;
}
```

Some other code too

``` {caption="foobar"}
#!/usr/bin/env python3
from fractions import Fraction
def solution(pegs):
    altDistanceSum = -pegs[0]
    for i in range(1, len(pegs) - 1):
        if i % 2 == 0:
            altDistanceSum -= 2 * pegs[i]
        else:
            altDistanceSum += 2 * pegs[i]
    if len(pegs) % 2 == 0:
        altDistanceSum += pegs[len(pegs) - 1]
        r0 = (2 * float(altDistanceSum))/3
    else:
        altDistanceSum -= pegs[len(pegs) - 1]
        r0 = 2 * float(altDistanceSum)
    r = r0
    for i in range(len(pegs) - 1):
        if r < 1:
            return [-1, -1]
        else:
            r = (pegs[i + 1] - pegs[i]) - r
    r0 = Fraction(r0).limit_denominator()
    return [r0.numerator, r0.denominator]
```

{{< rawtable caption="Table caption" >}}
    <thead>
        <tr>
            <th>Row/col header</th>
            <th>Row header</th>
            <th colspan="2">Row header spanning 2 cols</th>
        </tr>
    </thead>
    <tfoot>
        <tr>
            <th>Row/col footer</th>
            <th>Row footer</th>
            <th>Row footer</th>
            <th>Row footer</th>
        </tr>
        </tfoot>
    <tbody>
        <tr>
            <th>Col header</th>
            <td>cell</td>
            <td>cell</td>
            <td>cell</td>
        </tr>
        <tr>
            <th rowspan="2">Col header spanning 2 rows</th>
            <td>cell</td>
            <td>cell</td>
            <td>cell</td>
        </tr> 
        <tr>
            <td></td>
            <td> &lt;- empty cell</td>
            <td>cell</td>
        </tr>  
        <tr>
            <th>Col header</th>
            <td>cell</td>
            <td rowspan="2" colspan="2">Cell spanning two rows and cols</td>
        </tr>
        <tr>
            <th>Col header</th>
            <td>cell</td>
        </tr>
        <tr>
            <th>Col header</th>
            <td>cell</td>
            <td>cell</td>
            <td>cell</td>
        </tr>
    </tbody>
{{< /rawtable >}}

## Header2

Text with sub{{< subscript "script" >}} and super{{< superscript "script" >}} texts. Another paragraph with a footnote [^1]. And another one [^2]. Also, a third one [^3].

> Sinlequote
something

> Blockquote
> > Which is nested

Testing ```GoAT``` diagrams

``` goat
      .               .                .               .--- 1          .-- 1     / 1
     / \              |                |           .---+            .-+         +
    /   \         .---+---.         .--+--.        |   '--- 2      |   '-- 2   / \ 2
   +     +        |       |        |       |    ---+            ---+          +
  / \   / \     .-+-.   .-+-.     .+.     .+.      |   .--- 3      |   .-- 3   \ / 3
 /   \ /   \    |   |   |   |    |   |   |   |     '---+            '-+         +
 1   2 3   4    1   2   3   4    1   2   3   4         '--- 4          '-- 4     \ 4

       .-.           .-.           .-.           .-.           .-.           .-.
      |   |         |   |         |   |         |   |         |   |         |   |
   .---------.   .--+---+--.   .--+---+--.   .--|   |--.   .--+   +--.   .------|--.
  |           | |           | |   |   |   | |   |   |   | |           | |   |   |   |
   '---------'   '--+---+--'   '--+---+--'   '--|   |--'   '--+   +--'   '--|------'
      |   |         |   |         |   |         |   |         |   |         |   |
       '-'           '-'           '-'           '-'           '-'           '-'

                ________                            o        *          *   .--------------.
   *---+--.    |        |     o   o      |         ^          \        /   |  .----------.  |
       |   |    '--*   -+-    |   |      v        /            \      /    | |  <------.  | |
       |    '----->       .---(---'  --->*<---   /      .+->*<--o----'     | |          | | |
   <--'  ^  ^             |   |                 |      | |  ^    \         |  '--------'  | |
          \/        *-----'   o     |<----->|   '-----'  |__|     v         '------------'  |
          /\                                                               *---------------'

   o--o    *--o     /  /   *  o  o o o o   * * * *   o o o o   * * * *      o o o o   * * * *
   o--*    *--*    v  v   ^  ^   | | | |   | | | |    \ \ \ \   \ \ \ \    / / / /   / / / /
   o-->    *-->   *  o   /  /    o * v '   o * v '     o * v \   o * v \  o * v /   o * v /
   o---    *---
                                 ^ ^ ^ ^   . . . .   ^ ^ ^ ^   \ \ \ \      ^ ^ ^ ^   / / / /
   |  |   *  o  \  \   *  o      | | | |   | | | |    \ \ \ \   \ \ \ \    / / / /   / / / /
   v  v   ^  ^   v  v   ^  ^     o * v '   o * v '     o * v \   o * v \  o * v /   o * v /
   *  o   |  |    *  o   \  \

   <--o   <--*   <-->   <---      ---o   ---*   --->   ----      *<--   o<--   -->o   -->*

  o o o o o  * * * * *  * * o o *    o o o      * * *      o o o     · * · · ·     · · ·
  o o o o o  * * * * *  o o o o *   o o o o    * * * *    * o * *    · * * · ·    · · · ·
  o o o o o  * * * * *  o * o o o  o o o o o  * * * * *  o o o o o   · o · · o   · · * * ·
  o o o o o  * * * * *  o * o o o   o o o o    * * * *    o * o o    · · · · o    · · * ·
  o o o o o  * * * * *  * * * * o    o o o      * * *      o * o     · · · · ·     · · *

       ___     ___      .---+---+---+---+---.     .---+---+---+---.  .---.   .---.
   ___/   \___/   \     |   |   |   |   |   |    / \ / \ / \ / \ /   |   +---+   |
  /   \___/   \___/     +---+---+---+---+---+   +---+---+---+---+    +---+   +---+
  \___/ b \___/   \     |   |   | b |   |   |    \ / \a/ \b/ \ / \   |   +---+   |
  / a \___/   \___/     +---+---+---+---+---+     +---+---+---+---+  +---+ b +---+
  \___/   \___/   \     |   | a |   |   |   |    / \ / \ / \ / \ /   | a +---+   |
      \___/   \___/     '---+---+---+---+---'   '---+---+---+---'    '---'   '---'

   .---.       .-.        .-.       .-.                                       .-.
   | A +----->| 1 +<---->| 2 |<----+ 4 +------------------.                  | 8 |
   '---'       '-'        '+'       '-'                    |                  '-'
                           |         ^                     |                   ^
                           v         |                     v                   |
                          .-.      .-+-.        .-.      .-+-.      .-.       .+.       .---.
                         | 3 +---->| B |<----->| 5 +---->| C +---->| 6 +---->| 7 |<---->| D |
                          '-'      '---'        '-'      '---'      '-'       '-'       '---'

+-------------------+                           ^                      .---.
|    A Box          |__.--.__    __.-->         |      .-.             |   |
|                   |        '--'               v     | * |<---        |   |
+-------------------+                                  '-'             |   |
                       Round                                       *---(-. |
  .-----------------.  .-------.    .----------.         .-------.     | | |
 |   Mixed Rounded  | |         |  / Diagonals  \        |   |   |     | | |
 | & Square Corners |  '--. .--'  /              \       |---+---|     '-)-'       .--------.
 '--+------------+-'  .--. |     '-------+--------'      |   |   |       |        / Search /
    |            |   |    | '---.        |               '-------'       |       '-+------'
    |<---------->|   |    |      |       v                Interior                 |     ^
    '           <---'      '----'   .-----------.              ---.     .---       v     |
 .------------------.  Diag line    | .-------. +---.              \   /           .     |
 |   if (a > b)     +---.      .--->| |       | |    | Curved line  \ /           / \    |
 |   obj->fcn()     |    \    /     | '-------' |<--'                +           /   \   |
 '------------------'     '--'      '--+--------'      .--. .--.     |  .-.     +Done?+-'
    .---+-----.                        |   ^           |\ | | /|  .--+ |   |     \   /
    |   |     | Join        \|/        |   | Curved    | \| |/ | |    \    |      \ /
    |   |     +---->  o    --o--        '-'  Vertical  '--' '--'  '--  '--'        +  .---.
 <--+---+-----'       |     /|\                                                    |  | 3 |
                      v                             not:line    'quotes'        .-'   '---'
  .-.             .---+--------.            /            A || B   *bold*       |        ^
 |   |           |   Not a dot  |      <---+---<--    A dash--is not a line    v        |
  '-'             '---------+--'          /           Nor/is this.            ---

```

``` goat
                                      .-.                           .--------.
                                   .-+   |                         |          |
                               .--+       '--.                     |'--------'|
                              |  Server Cloud |<------------------>| Database |
                               '-------------'                     |          |
                                   ^      ^                         '--------'
                    Internet       |      |                              ^
          .------------------------'      '-------------.                |
          |                                             |                v
          v                                             v              .--------.       .------.
     .--------.      WiFi     .--------.  Bluetooth  .-----.          /        /|      / #  # /|
     |        |<------------->|        |<---------->|       |        +--------+/| LAN +------+/|
     |Windows |               |  OS X  |            |  iOS  |        |        +/|<--->|      +/|
     +--------+               +--------+            |       |        | Ubuntu +/|     |Ubuntu+/|
    /// ____ \\\             /// ____ \\\           |   o   |        |        +/      |      +/
   '------------'           '------------'           '-----'         '--------'       '------'
      Laptop 1                 Laptop 2              Tablet 1         Dedicated Server Rack

```

``` goat {caption="High Level Model"}

                .-----.
Plain Text ---->+ AES +---> Cipher Text
                '--+--'
                   ^
                   |
                  Key
```

``` goat
                                                                             *
    0       3                          P *              Eye /         ^     /
     *-------*      +y                    \                +)          \   /  Reflection
  1 /|    2 /|       ^                     \                \           \ v
   *-+-----* |       |                v0    \       v3           --------*--------
   | |4    | |7      |                  *----\-----*
   | *-----+-*       +-----> +x        /      v X   \          .-.<--------        o
   |/      |/       /                 /        o     \        ( / ) Refraction    / \
   *-------*       v                 /                \        '-'               /   \
  5       6      +z              v1 *------------------* v2    |                o-----o
                                                               v
```

``` goat {caption="Block"}
        .----+----.   .----.
        | A1 | A2 | ⋯ | Aj | <--- Basis
        +----+----+   +----+
        | 16 |  4 | ⋯ |  9 |
     .- +----+----+   +----+
     |  |  1 | -2 | ⋯ | 10 |
  x -+  +----+----+   +----+
     |  |  8 | 52 | ⋯ |  0 |
     '- +----+----+   +----+
        | 14 |  0 | ⋯ | -1 |
        '----+----'   '----'
```

[External site](https://ivanceras.github.io/svgbob-editor) for converting ASCII to SVG, since circle fill is hard-coded to ```#fff``` in GoAT. Use this (external images) most of the time, keeps main html page organized. Use GoAT mostly/only for testing and prototyping.

![mojave](https://www.echevarria.io/img/photos/v1/12.jpg)

An unordered list:

* Something
    * Something more [^4]
        * Something even more

And an ordered list:

1. Somthing else
2. This too
3. This three [testlink](/)

Some random words [^5]. And some other random words, to pad out this paragraph. It's not enough text so adding more here. I guess this is enough. Okay it's not, so here I am adding more. It's repetitive, but it is what is is. Okay maybe this is enough. Yeah it is. And then something here to end the article.

[^1]: Test footnote
[^2]: Another test
[^3]: Third one with an [external link](https://link) to something
[^4]: Fourth time's the charm
[^5]: Fifth one, just in case
