void main() {
  List sum = TwoSum().twoSum([2, 7, 11, 15], 9);
  print(sum);
}

class TwoSum {
  List newList = [];
  int counter = 0;

  List<int> twoSum(List<int> nums, int target) {
    for (int i in nums) {
      newList.add([i, counter]);
      counter++;
    }
    for (var i = 0; i < newList.length - 1; i++) {
      for (var j = 1; j < newList.length; j++) {
        if (newList[i][0] + newList[j][0] == target &&
            newList[j][1] != newList[i][1]) {
          return [newList[i][1], newList[j][1]];
        }
      }
    }
    return [];
  }
}
