#import "../lib.typ": *



#let name = "黄翔阳"
#let person_age = 23
#let hometown = "广东佛山"
#let mail = "hxy2321548628@163.com"
#let phone = "17817909092"
#let icon_path = "examples/assest/hxy3.jpg"
#let desired_position = "AI Agent 开发工程师, AI 应用开发工程师"
#let intrest = "羽毛球、摄影、健身"
#let master-info = (
  start: datetime(year: 2024, month: 9, day: 1),
  end: datetime(year: 2027, month: 6, day: 1),
  school: "中南财经政法大学（211）",
  major: "金融工程（学硕）",
  class: "金融机器学习(98.2)、中级金融计量学(97.6)、金融创新与衍生品专题(96.5)等",
  award: "2025年校二等学业奖学金",
)
#let bachelor-info = (
  start: datetime(year: 2020, month: 9, day: 1),
  end: datetime(year: 2024, month: 6, day: 1),
  school: "汕头大学",
  major: "金融学（学士）",
  class: "金融数学(93)、数据结构与算法(90)等。",
  award: "第十三届“正大杯”国家级一等奖、第十三届“挑战杯”省级银奖、校一等学业奖学金、保研至中南财经政法大学。",
)

#show: resume.with(
  name: name,
  person_age: person_age,
  hometown: hometown,
  mail: mail,
  phone: phone,
  icon_path: icon_path,
  desired_position: desired_position,
  intrest: intrest,
  master-info: master-info,
  bachelor-info: bachelor-info,
)


// =================================================================
// 项目经历
// =================================================================
= #all_icons.fa_building_column 实习经历

#let rag-path = "component/rag-small.typ"

#import rag-path: info

#show: internship_item.with(..info)

#include rag-path



#dashline

#let react-agent-core-path = "component/k8s-data-analyse-small.typ"

#import react-agent-core-path: info

#show: internship_item.with(..info)

#include react-agent-core-path
