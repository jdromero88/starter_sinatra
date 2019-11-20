Band.destroy_all
Song.destroy_all
BandSong.destroy_all

band1 = Band.create(name: "Def Leppard", info: "amazing band")
band2 = Band.create(name: "The Doors", info: "great band")
band3 = Band.create(name: "Iron Maiden", info: "another great band")
band4 = Band.create(name: "Pink Floyd", info: "another great band")

song1 = Song.create(name: "Pour Some Sugar On Me", lyrics: "whatever", length: "" )
song2 = Song.create(name: "Rocket", lyrics: "probably rocket, or something like that", length: "you know, the time" )

song3 = Song.create(name: "Riders of The Storm", lyrics: "that sounds pretty dangerous", length: "you know, the time" )

song4 = Song.create(name: "People Are Strange", lyrics: "yeah, they are...", length: "you know, the time" )

song5 = Song.create(name: "Trooper", lyrics: "Thank you", length: "you know, the time" )

song6 = Song.create(name: "Hollow is Thy Name", lyrics: "My soul is hollow", length: "you know, the time" )

song7 = Song.create(name: "Another Brick in The wall: Part 1", lyrics: "build the wall", length: "you know, the time" )
song8 = Song.create(name: "Another Brick in The wall: Part 2", lyrics: "the wall is being built", length: "time!!!!!" )
song9 = Song.create(name: "Another Brick in The wall: Part 3", lyrics: "the wall is complete", length: "you know, the time." )

BandSong.create(band_id: band1.id, song_id: song1.id)
BandSong.create(band_id: band1.id, song_id: song2.id)
BandSong.create(band_id: band2.id, song_id: song3.id)
BandSong.create(band_id: band2.id, song_id: song4.id)
BandSong.create(band_id: band3.id, song_id: song5.id)
BandSong.create(band_id: band3.id, song_id: song6.id)
BandSong.create(band_id: band4.id, song_id: song7.id)
BandSong.create(band_id: band4.id, song_id: song8.id)
BandSong.create(band_id: band4.id, song_id: song9.id)
