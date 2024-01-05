# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def middleNode(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        nodes = []
        while head:
            nodes.append(head)
            head = head.next
        middle = len(nodes)//2
        return nodes[middle]