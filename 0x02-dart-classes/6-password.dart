class Password {
    String _password = '';

    Password({ String password = '' }) {
        this._password = password;
    }

    String get password => _password;

    void set password(String newPassword) {
        _password = newPassword;
    }

    bool isValid() {
        if (_password.length <= 8 || _password.length >= 16)
            return false;

        int $A = 'A'.codeUnitAt(0);
        int $Z = 'Z'.codeUnitAt(0);
        int $a = 'a'.codeUnitAt(0);
        int $z = 'z'.codeUnitAt(0);
        int $0 = '0'.codeUnitAt(0);
        int $9 = '9'.codeUnitAt(0);

        bool containsUpper = false;
        bool containsLower = false;
        bool containsDigit = false;

        for (int codeUnit in _password.codeUnits) {
            if ($A <= codeUnit && codeUnit <= $Z)
                containsUpper = true;
            if ($a <= codeUnit && codeUnit <= $z)
                containsLower = true;
            if ($0 <= codeUnit && codeUnit <= $9)
                containsDigit = true;
        }

        return containsUpper && containsLower && containsDigit;
    }

    String toString() => 'Your Password is: $_password';
}
