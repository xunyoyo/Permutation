fn reverse[T](arr: Array[T], start: Int, end: Int) -> Unit {
    let mut left = start
    let mut right = end
    while left < right {
        arr.swap(left, right)
        left += 1
        right -= 1
    }
}

/// |
/// 生成数组的下一个字典序排列。
///
/// # Example
/// ```
/// let a = [1, 2, 3]
/// let has_next = next_permutation(a)
/// println(a) // 输出: [1, 3, 2]
/// println(has_next) // 输出: true
/// ```
/// @alert unsafe "如果数组为空或只有一个元素，将返回 false。"
fn next_permutation(arr: Array[Int]) -> Bool {
    let n = arr.length()
    if n <= 1 {
        return false
    }

    let mut i = n - 2
    while i >= 0 && arr[i] >= arr[i + 1] {
        i -= 1
    }

    if i < 0 {
        reverse(arr, 0, n - 1)
        return false
    }

    let mut j = n - 1
    while arr[j] <= arr[i] {
        j -= 1
    }

    arr.swap(i, j)

    reverse(arr, i + 1, n - 1)

    return true
}

fn main {
    let a = [1, 2, 3, 4, 5]
    let factorial = 1 * 2 * 3 * 4 * 5
    for i = 0; i < factorial; i = i + 1 {
        println(a)
        if not(next_permutation(a)) {
            break
        }
    }
    println(a)
}