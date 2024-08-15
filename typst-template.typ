#let article(
  author: none,
  revision: none,
  revhist: none,
  cols: 1,
  dco: none,
  producto: none,
  logo: none,
  margin: (x: 1.25in, y: 1.25in),
  paper: "us-letter",
  sectionnumbering: none,
  title: none,
  toc: false,
  toc_depth: none,
  toc_indent: 1.5em,
  toc_title: none,
  docnumber: none,
  doc,
) = {
  let myfont = ()
  let font-size = 11pt
  let title-font= "Linux Libertine"
  let body-font="Linux Libertine"
  set par(justify: true)
  set text(lang: "en",
           region: "US",
           font: "Linux Libertine",
           size: font-size,)
  let docnum-and-rev = docnumber + [ rev ] + revision

  line(length: 100%, stroke: 0.25pt,)
  align(center, text(font: title-font, 2em, weight: 700, [#docnum-and-rev]))
  align(center, text(1.1em, dco))

  v(2fr)
  line(length: 100%, stroke: 0.25pt,)

  // BODY OF DOCUMENT
  if cols == 1 {
    doc
  } else {
    columns(cols, doc)
  }
} // end of the full document function

//properties for all tablea
#set table(
  inset: 6pt,
  stroke: 0.25pt,
)
//#show regex("Software"): set text(green)
