class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        res = []
        for candie in candies:
            has = candie + extraCandies
            print(max(candies))
            if has >= max(candies):
                res.append(True)
            else:
                res.append(False)
        return res