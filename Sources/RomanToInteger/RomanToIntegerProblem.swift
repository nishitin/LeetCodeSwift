class RomanToIntegerSolution {
    func romanToInt(_ s: String) -> Int {
        let dict: [Character: Int] = [
            "I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var result = 0
        
        // 前の値を格納する
        var prevValue = 0
        
        
        for char in s {
            if let value = dict[char] {
                if prevValue < value {
                    result += (value - 2 * prevValue)
                } else {
                    result += value
                }
                // 現在の値を次のループのために前の値として格納
                prevValue = value
            }
        }
        
        return result
    }
}
