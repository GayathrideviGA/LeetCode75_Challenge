func isIsomorphic(_ s: String, _ t: String) -> Bool {
    if s.count != t.count { 
        return false
    }
    
    var sToTMap = [Character: Character]() 
    
    for (sChar, tChar) in zip(s, t) {
        if let mappedChar = sToTMap[sChar] { 
            if mappedChar != tChar {
                return false
            }
        } else if sToTMap.values.contains(tChar) { 
            return false
        } else { 
            sToTMap[sChar] = tChar
        }
    }
    
    return true 
}

print(isIsomorphic("egg","add"))