class Solution(object):
    def halvesAreAlike(self, s):
        """
        :type s: str
        :rtype: bool
        """
        vowel="aiueoAIUEO"
        count = 0
        
        l = 0
        r = len(s)-1
        while l < r:
            if s[l] in vowel:
                count += 1
            if s[r] in vowel:
                count -= 1
            l+=1
            r-=1
        return count==0
        