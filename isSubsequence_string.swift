    func isSubsequence(_ s: String, _ t: String) -> Bool {
    var i = 0
    var j = 0
    
    while i < s.count && j < t.count {
        let sIndex = s.index(s.startIndex, offsetBy: i)
        let tIndex = t.index(t.startIndex, offsetBy: j)
        
        if s[sIndex] == t[tIndex] {
            i += 1
        }
        
        j += 1
    }
    
    return i == s.count
    }

    print(isSubsequence("abc","adbhic"))