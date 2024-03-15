import Foundation

class PalindromeNumberSolution {
    func isPalindrome(_ x: Int) -> Bool {
        // 負の整数の場合と、10で割り切れる整数の場合は、回文にはならないためガード節で即Return
        // 0は除く
        if x < 0 || (x % 10 == 0 && x != 0) {
            return false
        }
        
        var num = x
        var reversedNum = 0
        
        while num > reversedNum {
            reversedNum = reversedNum * 10 + num % 10
            num /= 10
        }
        // 引数で受け取った値と、引数で受け取った値を反転して比較する
        return num == reversedNum || num == reversedNum / 10
    }
}
