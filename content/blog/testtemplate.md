+++
title = "Test"
indextitle = "Test: test"
pagedescription = "This is a test page not meant for publication"
date = 2020-02-22T00:01:05+05:30
type = "blog"
categories = ["Mathematics", "Computer Science"]
code = true
math = true
draft = true
+++

{{< note summary="Hidden note" >}}
This is an example collapsed note
{{< /note >}}

{{< note summary="Open note" open="true" >}}
This is an example open note
{{< /note >}}

Paragraph with inline math $f(x) = x^{2}$ $y_t = \\beta_0 + \\theta_1 x_t + \\epsilon_t$
$$and\\ block\\ math, e\\equiv \\lim_{n\\to\\infty} \\left( 1 + \\frac{1}{n}\\right)^n = 2.71828$$

## Header2
Paragraph with a [link](linkaddress)

{{< img alt="dragons" caption="Some caption" lsrc="https://cdn.pixabay.com/photo/2022/11/03/03/05/apples-7566512_960_720.jpg" dsrc="https://cdn.pixabay.com/photo/2021/12/29/08/18/insect-6900940_960_720.jpg" >}}

### Header3
Another paragraph with *emphasis* or **strong emphasis**. ```monospaced string or inline code```. Underline is not supported and discouraged, to reduce confusion with links. ~~Strikethrough~~ is supported though.

```
code block
with just
    some lines
    of
text
that is very longgggggggggggggggggggggggggggggggggggggggggggggggg
```

{{< img alt="dragon" lsrc="/media/test.webp" caption="test" >}}

Another paragraph and a table below:

{{< table >}}
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

{{< /table >}}

Also testing syntax highlight:

``` c
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

``` python
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

{{< table caption="Table caption" >}}
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
{{< /table >}}

## Header2

Text with sub{{< subscript "script" >}} and super{{< superscript "script" >}} texts {{< citation name="Some journal" source="link" >}}. Another paragraph with a footnote [^1]. And another one [^2]. Also, a third one [^3].

> Sinlequote

something

> Blockquote
> > Which is nested

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
[^3]: Third one with a [link](link) to something
[^4]: Fourth time's the charm
[^5]: Fifth one, just in case
