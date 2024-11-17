fn main {
  let arr1 = [1, 2, 3, 5]
  let arr2 = [2, 3, 5, 1]
  
  println("测试数组排列:")
  println("数组1: \{arr1}")
  println("数组2: \{arr2}")
  
  println("\n是否为排列: \{@is_permutation.is_permutation(arr1, arr2)}")
  
  println("\n获取下一个排列:")
  ignore(@next_permutation.next_permutation(arr1))
  println("结果: \{arr1}")
  
  println("\n获取上一个排列:")
  ignore(@prev_permutation.prev_permutation(arr1))
  println("结果: \{arr1}")
}