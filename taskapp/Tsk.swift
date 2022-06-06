//
//  Tsk.swift
//  taskapp
//
//  Created by Shunichi Nukaga on 2022/06/06.
//

import Foundation
import RealmSwift

class Task: Object{
@objc dynamic var title = ""

@objc dynamic var contets = ""

@objc dynamic var date = Date()

override static func primaryKey() -> String?
    return "id"
}

}
