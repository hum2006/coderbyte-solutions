def find_duplicate(nums):
    n = len(nums) - 1  
    expected_sum = n * (n + 1) // 2
    actual_sum = sum(nums)
    return actual_sum - expected_sum

# Example usage:
print(find_duplicate([1, 3, 4, 2, 2]))   
print(find_duplicate([3, 1, 3, 4, 2]))  
