https://www.algoexpert.io/questions/shift-linked-list

If the linked list only has one node
, then just return that node

Find the length of the linked list and assign it to length, let the sample be 6 for length

If k is positive, then get new_k = k 5% length
If k is negative, then new_k = length - ((-k)%length)

Have two pointers
One fast, one slow

Slow = head
Fast  = head

Set fast = (length - k -1) ahead of slow , which should be 3 for the sample

Temp = fast
Fast = fast.next
new_head = fast
While fast.next!= null:
	fast = fast.next

Fast.next = slow
Temp.next = None

Return new_head


# If the linked list only has one node
# , then just return that node
#
# Find the length of the linked list and assign it to length, let the sample be 6 for length
#
# If k is positive, then get new_k = k 5% length
# If k is negative, then new_k = length - ((-k)%length)
#
# Have two pointers
# One fast, one slow
#
# Slow = head
# Fast  = head
#
# Set fast = (length - k -1) ahead of slow , which should be 3 for the sample
#
# Temp = fast
# Fast = fast.next
# new_head = fast
# While fast.next!= null:
# 	fast = fast.next
#
# Fast.next = slow
# Temp.next = None
#
# Return new_head

class LinkedList:
    def __init__(self, value):
        self.value = value
        self.next = None


def shiftLinkedList(head, k):
    if not head.next:
        return head
    current = head
    length = 1
    while current.next:
        current = current.next
        length += 1

    new_k = None
    if k > 0:
        new_k = k % length
    else:
        new_k = length - ((-k)%length)
    if new_k == 0 or k == 0 or new_k % length == 0:
        return head

    fast = head
    slow = head
    print(slow.value)
    for x in range(length-new_k-1):
        fast = fast.next
    temp = fast
    fast = fast.next
    new_head = fast
    while fast.next:
        fast = fast.next
    fast.next = slow
    temp.next = None

    return new_head

    print(new_k)



a = LinkedList(0)
b = LinkedList(1)
c = LinkedList(2)
d = LinkedList(3)
e = LinkedList(4)
f = LinkedList(5)

a.next = b
b.next = c
c.next = d
d.next = e
e.next = f
f.next = None

print(shiftLinkedList(a, 6).next.next.next.next.next.next)
