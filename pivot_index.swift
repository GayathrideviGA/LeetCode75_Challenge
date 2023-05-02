class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
    var totalSum = 0
    var leftSum = 0
    
    for num in nums {
        totalSum += num
    } 
    for i in 0..<nums.count {
        if leftSum == totalSum - leftSum - nums[i] {
            return i
        }
        leftSum += nums[i]
    }  
    return -1
}
}

print(Solution().pivotIndex([1,7,3,6,5,6]))