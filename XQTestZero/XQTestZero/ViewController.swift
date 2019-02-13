//
//  ViewController.swift
//  XQTestZero
//
//  Created by WXQ on 2019/2/13.
//  Copyright © 2019 WXQ. All rights reserved.
//

import UIKit
import XQTestTool
import XQTestResource
import XQTestStaticResource

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // MARK: - 一般代码库
        print("1 + 2 =", XQAdd.add(a: 1, b: 2))
        
        // MARK: - 本地库使用其他第三方库
        let model = XQAdd()
        model.name = "Sinking"
        print(model.modelToJSONObject() ?? "没有值")
        
        // MARK: - 资源库
        print(XQTestImage.getImage(named: "testImg") ?? "没有图片")
        
        let rView = Bundle.init(for: XQTestResourceView.classForCoder()).loadNibNamed("XQTestResourceView", owner: nil, options: nil)?.first as? XQTestResourceView
        print("视图是:", rView ?? "没有视图")
        
        if let tView = rView {
            tView.frame = CGRect.init(x: 0, y: 0, width: 200, height: 200)
            self.view.addSubview(tView)
        }
        
        
        // MARK: - 静态库多资源
        let img = UIImage.init(named: "testStaticImg", in: Bundle.init(for: XQTestJPushView.classForCoder()), compatibleWith: nil)
        print(img ?? "没有图片1")
        
        let testView = Bundle.init(for: XQTestJPushView.classForCoder()).loadNibNamed("XQTestJPushView", owner: nil, options: nil)?.first as? XQTestJPushView
        print("视图1是:", testView ?? "没有视图")
        
        if let tView = testView {
            tView.frame = CGRect.init(x: 0, y: 200, width: 200, height: 200)
            self.view.addSubview(tView)
        }
        
    }


}

