#import <PVMenuViewController.h>
#import <PVMenuController.h>
#import <SpringBoard/SBUIController.h>

// it took me forever to find this function, the holy grail.
%hook SBLockHardwareButtonActions

- (void)_showPowerDownTransientOverlayOnForceReset {
	printf("[BetterPowerMenu] Combo hit, presenting view.\n");

	PVMenuViewController* privacyInvadingView = [[PVMenuViewController alloc] init];

	PVMenuController* privacyInvadingCTL = [[PVMenuController alloc] init];

	privacyInvadingView.controller = privacyInvadingCTL;
	privacyInvadingCTL.viewController = privacyInvadingView;

	SBUIController *uiController = [SBUIController sharedInstance];
	UIWindow *window = [uiController window];

	UIViewController *root = window.rootViewController; // fuck yeah!!!!

	[root presentViewController:privacyInvadingView animated:YES completion:nil];

	if (privacyInvadingCTL.selectedOption == 3) {
		privacyInvadingCTL.selectedOption = 0;
	} else {
		privacyInvadingCTL.selectedOption++;
	}
}

%end