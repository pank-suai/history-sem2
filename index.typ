#import "lib/ilm.typ": *

#set text(lang: "ru")
#set math.equation(numbering: "1")

#show ref: it => {
  lower(it)
}

#show: ilm.with(
  title: [История],
  author: "Панков Василий <pank-su>",
  author-format: (author) => [
    #stack(dir: ltr)[#block(
        image("src/images/000_avatar.png", width: 3em, height: 3em),
        radius: 50%,
        clip: true,
      )][#h(1em)][#text(author, size: 1.6em)]
  ],
  date: datetime.today(),
  abstract: [Второй семестр ],
  table-of-contents: outline(depth: 2),
  external-link-circle: false,
)

#include "src/000_предпосылки_к_революции.typ"

#include "src/001_революция.typ"


#include "src/002_внутренняя_политика_сов.typ"

#include "src/003_внешняя_политика.typ"

#include "src/004_война.typ"

#include "src/005_послевоенное_время.typ"

#include "src/005_хрущёв.typ"

#include "src/006_брежнев.typ"

#include "src/007_80-90.typ"

#include "src/010_рф.typ"
/*
==============================================================================
                          Далее идут приложения
==============================================================================
*/

#set heading(numbering: (..nums) => {
  if nums.pos().len() == 1 {
    return "Приложение " + numbering("A.", ..nums)
  }
  return numbering("A.1.", ..nums)
})

#counter(heading).update(0)

