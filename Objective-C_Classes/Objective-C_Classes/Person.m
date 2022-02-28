//
//  Person.m
//  Objective-C_Classes
//
//  Created by Pedro Rojas on 28/02/22.
//

#import "Person.h"

@implementation Person

- (void)printHelloWithName:(NSString*)name {
    NSLog(@"Hello %@!", name);
}

- (void)printHelloWithFirstName:(NSString *)firstName AndLastName:(NSString *)lastName {
    NSLog(@"Hello %@ %@!", firstName, lastName);
}


- (NSDictionary *)fetchWorldWideGreetingTo:(NSString *)firstName AndLastName:(NSString *)lastName {
    return  @{
        @"English": [NSString stringWithFormat:@"Hello %@ %@!", firstName, lastName],
        @"Spanish": [NSString stringWithFormat:@"Hola %@ %@!", firstName, lastName]
    };
}


@end
