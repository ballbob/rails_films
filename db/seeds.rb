Film.delete_all
Talent.delete_all
Genre.delete_all

g1 = Genre.create({name: "Horror"})
g2 = Genre.create({name: "Musical Horror"})
g3 = Genre.create({name: "Sci Fi"})

Film.create({title: "The Room", genre: g1})
Film.create({title: "Rocky Horror Picture Show", genre: g2})
Film.create({title: "Arrival", genre: g3})

Talent.create({name: "Greg Sistero", job: "Actor"})
Talent.create({name: "Susan Sarandon", job: "Actor"})
Talent.create({name: "Denis Villeneuve", job: "Director"})