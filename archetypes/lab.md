+++
title = "{{ replace .Name "-" " " | title }}"
indextitle = "{{ replace .Name "-" " " | title }}"
summary = "under 160 chars"
date = {{ .Date }}
type = "lab"
categories = [""]
tags = [""]
math = false
draft = true
+++

![Image of {{ replace .Name "-" " " | title }}](/media/lab/{{ .File.TranslationBaseName }}/header.png)
