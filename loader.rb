require "yaml"
def loader(name):
  return YAML.load(File.read(["./",name,".aero"].join("")))
end
