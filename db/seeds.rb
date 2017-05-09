Film.delete_all
Genre.delete_all

g1 = Genre.create({name: "Horror"})
g2 = Genre.create({name: "Musical Horror"})
g3 = Genre.create({name: "Sci Fi"})

Film.create({title: "Alien", genre: g1})
Film.create({title: "Rocky Horror Picture Show", genre: g2})
Film.create({title: "Arrival", genre: g3})