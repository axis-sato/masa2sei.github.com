#import "Hoge.h"


@interface Hoge ()

@end

@implementation Hoge

- (void)viewDidLoad
{
    [super viewDidLoad];    
}


//onTapEventが実行されるたびにデリゲートメソッドを呼び出す
- (void)onTapEvent
{
    //Fugaクラスに実装してあるHogeDelegateMethodを呼び出す
    [self.delegate hogeDelegateMethod];
}

@end
