#!/usr/bin/env sh

cat "./partials/colors.css" | tee "./home.other.css" > /dev/null
cat "./partials/root.css" | tee -a "./home.other.css" > /dev/null
cat "./partials/home.css" | tee -a "./home.other.css" > /dev/null

cat "./partials/colors.css" | tee "./section.log.css" "./section.lab.css" "./taxonomy.categories.css" "./taxonomy.tags.css" "./term.categories.css" "./term.tags.css" > /dev/null
cat "./partials/root.css" | tee -a "./section.log.css" "./section.lab.css" "./taxonomy.categories.css" "./taxonomy.tags.css" "./term.categories.css" "./term.tags.css" > /dev/null
cat "./partials/header.css" |  tee -a "./section.log.css" "./section.lab.css" "./taxonomy.categories.css" "./taxonomy.tags.css" "./term.categories.css" "./term.tags.css" > /dev/null
cat "./partials/footer.css" | tee -a "./section.log.css" "./section.lab.css" "./taxonomy.categories.css" "./taxonomy.tags.css" "./term.categories.css" "./term.tags.css" > /dev/null
cat "./partials/indices.css" | tee -a "./section.log.css" "./section.lab.css" "./taxonomy.categories.css" "./taxonomy.tags.css" "./term.categories.css" "./term.tags.css" > /dev/null

cat "./partials/colors.css" | tee "./404.page.css" > /dev/null
cat "./partials/root.css" | tee -a "./404.page.css" > /dev/null
cat "./partials/header.css" | tee -a "./404.page.css" > /dev/null
cat "./partials/footer.css" | tee -a "./404.page.css" > /dev/null

cat "./partials/colors.css" | tee "./page.other.css" > /dev/null
cat "./partials/root.css" | tee -a "./page.other.css" > /dev/null
cat "./partials/header.css" | tee -a "./page.other.css" > /dev/null
cat "./partials/footer.css" | tee -a "./page.other.css" > /dev/null
cat "./partials/base.css" | tee -a "./page.other.css" > /dev/null
cat "./partials/figures.css" | tee -a "./page.other.css" > /dev/null

cat "./partials/colors.css" | tee "./page.log.css" > /dev/null
cat "./partials/root.css" | tee -a "./page.log.css" > /dev/null
cat "./partials/header.css" | tee -a "./page.log.css" > /dev/null
cat "./partials/footer.css" | tee -a "./page.log.css" > /dev/null
cat "./partials/base.css" | tee -a "./page.log.css" > /dev/null
cat "./partials/figures.css" | tee -a "./page.log.css" > /dev/null
cat "./partials/code.css" | tee -a "./page.log.css" > /dev/null
cat "./partials/nav.css" | tee -a "./page.log.css" > /dev/null
cat "./partials/quotes.css" | tee -a "./page.log.css" > /dev/null
cat "./partials/details.css" | tee -a "./page.log.css" > /dev/null
cat "./partials/footnotes.css" | tee -a "./page.log.css" > /dev/null

cat "./partials/colors.css" | tee "./page.lab.css" > /dev/null
cat "./partials/root.css" | tee -a "./page.lab.css" > /dev/null
cat "./partials/header.css" | tee -a "./page.lab.css" > /dev/null
cat "./partials/footer.css" | tee -a "./page.lab.css" > /dev/null
cat "./partials/base.css" | tee -a "./page.lab.css" > /dev/null
cat "./partials/figures.css" | tee -a "./page.lab.css" > /dev/null
cat "./partials/code.css" | tee -a "./page.lab.css" > /dev/null
cat "./partials/nav.css" | tee -a "./page.lab.css" > /dev/null
cat "./partials/quotes.css" | tee -a "./page.lab.css" > /dev/null
cat "./partials/details.css" | tee -a "./page.lab.css" > /dev/null
cat "./partials/footnotes.css" | tee -a "./page.lab.css" > /dev/null
