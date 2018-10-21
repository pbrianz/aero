def string(data)
  return ((?<![\\])['"])((?:.(?!(?<![\\])\1))*.?)\1.match(data)
end
