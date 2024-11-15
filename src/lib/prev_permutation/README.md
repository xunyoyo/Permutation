# Prev Permutation

这是一个用Moonbit语言实现的`prev_permutation`函数，用于生成数组的上一个字典序排列。

## 功能

`prev_permutation`函数生成给定数组的上一个字典序排列。如果当前排列是第一个排列，则返回`false`并将数组重新排列为最后一个排列（降序）。

## 示例

```moonbit
fn main {
  let a = [1, 2, 3]
  let has_prev = prev_permutation(a)
  println(a) // 输出: [1, 2, 3]
  println(has_prev) // 输出: false
}