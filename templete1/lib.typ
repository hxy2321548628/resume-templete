#import "src/config.typ": *
#import "src/education.typ": *
#import "src/internship.typ": *
#import "src/skills.typ": *
#import "src/utils.typ": *


#let fa_phone = icon("../icons/fa-phone.svg")
#let fa_envelope = icon("../icons/fa-envelope.svg")
#let fa_work = icon("../icons/fa-work.svg")


#let resume(
  name: str,
  person_age: int,
  hometown: str,
  phone: str,
  mail: str,
  intrest: str,
  icon_path: str,
  desired_position: none,
  master-info: dictionary,
  bachelor-info: dictionary,
  body,
) = {
  // =================================================================
  // 页面设置
  // =================================================================
  set page(margin: (x: 1cm, y: 1.5cm))

  // 两端对齐
  set par(justify: true)
  show "|": text(gray, " | ")

  // =================================================================
  // 设置标题
  // =================================================================
  show heading.where(level: 1): it => text(..heading_font, it) + chiline

  // =================================================================
  // 设置字体
  // =================================================================
  set text(..normal_font)

  grid(
    columns: (1fr, auto),
    align(left + horizon)[
      #text(fill: rgb("#222222"), size: 20pt)[*#name*]
      // #v(5pt)

      #set text(rgb("#333333"))
      #all_icons.fa_age #person_age 岁 | #all_icons.fa_hometown #hometown 

      #all_icons.fa_github https://github.com/hxy2321548628


      #all_icons.fa_phone #phone |#all_icons.fa_envelope #mail | 可随时到岗
      // #all_icons.fa_phone #phone |#all_icons.fa_envelope #mail |#all_icons.intrest #intrest \

      #{
        if desired_position != none { [#fa_work Desired Position: #desired_position ] } else {}
      } |  27届应届毕业生 

    ],
    image(width: 70pt, icon_path),
  )

  set text(rgb("#444444"))

  heading(depth: 1)[#all_icons.fa_graduation_ca 教育背景]
  if master-info != none {
    show: education_item.with(..master-info)
  }
  show: education_item.with(..bachelor-info)

  body
}



