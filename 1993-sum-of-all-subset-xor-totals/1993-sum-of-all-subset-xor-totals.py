class Solution:
    def subsetXORSum(self, nums: List[int]) -> int:
        subsets = [[]]
        for element in nums:
            subsets += [current + [element] for current in subsets]

        ans = 0
        for subset in subsets:
            xor_sum = 0
            for num in subset:
                xor_sum ^= num
            ans += xor_sum

        return ans
