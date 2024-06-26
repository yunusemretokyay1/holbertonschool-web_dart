void main(List<String> arguments) {
	num number = num.parse(arguments[0]);
	print('$number ${number > 0 ? 'is positive' : (number < 0 ? 'is negative' : 'is zero')}');
}