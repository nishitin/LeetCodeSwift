class TwoSumSolution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numMap: [Int: Int] = [:] // 数値をキーとして、そのインデックスを値として格納するDictionary
        for (i, num) in nums.enumerated() {
            if let complementIndex = numMap[target - num] {
                return [complementIndex, i]
            }
            numMap[num] = i
        }
        return []
    }
}
