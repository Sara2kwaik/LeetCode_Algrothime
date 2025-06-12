/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */

// LeetCode: 2. Add Two Number
// Solution by Sara Abu Kwaik
class ListNode {
     int val;
     ListNode? next;
     ListNode([this.val = 0, this.next]);
   }

  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode? head = ListNode();
    ListNode? current = head ;
    ListNode? curr1 = l1;
    ListNode? curr2 = l2 ;
    int mode = 0 ;
    while(curr1 != null || curr2 != null){
      int x = curr1?.val ?? 0 ;
      int y = curr2?.val ?? 0 ;
      int sum = x + y + mode ;
      mode =( sum/10).toInt() ;
      current?.next = ListNode(sum%10);
      current = current?.next ;
      if(curr1 != null) curr1 = curr1.next ;
      if(curr2 != null) curr2 = curr2.next ;
    }
    if(mode > 0){
      current?.next = ListNode((mode).toInt());
    }
    return head.next ;
  }
void printList(ListNode? node) {
  while (node != null) {
    print(node.val);
    node = node.next;
  }
}
  void main(){
    ListNode l1 = ListNode(2);
    l1.next = ListNode(4);
    l1.next!.next = ListNode(3);


    ListNode l2 = ListNode(5);
    l2.next = ListNode(6);
    l2.next!.next = ListNode(4);

    ListNode? result = addTwoNumbers(l1, l2);
    printList(result);
  }
