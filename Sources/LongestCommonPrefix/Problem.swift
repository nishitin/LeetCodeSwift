import Foundation

class LongestCommonPrefixSolution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty else  { return "" }
        var prefix = strs[0]
        
        for str in strs {
            // print(str)
            while !str.hasPrefix(prefix) {
                print(str)
                prefix.removeLast()
                if prefix.isEmpty { return "" }
            }
        }
        return prefix //
    }
}
