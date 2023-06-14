// Function findInversionRegions(firstSequence, secondSequence):
//         sizeOfFirstSequence = size(firstSequence)
//         sizeOfSecondSequence = size(secondSequence)
//         longestInversionInFirst;
//         longestInversionInSecond;
        
//         For i = 0 to sizeOfFirstSequence - 1:
            
//             For j = i + 1 to sizeOfFirstSequence - 1:
                
//                 partOfSequence = firstSequence[i:j]
                
//                 complementPart = complement(partOfSequence)
                
//                 reversePart = reverse(complementPart)
                
//                 beginIndex = findIndexOfPart(secondSequence, reversePart)
                
//                 If beginIndex != -1:
//                     endIndex = beginIndex + j - i
    
//                     inversionRegionInFirst = firstSequence[i:j]
//                     inversionRegionInSecond = firstSequence[beginIndex:endIndex]
                    
//                     if (inversionRegionInFirst.length > longestInversionInFirst.length) {
//                         longestInversionInFirst = inversionRegionInFirst;
//                         longestInversionInSecond = inversionRegionInSecond;
//                     }
                
//         print(longestInversionInFirst, longestInversionInSecond)