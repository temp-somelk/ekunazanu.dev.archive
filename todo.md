- [ ] ~~Include openring~~ The added complexity is not worth it right now.
- [ ] ~~Paginate index and improve it. Maybe index and home page~~ Later, **if** I update the design of the entire site.

- [x] Logo
    - [x] 16px (blocky - only linear horizontal & vertical interpolation)
    - [x] Short logo (e) - decide on using either quadratic or cubic beziers. Maybe closest to quarter arc, but not necessarily, if control points are ugly decimals
    - [x] Long logo (ekunazanu) - Same as above
- [ ] Homepage animations (check comments in static/css/home)
- [ ] Custom font?
- [ ] Improve header
- [ ] Select a link hover design

- [ ] Graphs and Charts
    - [ ] Re-render all graphs and animations using one of:
        - [ ] Julia
        - [ ] GeoGebra
        - [ ] manim

- [ ] Move to MathML, eliminate JS
    - [x] ~~Check if Chrome can support MathML (not just MathMLCore)~~ displays as block element, but works good enough for most cases.
    - [ ] Figure out why Blink is not rendering math inline
    - [ ] Find a way to render Tex to MathML server-side
        - [ ] https://github.com/gohugoio/hugo/issues/10044
        - [ ] https://jeroen.dehaas.online/blog/hugo-pandoc-nix-mathml/
        - [ ] https://misha.brukman.net/blog/2022/04/writing-math-with-hugo/
- [ ] Improve footnotes (once [#7427](https://github.com/gohugoio/hugo/pull/7427) or [#5087](https://github.com/gohugoio/hugo/issues/5087) is merged)

- [ ] Add giscus (maybe? adds JS tho)

## Cleanup git history

Add in order:

- [ ] shortcodes
- [ ] \_default/\_markup/
- [ ] partials
- [ ] layouts
    - [ ] static/css
- [ ] archetypes
- [ ] config
- [ ] static/fonts
- [ ] static/icons
- [ ] static/misc + cname
- [ ] base content
    - [ ] blog index page: "Site under construction."
### "Test" branch -> "Content" branch
- [ ] content
    - [ ] blog index: old
    - [ ] articles
    - [ ] media
        - [ ] header images
