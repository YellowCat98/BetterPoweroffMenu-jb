#import <PVMenuViewController.h>
#import <SpringBoard/SBUIController.h>

// it took me forever to find this function, the holy grail.
%hook SBLockHardwareButtonActions

- (void)_showPowerDownTransientOverlayOnForceReset {
	printf("[iInvadePrivacy] FUCK YOUR SHUTDOWN\n");

	PVMenuViewController* privacyInvadingView = [[PVMenuViewController alloc] init];

	SBUIController *uiController = [SBUIController sharedInstance];
	UIWindow *window = [uiController window];

	UIViewController *root = window.rootViewController; // fuck yeah!!!!

	[root presentViewController:privacyInvadingView animated:YES completion:nil];
}

%end