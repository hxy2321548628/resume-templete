#import "config.typ": *


#let chiline = {
  v(-13pt)
  line(stroke: primary_color, length: 100%)
  v(-2pt)
}

#let dashline = {
  line(stroke: (paint: primary_color, thickness: 1pt, dash: ("dot", 2pt, 4pt, 2pt)), length: 100%)
}


#let icon(path, fill: rgb("#000000")) = box(
  // baseline: 0.125em,
  height: 0.7em,
  width: 1.25em,
  align(
    center + horizon,
    image(bytes(read(path).replace("path d", "path fill=\"" + fill.to-hex() + "\" d")), height: 1em),
  ),
)

// =================================================================
// 图标
// =================================================================
#let icon = icon.with(fill: primary_color)

// 设置图标, 来源: https://fontawesome.com/icons/

#let all_icons = (
  fa_github: icon("../icons/fa-github.svg"),
  
  fa_award: icon("../icons/fa-award.svg"),
  fa_building_column: icon("../icons/fa-building-columns.svg"),
  fa_code: icon("../icons/fa-code.svg"),
  fa_envelope: icon("../icons/fa-envelope.svg"),
  fa_graduation_ca: icon("../icons/fa-graduation-cap.svg"),
  fa_linux: icon("../icons/fa-linux.svg"),
  fa_phone: icon("../icons/fa-phone.svg"),
  fa_windows: icon("../icons/fa-windows.svg"),
  fa_wrench: icon("../icons/fa-wrench.svg"),
  fa_work: icon("../icons/fa-work.svg"),
  fa_age: icon("../icons/fa-age.svg"),
  fa_hometown: icon("../icons/fa-hometown.svg"),
  intrest: icon("../icons/intrest.svg"),
  language: icon("../icons/language.svg"),
)
