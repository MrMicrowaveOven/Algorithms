# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  size = matrix.length
  new_matrix = Array.new(size) { Array.new }
  size.times do |i|
    matrix.reverse.each do |row|
      new_matrix[i].push(row[i])
    end
  end
  size.times do |i|
    size.times do |j|
      matrix[i][j] = new_matrix[i][j]
    end
  end
  matrix
end
