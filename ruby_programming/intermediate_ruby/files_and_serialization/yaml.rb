# learning the `yaml` library...

require 'yaml'

test_hash = {
  'thing1' => "hello",
  'thing2'=> "there",
  what: "third",
  about: "this"
}

my_serialized_thing = YAML::dump(test_hash)

puts my_serialized_thing

class Hotness
  def initialize(temp)
    @temp = temp
  end
end

bling = Hotness.new('on_fiya')

serialized_hotness = YAML::dump(bling)

puts serialized_hotness

new_file = File.open('the_bling.yaml', 'w+')

new_file.puts serialized_hotness
new_file.puts my_serialized_thing

new_file.close
