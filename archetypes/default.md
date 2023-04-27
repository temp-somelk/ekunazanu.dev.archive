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

![Image of {{ replace .Name "-" " " | title }}](/media/{{ .File.TranslationBaseName }}/header.png)
