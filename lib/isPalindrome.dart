
  bool isPalindrome(int x) {
    if (x < -1 * (1 << 31) || x > (1 << 31) - 1 && x<0) {
      return false;
    }
    String xx = x.toString();
    int a = 0;
    int b = xx.length-1;
    while(a<b){
      if(xx[a] != xx[b] ){
        return false;
      }
      a++;
      b--;

    }
    return true;
  }

void main(){
  print(isPalindrome(121));
  print(isPalindrome(-121));
  print(isPalindrome(10));
  print(isPalindrome(11511));
}