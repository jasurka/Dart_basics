
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

  // Task 3
  List intFromString( String string ) {
    List<dynamic>? result = [];
    List<String> splitString = string.split('');
    splitString.forEach((element) {
      if ( ! element.contains( RegExp( r'[^0-9]' ) ) ) {
        result.add( element );
      }
    });
    return result;
  }

  // Task 4
  Map uniqueStringsCount() {
    List<String> sampleList = [ 'open','open', 'book', 'apple', 'apple', 'night', 'night', 'night' ];
    var result = Map();
    sampleList.forEach((element) {
      if ( ! result.containsKey( element ) ) {
        result[element] = 1;
      } else {
        result[element] += 1;
      }
    });
    return result;
  }

  // Task 5
  List wordToInt() {
    List<String> sampleList = ['one', 'four', 'cat', 'zero', 'three', 'three', 'night' ];
    Map zeroNine = {
      'zero': 0,
      'one': 1,
      'two': 2,
      'three': 3,
      'four': 4,
      'five': 5,
      'six': 6,
      'seven': 7,
      'eight': 8,
      'nine': 9
    };
    List result = [];
    sampleList.forEach( ( element ) {
      if ( zeroNine.keys.contains( element ) ) {
        result.add(zeroNine[element]);
      }
    });
    return result.toSet().toList();
  }
}