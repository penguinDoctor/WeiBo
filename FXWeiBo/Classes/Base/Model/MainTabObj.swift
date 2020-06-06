//
//  MainTabObj.swift
//  FXWeiBo
//
//  Created by 飞翔 on 2020/6/6.
//  Copyright © 2020 飞翔. All rights reserved.
//

import UIKit

class MainTabObj: NSObject {

    static func loadMainTab() -> [[String:String]]{
        
        let dictAry =  [[MainTabConstant().name:"HomeViewController",MainTabConstant().title:"首页",MainTabConstant().normalName:""],[MainTabConstant().name:"PublishViewController",MainTabConstant().title:"发布",MainTabConstant().normalName:""],[MainTabConstant().name:"AccountViewController",MainTabConstant().title:"我的",MainTabConstant().normalName:""]]
        return dictAry
    }
}
