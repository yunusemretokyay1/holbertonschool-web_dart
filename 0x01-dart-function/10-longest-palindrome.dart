import '9-palindrome.dart';

String longestPalindrome(String s) {
    String? result = null;

    for (int start = 0; start < s.length; start++) {
        for (int end = start + 1; end <= s.length; end++) {
            String substring = s.substring(start, end);
            if (isPalindrome(substring) && substring.length > (result ?? '').length) {
                result = substring;
            }
        }
    }

    return result ?? 'none';
}