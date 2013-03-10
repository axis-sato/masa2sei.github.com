//UIbuttonの生成
UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//ボタンの表示位置とサイズの設定
btn.frame = CGRectMake(10, 10, 100, 30);
//ボタンのタイトル
[btn setTitle:@"ボタンのタイトル" forState:UIControlStateNormal];
//ボタンがタッチダウンされたときに呼び出されるメソッドを設定
[btn addTarget:self action:@selector(hoge:)
     forControlEvents:UIControlEventTouchDown];
//サブビューに追加
[self.view addSubview:btn];


//画像を指定したボタン
UIImage* img [UIImage imageNamed:@"hoge"];
UIButton *btn = [[UIButton alloc] itinitWithFrame:CGRectMake(10, 10, 100, 30)];
//背景に画像をセット
[btn setBackgroundImage:img forState:UIControlStateNormal];
[btn addTarget:self
        action:@selector(hoge:) forControlEvents:UIControlEventTouchUpInside];
//サブビューに追加
[self.view addSubview:btn];


// 呼ばれるhogeメソッド
-(void)hoge:(id)sender{
        // ここに何かの処理を記述する
}
