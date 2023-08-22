+++
title = "{{ replace .Name "-" " " | title }}"
indextitle = "{{ replace .Name "-" " " | title }}"
summary = "under 160 chars"
date = {{ .Date }}
type = "log"
categories = [""]
tags = [""]
math = false
draft = true
+++

![Image of {{ replace .Name "-" " " | title }}](/media/log/{{ .File.TranslationBaseName }}/header.png)
