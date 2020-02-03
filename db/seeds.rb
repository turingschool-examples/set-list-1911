
Song.destroy_all
Artist.destroy_all

carly_rae = Artist.create(name: "Carly Rae")

Song.create(title: "I Really Like You", length: 300, play_count: 1000, artist: carly_rae)
Song.create(title: "Call Me Maybe", length: 200, play_count: 3000, artist: carly_rae)
Song.create(title: "Run Away With Me", length: 100, play_count: 2000, artist: carly_rae)
Song.create(title: "Party For One", length: 50, play_count: 5000, artist: carly_rae)
