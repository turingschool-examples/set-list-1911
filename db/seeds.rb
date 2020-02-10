
PlaylistSong.destroy_all
Playlist.destroy_all
Song.destroy_all
Artist.destroy_all

carly_rae = Artist.create(name: "Carly Rae")
spears = Artist.create(name: "Brittney Spears")
journey = Artist.create(name: "Journey")
billie = Artist.create(name: "Billie Eilish")

like_you = Song.create(title: "I Really Like You", length: 300, play_count: 1000, artist: carly_rae)
call_me = Song.create(title: "Call Me Maybe", length: 200, play_count: 3000, artist: carly_rae)
run_away = Song.create(title: "Run Away With Me", length: 100, play_count: 2000, artist: carly_rae)
party_for_one = Song.create(title: "Party For One", length: 50, play_count: 5000, artist: carly_rae)
toxic = Song.create(title: "Toxic", length: 1000, play_count: 300000, artist: spears)
dont_stop = Song.create(title: "Dont Stop Believin", length: 200, play_count: 40000, artist: journey)
wheel_in_sky = Song.create(title: "Wheel in the Sky", length: 300, play_count: 5000, artist: journey)

classics = Playlist.create(name: "Classics")
party = Playlist.create(name: "Party")

PlaylistSong.create(playlist: classics, song: wheel_in_sky)
PlaylistSong.create(playlist: classics, song: dont_stop)
PlaylistSong.create(playlist: classics, song: call_me)
PlaylistSong.create(playlist: party, song: call_me)
PlaylistSong.create(playlist: party, song: like_you)
PlaylistSong.create(playlist: party, song: party_for_one)
PlaylistSong.create(playlist: party, song: dont_stop)
