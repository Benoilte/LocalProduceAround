class Shop
  attr_reader :picture_url

  def initialize(id, name, height, weight, picture_url, types)
    @id = id
    @name = name
    @height = height
    @weight = weight
    @picture_url = picture_url
    @types = types
  end

  # def to_s
  #   # HEREDOC syntax
  #   <<~STR
  #   (#{@id}) #{@name}. It weights #{@weight.fdiv(10)}kg for \
  #   a height of #{@height / 10.0}m. Its types are: #{@types.join(', ')}.
  #   STR
  # end
end
