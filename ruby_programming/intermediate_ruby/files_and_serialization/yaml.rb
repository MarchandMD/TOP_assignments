# learning the `yaml` library...

require 'yaml'

test_arr = [1, 2, 3, 4, 5]

my_serialized_thing = YAML::dump(test_arr)

puts my_serialized_thing

class Hotness
  def initialize(temp)
    @temp = temp
  end
end

bling = Hotness.new('on_fiya')

serialized_hotness = YAML::dump(bling)

puts serialized_hotness