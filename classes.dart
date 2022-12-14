
class NumbersCalculation {

  int? swap( int a, int b ) {
    int tmp = a;
    a = b;
    b = tmp;
  }
  


  // Task 1.1
  int gcd( int firstNumber, int secondNumber ) {
    while ( secondNumber != 0 ){
      var tmp = secondNumber;
      secondNumber = firstNumber % tmp;
      firstNumber = tmp;
    }
    return firstNumber;
  }



  // Task 1.2
  double lcm( int firstNumber, int secondNumber) {
    return firstNumber / gcd( firstNumber, secondNumber ) * secondNumber;
  }



  // Task 1.3
  List<int> simpleMultiplies( int value ) {
    List<int> primeFactors = [];
    int divider = 2;
    while ( value != 1 ) {
      if ( value % divider != 0 ){
        divider++;
        continue;
      }
      primeFactors.add( divider );
      value ~/= divider;
    }
    return primeFactors;
  }
  



  //Task 2
  int binaryToInt( List<int> numbers ){
    var result = 0;
    for ( var number in numbers ){
      result <<= 1;
      result |= number;
    }
    return result;
  }
}