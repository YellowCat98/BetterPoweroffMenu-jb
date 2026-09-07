#import <PVMenuViewController.h>
#import <PVMenuController.h>

@implementation PVMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    self.selected = [[UILabel alloc] init];
    self.selected.textColor = [UIColor labelColor];
    self.selected.font = [UIFont systemFontOfSize:18.0 weight:UIFontWeightMedium];
    self.selected.textAlignment = NSTextAlignmentCenter;

    self.selected.translatesAutoresizingMaskIntoConstraints = NO;

    [self.view addSubview:self.selected];

    [NSLayoutConstraint activateConstraints:@[
        [self.selected.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.selected.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor]
    ]];

    [self.controller changeSelected:Respring];
}

@end