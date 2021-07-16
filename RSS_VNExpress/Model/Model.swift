//
//  Model.swift
//  RSS_VNExpress
//
//  Created by masterdev3_ios on 7/16/21.
//

import Foundation
struct Channel{
    var items : [Item]
    
}
struct Item{
    var title : String?
    var pubDate: String?
    var link: String?
    var descriptionNews : Description?
    var numCmt : String?
}

struct Description{
    var description : String?
    var urlImg: String?
}
