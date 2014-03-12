class Character
  attr_reader :armor_class, :hit_points
  attr_accessor :name, :alignment
  ALLOWED_ALIGNMENTS = ["good", "evil", "neutral"]

  def initialize(name, alignment)
    raise ArgumentError if name.empty?
    @name = name
    
    raise ArgumentError unless ALLOWED_ALIGNMENTS.include?(alignment.downcase)
    @alignment = alignment.downcase.to_sym
  
    @armor_class = 10
    @hit_points = 5
  end
end
