#include <substrate.h>
#import <SpringBoard/SpringBoard.h>

%hook SpringBoard

- (void)applicationDidFinishLaunching:(UIApplication *)arg1{
	%orig();
	UIAlertController *alertController = 
		[UIAlertController alertControllerWithTitle:@"Hello"
					message:@"I'm Gary's iPhone X"
					preferredStyle:UIAlertControllerStyleAlert
			];
	[alertController addAction:
    		[UIAlertAction 	actionWithTitle:@"I know" 
    						style:UIAlertActionStyleDefault 
    						handler:^(UIAlertAction *action) {
    				[self.keyWindow.rootViewController 
    					dismissViewControllerAnimated:YES 
    					completion:NULL
					];
}]];

    [self.keyWindow.rootViewController presentViewController:alertController 
    	animated:YES completion:NULL];
}

%end