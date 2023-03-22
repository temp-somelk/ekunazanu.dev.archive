- [x] Check ```index.xml``` & ```rss.xml```
- [x] ~~Include openring~~ maybe later once I actually follow a number of decent blogs
- [x] ~~Paginate and improve index~~ later **if** i update the design of the entire site

- [ ] Graphs and Charts
    - [ ] Check libraries for rendering math as SVG graphs and animations
    - [ ] Re-render all graphs and animations using one of:
        - [ ] Julia
        - [ ] GeoGebra
        - [ ] manim
    - [ ] ^ Set up templates and CSS for said SVGs

- [ ] Move to MathML to eliminate JS
    - [x] ~~Check if Chrome can support MathML (not just MathMLCore)~~ displays as block element, but works good enough for most cases.
    - [ ] Figure out why Blink is not rendering math inline
    - [ ] Find a way to render Tex to MathML server-side
        - [ ] https://github.com/gohugoio/hugo/issues/10044
        - [ ] https://jeroen.dehaas.online/blog/hugo-pandoc-nix-mathml/
        - [ ] https://misha.brukman.net/blog/2022/04/writing-math-with-hugo/
- [ ] Improve footnotes (once [#7427](https://github.com/gohugoio/hugo/pull/7427) or [#5087](https://github.com/gohugoio/hugo/issues/5087) is merged)
