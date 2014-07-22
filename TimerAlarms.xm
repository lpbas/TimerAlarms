#import "TimerAlarms.h"

static NSDate *choosenTime;

%hook TimerViewController

- (void) viewDidLoad {
    if (!self.navigationItem.leftBarButtonItem) {
        NSLog(@"[TimerAlarms] Adding TimerAlarms add button to Timer view...");
        
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addButtonPressed:)];
    }
    %orig;
}

%new - (void)addButtonPressed:(id)sender {
    
    if ([sender isKindOfClass:[UIBarButtonItem class]]) {
        NSLog(@"[TimerAlarms] Detected add button press, showing add view...");
    } else {
    	return;
    }
    
    //Get the timePicker. Thanks to IRC user Jailpod on #theos IRC for his help
	/*
	TimerControlsView *timerControlsView = MSHookIvar <TimerControlsView *> (self, "_timerControlsView");
	UIDatePicker *timerPicker = MSHookIvar <UIDatePicker *> (timerControlsView, "_timePicker");
	*/
	//The 2 above lines replaced by: (thanks DHowett)
	UIDatePicker *timePicker = MSHookIvar<UIDatePicker *>(MSHookIvar<id>(self, "_timerControlsView"), "_timePicker");

    //Assign the choosen time
    NSTimeInterval timeInterval = timePicker.countDownDuration;
    choosenTime = [[NSDate date] dateByAddingTimeInterval:timeInterval];
    NSLog(@"[TimerAlarms] User pickicked time [%@], prompting add view...", choosenTime);

    //Show the add new alarm view of AlarmViewController
    [(AlarmViewController *)[[self.tabBarController.viewControllers objectAtIndex:1] topViewController] showAddView]; 

}

%end

%hook EditAlarmView

- (void)layoutSubviews {
    %orig();

    if (choosenTime) {
        // NSLog(@"[TimerAlarms] Setting addAlarm's datePicker to %@.", choosenTime);
        [self.timePicker setDate:choosenTime animated:NO];
        choosenTime = nil;
    }
}

%end
