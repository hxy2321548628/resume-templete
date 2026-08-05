#import "config.typ": *
#import "utils.typ": *

#let internship_item(
  start: datetime,
  end: datetime,
  company: str,
  project: str,
  job: str,
  github: str,
  // skills: array,
  body,
) = {
  set text(..internship_heading_font)

  if github != none {
    all_icons.fa_github
    link(github)
  }

  grid(
    columns: (30%, 1fr, 40%),
    align: (left, center, right),
    [
      #start.display("[year].[month]") - #end.display("[year].[month]")
    ],
    [#project],
    [#company #parbreak() #job],
  )
  set text(..normal_font)

  // if type(skills) == dictionary {
  //   let items = skills
  //     .pairs()
  //     .map(arr => {
  //       text(weight: "bold")[#arr.at(0)] + ": " + arr.at(1).reduce((acc, x) => acc + ", " + x)
  //     })
  //   [
  //     *技术栈*: #linebreak()
  //     #list(..items)
  //   ]
  // } else if type(skills) == array {
  //   [
  //     *技术栈*:#skills.reduce((acc, x) => acc + ", " + x)
  //     #parbreak()

  //   ]
  // }

  body
}
