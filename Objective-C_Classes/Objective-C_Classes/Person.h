//
//  Person.h
//  Objective-C_Classes
//
//  Created by Pedro Rojas on 28/02/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

- (void)printHelloWithName:(NSString*)name;
- (void)printHelloWithFirstName:(NSString*)firstName AndLastName:(NSString*)lastName;
- (NSDictionary*)fetchWorldWideGreetingTo:(NSString*)firstName AndLastName:(NSString*)lastName;

@end

NS_ASSUME_NONNULL_END
