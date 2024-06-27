List<double> convertToF(List<double> temperaturesInC) {
    return temperaturesInC
        .map((temperature) => double.parse(
            (temperature * 9 / 5 + 32).toStringAsFixed(2),
        ))
        .toList();
}