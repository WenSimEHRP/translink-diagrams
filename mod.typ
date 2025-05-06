#import "@local/paiagram:0.1.0": paiagram
#set text(font: "MetaPro")
#let additional_info = [
  [Fast and Frequent Transit Network]
]
#let header_deco(info) = {
  grid(
    fill: color.rgb("#00345F"),
    columns: (2.3cm, 1fr),
    rows: 2.3cm,
    grid.cell(
      align: center + horizon,
      fill: color.rgb("#0081C9"),
    )[#box(height: 100%, width: 100%, image("translink.png"))],
    grid.cell(
      align: left + horizon,
      inset: .5cm,
    )[#text(
        fill: white,
        size: 1.2cm,
        weight: 600,
        features: ("lnum",),
      )[#info]],
  )
}

#let footer_deco() = rect(
  fill: color.rgb("#00345F"),
  width: 100%,
  height: 1.7cm,
  align(
    horizon + right,
    text(
      fill: white,
      size: 14pt,
      weight: 800,
    )[This is a fan project and is not affiliated with TransLink #h(1em)],
  ),
)

// usage: #set page(background: head_deco(17))
