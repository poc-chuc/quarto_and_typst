#set outline(title: "Table of contents")

#show: doc => article(
$if(title)$
  title: [$title$],
$endif$
$if(author)$
  author: "$author$",
$endif$
$if(revision)$
  revision: "$revision$",
$endif$
$if(revhist)$
  revhist: "$revhist$",
$endif$
$if(dco)$
  dco: "$dco$",
$endif$
$if(docnumber)$
  docnumber: "$docnumber$",
$endif$
$if(logo)$
  logo: [$logo$],
$endif$
$if(producto)$
  producto: "$producto$",
$endif$
$if(papersize)$
  paper: "$papersize$",
$endif$
$if(section-numbering)$
  sectionnumbering: "$section-numbering$",
$endif$
$if(toc)$
  toc: $toc$,
$endif$
$if(toc-title)$
  toc_title: [$toc-title$],
$endif$
$if(toc-indent)$
  toc_indent: $toc-indent$,
$endif$
  toc_depth: $toc-depth$,
  cols: $if(columns)$$columns$$else$1$endif$,
  doc,
)
