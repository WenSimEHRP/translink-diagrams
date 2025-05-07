#let bgc = color.oklch(90%, 50%, 78deg)

#set page(
  width: 34cm,
  height: 27cm,
  background: rect(
    width: 100%,
    height: 100%,
    fill: bgc,
  ),
  margin: 2.5cm,
)

#set align(center)
#set text(
  size: 3cm,
  font: "MetaPro", // https://online-fonts.com/fonts/metapro
  weight: 900,
  features: (
    "lnum",
  ),
)
#set par(leading: 1.2cm, spacing: 2.5cm)

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
