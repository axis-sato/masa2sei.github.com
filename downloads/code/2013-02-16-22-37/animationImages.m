//アニメーションの素材
UIImage* img0 = [UIImage imageNamed:@"img0"];
UIImage* img1 = [UIImage imageNamed:@"img1"];
UIImage* img2 = [UIImage imageNamed:@"img2"];
NSArray* imgArray  = [NSArray arrayWithObjects:img0, img1, img2, nil];

//アニメーションのコマの設定
UIImageView.animationImages = imgArray;
//アニメーションのリピート回数の設定（０は無限ループ）
UIImageView.animationRepeatCount = 0;
//コマの切り替わる時間の設定
UIImageView.animationDuration = 2.0;


//アニメーションの再生
[UIImageView startAnimating]
//アニメーションの停止
[UIImageView stopAnimating]
