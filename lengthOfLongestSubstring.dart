
  int lengthOfLongestSubstring(String s) {
    int maxLen = 0 ;
    Set<String> ss = {};
    int j = 0 ;
    for (int i = 0 ; i<s.length ; i++){
      while(ss.contains(s[i])){
        ss.remove(s[j]);
        j++;
      }
      ss.add(s[i]);
      if ((i - j + 1) > maxLen) {
        maxLen = i - j + 1;
      }

    }
    return maxLen;
  }
void main(){
  print(lengthOfLongestSubstring("abcabcbb"));
  print(lengthOfLongestSubstring("pwwkew"));
  print(lengthOfLongestSubstring("bbbbbb"));
  print(lengthOfLongestSubstring(""));

}