def loadAero(fileName)
  return File.read(["./",fileName,".aero"].join(""))
end
