fn permutations(arr: Array[Int]) -> Array[Array[Int]] {
    if arr.length() == 0 {
        return [[]]
    }

    arr.iter().flat_map(
        fn(x: Int) {
            let res = arr.filter(fn { y => y != x })
            permutations(res).iter().map(fn { perm => [x] + perm })
        }
    ).collect()
}


fn main {
  let a = [1, 2, 3, 4]
  let c = permutations(a)
  println(c)
}
