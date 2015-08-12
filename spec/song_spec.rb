describe "Song" do

  it "can initialize a song" do
     expect(Song.new).to be_an_instance_of(Song)
  end

  it "can have a name" do
    song = Song.new
    song.name = "Jump Around"
    expect(song.name).to eq("Jump Around")
  end

# GO THROUGH THIS AND REALLY UNDERSTAND
# - YOU ARE STORING YOUR SONG CLASS IN YOUR GENRE CLASS
  it "can have a genre" do
     song = Song.new
     song.genre = Genre.new.tap { |instance| instance.name = "rap"}
     expect(song.genre.name).to eq("rap")
   end
# - SO TO PASS THE TEST YOU HAVE TO GO INTO GENRE CLASS

  it "has an artist" do
     song = Song.new
     song.artist = 'spice girls'
     expect(song.artist).to eq('spice girls')
  end
end
