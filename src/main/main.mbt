fn main {
  let a = [1, 2, 3]
  let b = [2, 3, 1]

  let c = @is_permutation.is_permutation(a, b)
  let d = @next_permutation.next_permutation(a)
  print(a)
  let f = @prev_permutation.prev_permutation(a)
  print(a)
  println(@is_permutation.is_permutation(a, b))
}