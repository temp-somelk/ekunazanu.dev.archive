+++
title = "Test"
date = 2020-02-22T00:01:05+05:30
type = 'blog'
css = ['base', 'banner', 'main', 'math']
categories = ['Mathematics', 'Computer Science']
katex = true
draft = true
+++

{{< note summary="Hidden note" >}}
This is an example collapsed note
{{< /note >}}

{{< note summary="Open note" open="true" >}}
This is an example open note
{{< /note >}}

Paragraph with inline math $f(x) = x^{2}$ $y_t = beta_0 + theta_1 x_t + epsilon_t$
$$e\equiv \lim_{n\to\infty} \biggl( 1 + \frac{1}{n} \biggr)^n = 2.71828$$

## Header2
Paragraph with a [link](linkaddress)

{{< img alt="dragons" caption="Some caption" lightsrc="https://cdn.pixabay.com/photo/2022/11/03/03/05/apples-7566512_960_720.jpg" darksrc="https://cdn.pixabay.com/photo/2021/12/29/08/18/insect-6900940_960_720.jpg" >}}

### Header3
Another paragraph with *emphasis* or **strong emphasis**. ```monospaced string or inline code```. Underline is not supported and discouraged, to reduce confusion with links. ~~Strikethrough~~ is supported though.

```
code block
with just
    some lines
    of
text
```

Another paragraph and a table below:

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

Text with sub{{< subscript "script" >}} and super{{< superscript "script" >}} texts.{{< citation name="Some journal" source="link" >}}

> Blockquote
> > Which is nested

An unordered list:

* Something
    * Something more
        * Something even more

And an ordered list:

1. Somthing else
2. This too
3. This three [testlink](/)
