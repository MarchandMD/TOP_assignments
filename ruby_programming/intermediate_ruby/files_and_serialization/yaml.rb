# learning the `yaml` library...

require 'yaml'

test_hash = {
  'thing1' => "hello",
  'thing2'=> "there",
  what: "third",
  about: "this"
}

my_serialized_thing = YAML::dump(test_hash)

# puts my_serialized_thing

class Hotness

  attr_reader :temp
  def initialize(temp)
    @temp = temp
  end
end

bling_2 = Hotness.new('ice_cold')

serialized_hotness = YAML::dump(bling_2)

puts serialized_hotness

new_file = File.open('the_bling_2.yaml', 'w+')

new_file.puts serialized_hotness

new_file.close
