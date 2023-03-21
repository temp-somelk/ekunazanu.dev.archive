+++
title = "{{ replace .Name "-" " " | title }}"
indextitle = "{{ replace .Name "-" " " | title }}"
summary = "under 160 chars"
date = {{ .Date }}
type = "blog"
categories = [""]
tags = [""]
code = false
math = false
draft = true
+++

{{< img alt="{{ replace .Name `-` ` ` | title }}" lsrc="/media/{{ .File.BaseFileName }}/header.png" invert=true >}}

