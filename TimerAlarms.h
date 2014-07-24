#import <UIKit/UIKit.h>

@interface TimerViewController : UIViewController
@end

@interface TableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
- (void)showAddView;
@end

@interface AlarmViewController : TableViewController
- (void)reloadState;
- (int)numberOfItems;
@end

@interface EditAlarmView : UIView
@property(readonly, nonatomic) UIDatePicker *timePicker;
@end
