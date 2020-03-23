#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
       dateComponents.day = [day integerValue];
       dateComponents.month = [month integerValue];
       dateComponents.year = [year integerValue];

       NSCalendar *calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];

       NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
       dateFormatter.dateFormat = @"dd MMMM, EEEE";
       dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru_RU"];

       NSDate *dateString = [calendar dateFromComponents:dateComponents];

       BOOL isRealDate;
    NSString *result;
       if ([dateComponents isValidDateInCalendar:calendar]) {
           isRealDate = TRUE;
       } else {
           isRealDate = FALSE;
       }

       if (isRealDate) {
        result = [dateFormatter stringFromDate: dateString];
       } else {
        result = @"Такого дня не существует";
       }
    
//    NSString *inputDate = [NSString stringWithFormat:@"%@,%@,%@", day, month, year];
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
//     NSDate *date = [dateFormatter dateFromString:inputDate];
//    [dateFormatter setDateFormat:@"d MMMM, EEEE"];
//    NSString *result;
//    if ([dateFormatter stringFromDate:date] != nil) {
//        result = [dateFormatter stringFromDate:date];
//    } else {
//        result = @"Такого дня не существует";
//    }
    
    return result;
}

@end
