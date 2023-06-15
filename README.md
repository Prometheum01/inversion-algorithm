# Inversion Algorithm

Inversion algorithm to catch gene inversion states.

## Usage

```dart
import 'inversion.dart';

void main(List<String> args) {
  String firstSequence =
      'GCTAGGACCTTGATAGAACCATGCATGCATGCATGCAGTCTGGTCACTATGCCGTC';
  String secondSequence =
      'TACGTATCGGCGTTAGCGTAGCATGCATGCATGCATCGATGCCTAACGTTCTAAGC';

  InversionAlgorithm.findInversionRegion(firstSequence, secondSequence);
}

//Output
//In first sequence:  ATGCATGCATGCATGC
//In second sequence: GCATGCATGCATGCAT
```

## License

[MIT](https://choosealicense.com/licenses/mit/)
