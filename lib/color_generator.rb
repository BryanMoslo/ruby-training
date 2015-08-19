class ColorGenerator

  def self.generate_color(name = nil)
    if name
      result = ""
      name.downcase.each_byte do |c|
        result += c.to_s
      end

      color = result.to_i.to_s(16)[0..5]

      print "____________________________________ \n"
      print "   Name: #{name} \n"
      print "   Color: ##{result.to_i.to_s(16)[0..5]} \n"
      print "------------------------------------ \n"
      return "##{color}"
    else
      print "____________________________________ \n"
      print "   No Name \n"
      print "   Color: #000000 \n"
      print "------------------------------------ \n"
      return "#000000"
    end
  end
end
