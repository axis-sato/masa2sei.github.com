#import "Fuga.h"

@interface Fuga ()

@end

@implementation Fuga

//初期化とともにHogeクラスのインスタンスを生成し、delegateプロパティに自身(Fugaクラスのインスタンス)を設定
-(id)init{
    if((self = [super init]) != nil){
        Hoge *hoge = [[Hoge alloc] init];
        hoge.delegate = self;
    }
    return self;
}

//Hogeクラスから呼び出されるデリゲートメソッド
- (void)hogeDelegateMethod
{
    NSLog(@"デリゲート");
}

@end
