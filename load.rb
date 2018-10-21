require "yaml"

def loadAero(fileName)
  return YAML.load(File.read(["./",fileName,".aero"].join(""))
end
