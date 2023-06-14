import 'dart:math';

class InversionAlgorithm {
  InversionAlgorithm._();
  //Verilen iki dizeyi alir ve inversion bolgelerini bulur.
  static void findInversionRegion(String firstSequence, String secondSequence) {
    String longestInversionInFirst = '';
    String longestInversionInSecond = '';

    int sizeOfFirstSequence = firstSequence.length;

    for (int i = 0; i < sizeOfFirstSequence - 1; i++) {
      for (int j = i + 1 + longestInversionInFirst.length;
          j < sizeOfFirstSequence - 1;
          j++) {
        String partOfSequence = firstSequence.substring(i, j);

        String reversePart = reverseWithComplement(partOfSequence);

        int beginIndex = findBeginningIndexOfPart(secondSequence, reversePart);

        if (beginIndex != -1) {
          int endIndex = beginIndex + j - i;

          String inversionRegionInFirst = firstSequence.substring(i, j);

          String inversionRegionInSecond =
              secondSequence.substring(beginIndex, endIndex);

          if (inversionRegionInFirst.length > longestInversionInFirst.length) {
            longestInversionInFirst = inversionRegionInFirst;
            longestInversionInSecond = inversionRegionInSecond;
          }
        } else {
          break;
        }
      }
    }
    print('In first sequence: $longestInversionInFirst');

    print('In second sequence: $longestInversionInSecond');
  }

  //Verilen dizeyi ve aranan parcayi alir ve aranan parcayi buldugu indexi dondurur.
  static int findBeginningIndexOfPart(String sequence, String part) {
    int sizeOfSequence = sequence.length;

    int sizeOfPart = part.length;
    //0123456789
    //ATATATAGCG   10
    //AGC          3

    for (var i = 0; i < (sizeOfSequence - sizeOfPart); i++) {
      String subSequence = sequence.substring(i, i + sizeOfPart);
      if (subSequence.contains(part)) {
        return i;
      }
    }

    return -1;
  }

  //Verilen dizeyi ters cevirir ve komplementini olusturur.
  static String reverseWithComplement(String sequence) {
    String reversePart = sequence;

    int sizeOfSequence = sequence.length;

    for (int i = 0; i < sizeOfSequence / 2; i++) {
      String leftSideString = complement(reversePart[i]);

      int rightSideIndex = sizeOfSequence - i - 1;

      reversePart = reversePart.replaceRange(
          i, i + 1, complement(reversePart[rightSideIndex]));

      reversePart = reversePart.replaceRange(
          rightSideIndex, rightSideIndex + 1, leftSideString);
    }

    return reversePart;
  }

  //Verilen karakterin komplementini olusturur.
  static String complement(String char) {
    String complementPart = '';

    switch (char) {
      case 'A':
        complementPart = 'T';
        break;
      case 'T':
        complementPart = 'A';
        break;
      case 'G':
        complementPart = 'C';
        break;
      case 'C':
        complementPart = 'G';
        break;
      default:
    }

    return complementPart;
  }

  //Bu fonksiyon test icin olusturulmustur.
  static String createRandomDna(int sizeOfSequence) {
    String sequence = '';
    for (var i = 0; i < sizeOfSequence; i++) {
      int random = Random().nextInt(4);
      switch (random) {
        case 0:
          sequence += 'A';
          break;
        case 1:
          sequence += 'T';
          break;
        case 2:
          sequence += 'G';
          break;
        case 3:
          sequence += 'C';
          break;
        default:
      }
    }
    return sequence;
  }
}
