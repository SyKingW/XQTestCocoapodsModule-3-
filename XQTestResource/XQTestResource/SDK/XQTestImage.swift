//
//  XQTestImage.swift
//  XQTestResource
//
//  Created by WXQ on 2019/2/2.
//  Copyright © 2019 WXQ. All rights reserved.
//

import UIKit

public class XQTestImage: NSObject {
    
    public static func getImage(named name: String) -> UIImage? {
        // 读取库里的图片， 必须要指定Bundle
        return UIImage.init(named: name, in: Bundle.init(for: XQTestImage.classForCoder()), compatibleWith: nil)
    }
    
}
