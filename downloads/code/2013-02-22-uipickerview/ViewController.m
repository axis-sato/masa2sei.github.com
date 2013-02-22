#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray* categoryArray;
}

@synthesize picker      = _picker;

- (void)viewDidLoad
{
    [super viewDidLoad];
	    
    // pickerdelegateの設定
    self.picker.delegate = self;
    
    //カテゴリを配列に
    categoryArray = [NSArray arrayWithObjects:
                     @"Ambient",
                     @"SoloAmbient",
                     @"Playback",
                     @"Record",
                     @"PlayAndRecord",
                     @"AudioProcessing", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// ピッカービューのコンポーネント（行）の数を返す *必須
- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

// 行数を返す例　*必須
- (NSInteger) pickerView: (UIPickerView*)pView numberOfRowsInComponent:(NSInteger) component {
    int cnt = [categoryArray count];
    return cnt;
}

// ピッカービューの行のタイトルを返す
- (NSString*)pickerView: (UIPickerView*) pView titleForRow:(NSInteger) row forComponent:(NSInteger)componet
{
    //0行目に配列の0番目の要素を設定
    return [categoryArray objectAtIndex:row];
}

//選択されたピッカービューを取得
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //0列目の選択している行番号を取得
    NSInteger selectedRow = [pickerView selectedRowInComponent:0];
    NSLog(@"%d", selectedRow);
}

@end
