class Solution:
    def findArray(self, pref: List[int]) -> List[int]:
        n = len(pref)
        ans = [0] * n
        x = 0
        for i in range(n):
            ans[i] = x ^ pref[i]
            x ^= ans[i]
        return ans
