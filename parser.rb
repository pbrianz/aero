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
    if imported[data[key]] then
      importer(data[key],File.open(filename + ".aero"))
    else
      k = data[key]
      if k.Type then
        if k.Type.downcase == "class" then
          type = "Class"
        end
      end
    end
  end
end
