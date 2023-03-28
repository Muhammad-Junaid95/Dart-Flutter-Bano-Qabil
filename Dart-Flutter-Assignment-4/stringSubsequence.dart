//Create a list of strings and find the longest common subsequence (substring) among all the strings in the list.
void main() {
  List<String> names = [
    'Ghazi Khalid bin Waleed',
    'Eurtugrul Ghazi',
    'Abdul Rehman Ghazi',
    'Usman Ghazi'
  ];

  String longestCommonSubsequence = findLongestCommonSubsequence(names);
  print("Longest Common Subsequence: $longestCommonSubsequence");
}

String findLongestCommonSubsequence(List<String> names) {
  int namesLength = names.length;
  String startingName = names[0];
  int startingNameLength = startingName.length;

  for (int i = startingNameLength; i >= 1; i--) {
    for (int j = 0; j <= startingNameLength - i; j++) {
      String substring = startingName.substring(j, j + i);

      bool isCommonSubsequence = true;
      for (int k = 1; k < namesLength; k++) {
        if (!names[k].contains(substring)) {
          isCommonSubsequence = false;
          break;
        }
      }

      if (isCommonSubsequence) {
        return substring;
      }
    }
  }

  return '';
}
