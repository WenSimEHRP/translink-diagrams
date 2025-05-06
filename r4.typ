#import "mod.typ": *
#import "r4_data.typ": *
#set text(font: "MetaPro", features: ("lnum",), size: 12pt)
#set page(
  height: auto,
  width: auto,
  margin: (top: 4.3cm, bottom: 3.7cm, rest: 2cm),
  background: [#header_deco([R4 41st Ave to UBC]) #v(1fr) #footer_deco()],
)
#let stations = (
  "60162": (scale: 1, tracks: 2, name: "UBC Exchange"),
  "60383": (scale: 1, tracks: 2, name: "Southbound Wesbrook Mall @ Agronomy Rd"),
  "51882": (scale: 1, tracks: 2, name: "Westbound W 16 Ave @ Wesbrook Mall"),
  "60393": (scale: 1, tracks: 2, name: "Dunbar Loop @ Bay 7"),
  "50377": (scale: 1, tracks: 2, name: "Eastbound W 41 Ave @ Carnarvon St"),
  "60386": (scale: 1, tracks: 2, name: "Eastbound W 41 Ave @ East Blvd"),
  "50199": (scale: 1, tracks: 2, name: "Eastbound W 41 Ave @ Granville St"),
  "50804": (scale: 1, tracks: 2, name: "Eastbound W 41 Ave @ Oak St"),
  "60349": (scale: 1, tracks: 2, name: "Oakridge-41st Ave Station @ Bay 3"),
  "50253": (scale: 1, tracks: 2, name: "Eastbound E 41 Ave @ Main St"),
  "61503": (scale: 1, tracks: 2, name: "Eastbound E 41 Ave @ Fraser St"),
  "50649": (scale: 1, tracks: 2, name: "Eastbound E 41 Ave @ Knight St"),
  "51121": (scale: 1, tracks: 2, name: "Eastbound E 41 Ave @ Victoria Dr"),
  "51124": (scale: 1, tracks: 2, name: "Eastbound E 41 Ave @ Clarendon St"),
  "51128": (scale: 1, tracks: 2, name: "Eastbound E 41 Ave @ Rupert St"),
  "51636": (scale: 1, tracks: 3, name: "Northbound Joyce St @ Kingsway"),
  "51722": (scale: 1, name: "Joyce Station"),
)

#let settings = (
  track-space-scale: 1.5,
  track-scale: none,
  track-space-scale-mode: "uniform",
  train-coloring: auto,
  debug: false,
  show-label: false,
  stations: stations,
  trains: trains,
)

#paiagram(
  horizontal-scale: 4,
  beg: 5 * 3600,
  end: 24 * 3600,
  ..settings,
)
