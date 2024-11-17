fn find[T : Compare](arr : Array[T], start : Int, end : Int, value : T) -> Int {
  for i = start; i < end; i = i + 1 {
    if arr[i] == value {
      return i
    }
  }
  end
}

fn count[T : Compare](arr : Array[T], start : Int, end : Int, value : T) -> Int {
  let mut cnt = 0
  for i = start; i < end; i = i + 1 {
    if arr[i] == value {
      cnt += 1
    }
  }
  cnt
}

/// |
/// 检查两个数组是否为排列。
///
/// # Example
/// ```
/// let a = [1, 2, 3, 4]
/// let b = [3, 1, 4, 2]
/// let result = is_permutation(a, b)
/// println(result) // 输出: true
/// ```
/// @alert unsafe "如果数组长度不一致，将返回 false。"
pub fn is_permutation[T : Compare](
  arr1 : Array[T],
  arr2 : Array[T],
  start1~ : Int = 0,
  end1~ : Int = arr1.length(),
  start2~ : Int = 0
) -> Bool {
  let mut first1 = start1
  let mut first2 = start2
  while first1 < end1 && arr1[first1] == arr2[first2] {
    first1 += 1
    first2 += 1
  }
  if first1 != end1 {
    let end2 = first2 + (end1 - first1)
    for i = first1; i < end1; i = i + 1 {
      if find(arr1, first1, i, arr1[i]) != i {
        continue
      }
      let m = count(arr2, first2, end2, arr1[i])
      if m == 0 || count(arr1, i, end1, arr1[i]) != m {
        return false
      }
    }
  }
  true
}

fn main {
  let a = [2, 1, 3, 4]
  let b = [3, 1, 4, 2]
  let result1 = is_permutation(a, b)
  let result2 = is_permutation(a, b, end1=3)
  println(result1) // 输出: true
  println(result2) // 输出: false
}
