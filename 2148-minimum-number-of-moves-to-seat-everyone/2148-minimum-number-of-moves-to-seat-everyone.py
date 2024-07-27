class Solution:
    def minMovesToSeat(self, seats: List[int], students: List[int]) -> int:
        seats.sort()
        print(seats)
        students.sort()
        print(students)
        res= 0
        for i in range(len(seats)):
            res += abs(students[i] - seats[i])
        return res