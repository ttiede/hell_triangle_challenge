class TriangleHell
  def self.maximum_total(tree, index = 0)
    row = tree.shift

    max_index = row.length == 1 || row[index] >= row[index + 1] ? index : index + 1

    return row[max_index] if tree.empty?
    return row[max_index] + maximum_total(tree, max_index) unless tree.empty?
  rescue => e
    puts e.to_s
  end
end
