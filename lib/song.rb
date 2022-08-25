class Song
    
    @@artists = []
    @@count =0
    @@genres =[]
    @@artist_count ={}
    #@@genre_count ={}
    
    attr_accessor :name, :artists, :genre
    def initialize(name, artist,genre)
        @name = name
        @artist=artist
        @genre =genre
        @@count +=1
        @@artists << artist
        @@genres << genre
      
    end
    
    def name
        @name
    end
    def artist
        @artist
    end
    def genre
        @genre
    end
    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq()
    end
    def self.genres
        @@genres.uniq()
    end
    def self.genre_count
        @@genres.group_by{|g| g}.map{|k, v| [k, v.length]}.to_h
            
    end
    def self.artist_count
        @@artists.group_by{|a| a}.map{|k, v| [k, v.length]}.to_h
    end
    
    
   
    
end    