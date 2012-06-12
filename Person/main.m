//
//  main.m
//  Person
//
//  Created by Michael Compas on 6/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PersonAppDelegate.h"
#import "Person.h"

int main(int argc, char *argv[])
{
	// create new instance of the Person class
	//
	Person *me = [[Person alloc] initWithName:@"mike" age:29];
	NSLog(@"Hi, my name is %@ and I am %d years old!", [me name], [me age]);
	
	//
	Person *random = [[Person alloc] initWithName:@"Random Dude" age:37];
	NSLog(@"Hi, my name is %@ and I am %d years old!", [random name], [random age]);
	
	
	//	create an instance of the Person class, but only with init
	//	since there is no explicit init function in Person, the return values for the the instance variables will most likely be blank or null
	Person *anon = [[Person alloc] init];
	NSLog(@"Anonymous's name and are are: %@ and %d.", [anon name], [anon age]);
	
	@autoreleasepool {
	    return UIApplicationMain(argc, argv, nil, NSStringFromClass([PersonAppDelegate class]));
	}
}
