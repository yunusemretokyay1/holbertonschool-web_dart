void outer(String name, String id) {
    String inner() {
        var splitName = name.split(' ');
        var initial = splitName[1][0];
        var firstName = splitName[0];
        return 'Hello Agent $initial.$firstName your id is $id';
    }
    print(inner());
}