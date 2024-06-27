String longestUniqueSubstring(String str) {
    int start = 0;
    int end = 0;
    final Set<int> chars = <int>{ };
    ({int start, int end}) resultRange = (start: start, end: end);

    while (start < str.length && end < str.length) {
        end++;
        final int endChar = str.codeUnitAt(end - 1);
        if (chars.contains(endChar)) {
            while (start < end) {
                int startChar = str.codeUnitAt(start);
                if (startChar == endChar) {
                    start++;
                    break;
                }
                // should have been there!!!
                chars.remove(startChar);
                start++;
            }   
        }
        chars.add(endChar);
        if (end - start > resultRange.end - resultRange.start) {
            resultRange = (start: start, end: end);
        }
    }
    return str.substring(resultRange.start, resultRange.end);
}