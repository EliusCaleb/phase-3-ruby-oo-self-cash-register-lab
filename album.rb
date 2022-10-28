class Album 

    GENRES = ["Hip-Hop", "Pop", "Jazz"]


    @@album_count = 0


    def initialize (genre)
        if GENRES.include?(genre)
           @@album_count+=1
        end
    end


   def self.count
       @@album_count
   end
end


puts Album::GENRES


 