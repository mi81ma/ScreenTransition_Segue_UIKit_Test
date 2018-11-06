//
//  destinationViewController.swift
//  ScreenTransition_Segue_UIKit_Test
//
//  Created by masato on 6/11/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class destinationViewController: UIViewController {


override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    // rootViewの背景色をRedに変更する
    view.backgroundColor = .red

    // 画面遷移元のsegue.destinationと同じ Viewが読み込まれている
    print(view)
}


}
