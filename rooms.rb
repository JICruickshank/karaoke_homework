class Room

  attr_reader :name, :capacity
  attr_accessor :playlist, :present

  def initialize(name, playlist, capacity, present)

    @name = name
    @playlist = playlist
    @capacity = capacity
    @present = present

  end

  def add_person_to_room(person)

    if @present.length < capacity
      @present << person
      person.location = @name
    else
      return false
    end

  end

  def add_song_to_playlist(song)

    @playlist << song

  end

  def remove_song_from_playlist(song)

    @playlist.delete(song)

  end


end
