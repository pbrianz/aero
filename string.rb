def string(data)
  return data.match("((?<![\\])['"])((?:.(?!(?<![\\])\1))*.?)\1")
end
