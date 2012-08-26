require 'netflix/json_resource'

module Netflix
  class Disc < JsonResource
    define_getter :id, :updated, :release_year, :runtime
    
    def title
      @map["title"]["regular"]
    end
    
    def box_art
      @map["box_art"]["large"]
    end
  end
end
