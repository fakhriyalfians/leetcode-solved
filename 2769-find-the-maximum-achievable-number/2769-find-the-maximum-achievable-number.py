class Solution:
    def theMaximumAchievableX(self, num: int, t: int) -> int:
        for i in range(1,t+1):
            num = num + t

            return (num + t)