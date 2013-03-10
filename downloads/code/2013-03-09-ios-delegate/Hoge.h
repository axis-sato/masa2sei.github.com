#import <UIKit/UIKit.h>


@protocol HogeDelegate
//Fugaクラスに実装するメソッド
- (void)hogeDelegateMethod;
@end

@interface Hoge : UIViewController
@property (weak,nonatomic) id <HogeDelegate> delegate
@end
