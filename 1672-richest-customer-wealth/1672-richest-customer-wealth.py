class Solution(object):
    def maximumWealth(self, accounts):
        """
        :type accounts: List[List[int]]
        :rtype: int
        """
        maxWealth = 0
        for i in range(len(accounts)):
            totalWealth = sum(accounts[i])
            maxWealth = max(maxWealth, totalWealth)
        return maxWealth