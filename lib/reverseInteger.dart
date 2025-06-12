// LeetCode: 7. Reverse Integer
// https://leetcode.com/problems/reverse-integer/
// Solution by Sara Abu Kweik

int reverse(int x) {

    String xx = x.toString();
    String y = "";
    bool isNeg = false;
    if(xx[0] == "-"){
      isNeg = true ;
      xx = xx.substring(1);
    }
    for(int i = xx.length -1 ; i>=0 ; i--){
      y += xx[i];
    }
    int value = int.parse(y);
    if(isNeg == true){
      value = (value) * -1;
    }
    if (value < -1 * (1 << 31) || value > (1 << 31) - 1) {
      return 0;
    } else {
      return value;
    }

  }


void main(){
  print(reverse(123));
  print(reverse(-567));
  print(reverse(120));
  print(reverse(12345678905));

}