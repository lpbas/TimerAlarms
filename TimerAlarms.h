#import <UIKit/UIKit.h>

@interface TimerViewController : UIViewController
@end

@interface TableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
- (void)showAddView;
@end

@interface AlarmViewController : TableViewController
@end

@interface EditAlarmView : UIView
@property(readonly, nonatomic) UIDatePicker *timePicker;
@end

//Not needed thanks to MSHookIvar
/* 
@class TimerControlsView;

@interface TimerViewController : UIViewController
{
    TimerControlsView *_timerControlsView;
}
- (void)showAddView;
@end

@class UIDatePicker;

@interface TimerControlsView : UIView
{
    UIDatePicker *_timePicker;
}

@end
*/


// @interface AlarmView : UIView
// @end

// @interface AlarmTableViewCell : UITableViewCell
// @end


// @interface EditAlarmViewController
// - (id)initWithAlarm:(id)arg1;
// @end
