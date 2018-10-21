require_relative "importer"
require_relative "loader"

imported = {}

def parse(filename)
  data = loader(filename)
  str = ""
  if data["imports"]
    for import in data["imports"] do
      imported[import] = import
    end
  else
    print("No imports defined.  Skipping.")
  end
  for key in data.keys do
    type = "Class"
    k = data[key]
    if k.Type then
      if k.Type.downcase == "class" then
        type = "class"
      elsif k.Type.downcase == "object" then
        type = "object"
      elsif k.Type.downcase == "id" then
        type = "id"
      end
    end
  end
end
