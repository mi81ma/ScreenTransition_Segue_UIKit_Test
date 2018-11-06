//
//  ViewController.swift
//  ScreenTransition_Segue_UIKit_Test
//
//  Created by masato on 6/11/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // root Viewが表示されたあとに呼ばれる。
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // Segueをidentifier Nameで呼び出す
        // ☆ self.performSegue(withIdentifier:sender:)メソッドで、
        // Segueの名前をしていすることで、画面が遷移する。
        self.performSegue(withIdentifier: "toSecondScene", sender: self)
    }


    // Segueが実行される際に呼ばれる
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {


        // 名前を確かめて toSecondSceneの場合かどうかを確認する
        switch segue.identifier {
        case .some("toSecondScene"):

            // 遷移先のViewControllerのインスタンスを取得して、
            let destination = segue.destination

            // 遷移先のBackground Colorを緑に変える
            destination.view.backgroundColor = .green

            print(destination)

           

        default:
            break
        }
    }
}




