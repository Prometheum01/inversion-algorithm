import 'inversion.dart';

void main(List<String> args) {
  String firstSequence =
      'GCTAGGACCTTGATAGAACCATGCATGCATGCATGCAGTCTGGTCACTATGCCGTC';
  String secondSequence =
      'TACGTATCGGCGTTAGCGTAGCATGCATGCATGCATCGATGCCTAACGTTCTAAGC';

  InversionAlgorithm.findInversionRegion(firstSequence, secondSequence);
}
