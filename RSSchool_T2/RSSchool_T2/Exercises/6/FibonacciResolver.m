#import "FibonacciResolver.h"

@implementation FibonacciResolver
- (NSArray*)productFibonacciSequenceFor:(NSNumber*)number {
    
    NSUInteger InputNumber = [number intValue];

    NSUInteger fibPrevious = 0;
    NSUInteger fibCurrent = 1;

    while (fibPrevious * fibCurrent < InputNumber) {
        NSUInteger fibSum = fibPrevious + fibCurrent;
        fibPrevious = fibCurrent;
        fibCurrent = fibSum;
    }

    NSArray *result = @[@(fibPrevious), @(fibCurrent), (fibPrevious * fibCurrent == InputNumber) ? @(1) : @(0)];

    return result;
    return @[];
}
@end
