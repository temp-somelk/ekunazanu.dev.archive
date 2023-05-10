## Long term

- [ ] ~~Include openring~~ The added complexity is not worth it right now.
- [ ] ~~Paginate index and improve it. Maybe index and home page~~ Later, **if** I update the design of the entire site.

- [ ] Graphs and Charts
    - [ ] Re-render all graphs and animations using one of:
        - [ ] Julia
        - [ ] GeoGebra
        - [ ] manim

- [ ] New category separate from blog (name it "Labs" maybe?) - High quality less frequent posts, design similar to [MIT Technology Review](https://www.technologyreview.com/). Use NimbusSansBold as an alternative to Helvetica.

- [ ] Move to MathML, eliminate JS
    - [x] ~~Check if Chrome can support MathML (not just MathMLCore)~~ displays as block element, but works good enough for most cases.
    - [ ] Figure out why Blink is not rendering math inline
    - [ ] Find a way to render Tex to MathML server-side
        - [ ] https://github.com/gohugoio/hugo/issues/10044
        - [ ] https://jeroen.dehaas.online/blog/hugo-pandoc-nix-mathml/
        - [ ] https://misha.brukman.net/blog/2022/04/writing-math-with-hugo/
- [ ] Improve footnotes (once [#7427](https://github.com/gohugoio/hugo/pull/7427) or [#5087](https://github.com/gohugoio/hugo/issues/5087) is merged)

- [ ] ~~Add giscus~~ No additional JS

## Now
- [x] Logo
    - [x] 16px (blocky - only linear horizontal & vertical interpolation)
    - [x] Short logo (e) - decide on using either quadratic or cubic beziers. Maybe closest to quarter arc, but not necessarily, if control points are ugly decimals
    - [x] Long logo (ekunazanu) - Same as above
- [x] Homepage animations (check comments in static/css/home)
- [x] ~~Custom font?~~ No, too much effort
- [x] Improve header
- [x] Select a link hover design
    - [x] Select accent color
- [ ] Use Sass instead of statics CSS
- [x] Image caption margins
- [ ] Safari img svg dark mode (header image)
    - [ ] Fix Safari SVG dark mode (use currentColor?)
- [ ] Go through code
    - [ ] Header
    - [ ] Footer
    - [ ] Figures
        - [ ] Captions
        - [ ] Images, SVGs
        - [ ] Tables
    - [ ] Code Block
    - [ ] Blockquotes
    - [ ] Headings
    - [ ] Lists
    - [ ] Paragraphs
    - [ ] Simplify end of page nav
    - [ ] Footers as shortcodes, instead of goldmark
        - [ ] https://discourse.gohugo.io/t/footnote-html-customization/40026
        - [ ] https://github.com/gj52/HugoSample/blob/master/themes/photon/layouts/shortcodes/footnotelist.html
        - [ ] https://github.com/gj52/HugoSample/blob/master/themes/photon/layouts/shortcodes/footnoteset.html
    - [ ] Unify css?
    - [ ] Add content to "About"

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
### "Test" branch -> "Content" branch
- [ ] content
    - [ ] articles
    - [ ] media
        - [ ] header images
