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
	
	// call the 'description' method from all previously instansiated classes
	NSLog(@"desc of me: %@", [me description]);
	NSLog(@"desc of random: %@", [random description]);
	NSLog(@"desc of anon: %@", [anon description]);
	
	// call the class method; not tied to any specific instance of the class
		// - trying to use an instance of the class in place of the class name itself (i.e.: 'me' instead of 'Person'), will result in an error
	NSLog(@"%@", [Person vitalOrgan:@"brain"]);
	
	[Person sleep];
	
	@autoreleasepool {
	    return UIApplicationMain(argc, argv, nil, NSStringFromClass([PersonAppDelegate class]));
	}
}
