#let show_skills(skills_dict: dictionary) = {
  let items = skills_dict
    .pairs()
    .map(arr => {
      text(weight: "bold")[#arr.at(0)] + ": " + arr.at(1)
    })
  list(..items)
}
