#import "config.typ": *

#let education_item(
  start: datetime,
  end: datetime,
  school: str,
  major: str,
  class: str,
  award: str,
  body,
) = {
  set text(..education_heading_font)
  grid(
    columns: (20%, 1fr, 30%),
    align: (left, center, right),
    [
      #start.display("[year].[month]") - #end.display("[year].[month]")
    ],
    [#school],
    [#major],
  )
  set text(..normal_font)

  [
    *核心课程：*#class

    *荣誉奖项：*#award
  ]

  body
}
