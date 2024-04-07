class Solution:
    def triangleNumber(self, nums: List[int]) -> int:
        nums.sort()
        n = len(nums)
        ans = 0
        print('n',n)
        
        for k in range(2,n):
            print('k',k)
            i,j = 0,k-1
            while i < j :
                if nums[i]+nums[j]>nums[k]:
                    ans  +=(j-i)
                    j-=1
                else:
                    i+=1
        return ans