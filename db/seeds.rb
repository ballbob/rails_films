Award.delete_all
Film.delete_all
Talent.delete_all
Genre.delete_all

g1 = Genre.create({name: "Horror"})
g2 = Genre.create({name: "Musical Horror"})
g3 = Genre.create({name: "Sci Fi"})

f1 = Film.create({title: "The Room", genre: g1})
f2 = Film.create({title: "Rocky Horror Picture Show", genre: g2})
f3 = Film.create({title: "Arrival", genre: g3})

t1 = Talent.create({name: "Greg Sistero", job: "Actor"})
t2 = Talent.create({name: "Susan Sarandon", job: "Actor"})
t3 = Talent.create({name: "Denis Villeneuve", job: "Director"})

Award.create({
  name: "Most patient actor",
  film: f1,
  talent: t1
  })

Award.create({
  name: "Most impressive and powerful time warping",
  film: f2,
  talent: t2,
  })