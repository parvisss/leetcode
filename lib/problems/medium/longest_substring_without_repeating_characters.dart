import 'dart:math';

void main() {
  int length =
      LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring('');
  print(length);
}

class LongestSubstringWithoutRepeatingCharacters {
  String bank = '';
  List combitions = [];
  lengthOfLongestSubstring(String s) {
    if (s.length == 1) {
      return 1;
    }
    for (int i = 0; i < s.length; i++) {
      print(i);
      for (int j = i; j < s.length; j++) {
        if (!bank.contains(s[j])) {
          bank += s[j];
        } else if (bank.contains(s[j])) {
          combitions.add(bank.length);
          bank = '';
          print('break');
          break;
        }
      }
    }
    if (combitions.isNotEmpty) {
      int maxNum = combitions[0];
      for (var element in combitions) {
        maxNum = max(maxNum, element);
      }
      return maxNum;
    }
    return 0;
  }
}
