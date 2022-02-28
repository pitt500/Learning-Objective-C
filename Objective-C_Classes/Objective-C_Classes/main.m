//
//  main.m
//  Objective-C_Classes
//
//  Created by Pedro Rojas on 28/02/22.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [Person new];
        [person printHelloWithFirstName:@"Pitt" AndLastName:@"Rojas"];
        [person performSelector:@selector(printHelloWithName:) withObject:@"Pitt"];
        NSLog(@"%@", [person fetchWorldWideGreetingTo:@"Pitt" AndLastName:@"Rojas"]);
        [person performSelector:@selector(printHelloWithFirstName:AndLastName:) withObject:@"Pitt" withObject:@"Rojas"];
    }
    return 0;
}
