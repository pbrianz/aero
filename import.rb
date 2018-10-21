# Import Module
# File Extension: .aero

require_relative "lexer"

def import(file)
  if file
    data = File.read("./" + file + ".aero")
    return lexer(data)
  end
end
