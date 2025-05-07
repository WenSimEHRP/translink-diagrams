#let bgc = color.oklch(90%, 50%, 78deg)

#set page(
  width: 34cm * 1.618 + 24cm,
  height: 27cm,
  margin: 0cm,
  background: rect(
    width: 100%,
    height: 100%,
    fill: color.rgb("#00345F"),
  ),
)

#grid(
  columns: (34cm, 1fr), rows: 27cm, inset: 2.5cm,
  grid.cell(fill: bgc)[
    #set text(
      size: 3cm,
      font: "MetaPro", // https://online-fonts.com/fonts/metapro
      weight: 900,
      features: (
        "lnum",
      ),
    )
    #set par(leading: 1.2cm, spacing: 2.5cm)
    #set align(center)
    #box(
      width: 100%,
      height: 3cm,
      radius: .5cm,
      stroke: none,
      fill: black,
      align(
        center + horizon,
        text(fill: bgc, font: "Sarasa Gothic SC", size: 1.8cm)[
          FARE PAID ZONE
        ],
      ),
    )

    Failing to pay or using \
    the wrong fare can \
    result in a \$173 fine.

    #place(
      bottom + right,
      box(
        height: 4cm,
        width: 10cm,
        image("../translink.png"),
      ),
    )
  ],
  [
    #set text(
      size: 4cm,
      fill: white,
      font: "MetaPro",
      weight: 900,
      features: (
        "lnum",
      ),
    )
    #set align(left + horizon)
    Welcome to
    TransLink#super[#sym.copyright] Diagrams

    #place(
      bottom + right,
      text(size: 1.2cm)[This project is not affiliated with TransLink],
    )

  ]
)
