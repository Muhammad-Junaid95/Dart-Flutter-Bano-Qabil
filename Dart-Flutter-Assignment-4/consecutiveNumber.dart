//Create a list of integers and find the longest subsequence of consecutive numbers in the list.
void main(List<String> args) {
  List<int> number = [1, 2, 3, 8, 9, 10, 20, 21, 22, 23, 24, 25, 31, 32];

  int fullLength = 1;
  int currentLength = 1;

  int startingIndex = number[0];
  int endingIndex = number[0];

  for (var i = 1; i < number.length; i++) {
    if (number[i] == endingIndex + 1) {
      currentLength++;
      endingIndex = number[i];
    } else {
      if (currentLength > fullLength) {
        fullLength = currentLength;
        startingIndex = number[i - currentLength];
        endingIndex = number[i - 1];
      }

      currentLength = 1;
      startingIndex = number[i];
      endingIndex = number[i];
    }
  }

  if (currentLength > fullLength) {
    fullLength = currentLength;
    startingIndex = number[number.length - currentLength];
    endingIndex = number[number.length - 1];
  }

  List<int> longestSubsequence =
      List.generate(fullLength, (index) => startingIndex + index);

  print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
  print("Original List: $number");
  print("\nOriginal List Length = ${number.length}");
  print("\nLongest Subsequence: $longestSubsequence");
  print("\nLongest Subsequence List Lenght = ${longestSubsequence.length}");
  print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
}
