# Next Permutation

这是一个用Moonbit语言实现的`next_permutation`函数，用于生成数组的下一个字典序排列。

## 功能

`next_permutation`函数生成给定数组的下一个字典序排列。如果当前排列是最后一个排列，则返回`false`并将数组重新排列为第一个排列（升序）。

## 示例

```moonbit
fn main {
  let a = [1, 2, 3]
  let has_next = next_permutation(a)
  println(a) // 输出: [1, 3, 2]
  println(has_next) // 输出: true
}
```