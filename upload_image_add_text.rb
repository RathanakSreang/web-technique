version :large do
  process :resize_and_pad => [900, 500, :transparent, "Center"]
  process :add_text
end

version :thumb do
  process :resize_and_pad => [400, 400, :transparent, "Center"]
  process :add_text
end

def add_text
  manipulate! do |image|
      # binding.pry
    image.combine_options do |c|
      c.gravity 'Center'
      c.pointsize '80'
      c.annotate('+0+0', "Visit Us at: Kimly")
      c.fill 'grey'
    end
    image
  end
end