//
//  SWUserDefaults.swift
//  SWUserDefaults
//
//  Created by liuhongli on 2022/12/15.
//

import Foundation
//enum SWUserDefaultsKey {
//    case user
//    case bookDetail
//
//    var key: String {
//        switch self {
//        case .user: return "UserInfo"
//        case .bookDetail: return "BookDetail"
//        }
//    }
//
//
//}

public struct SWUserDefaults {

    /*
     存入数据: 数据为 Any 类型
     示例:
     let model = UserModel(json)
     SWUserDefaults.save(model, UserDefaultsKey.user.key)
     */
    public static func save(_ data: Any, _ key: String) {
        var userInfoData: Data?
        do {
            if #available(iOS 11.0, *) {
                userInfoData = try NSKeyedArchiver.archivedData(withRootObject: data, requiringSecureCoding: false)
            } else {
                userInfoData = NSKeyedArchiver.archivedData(withRootObject: data)
            }

        } catch {
            debugPrint("archivedData Error")
        }
        UserDefaults.standard.setValue(userInfoData, forKey: key)
    }

    /*
     获取数据
     示例:
     SWUserDefaults.get(UserDefaultsKey.user.key, UserModel.self)
     */
    public static func get<T>(_ key: String, _ classType: T.Type) -> T? {
        if let data = UserDefaults.standard.data(forKey: key) {
            if let user = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? T {
                return user
            }
        }
        return nil
    }

    /// 删除: SWUserDefaults.delete(UserDefaultsKey.user.key)
    public static func delete(_ key: String) {
        UserDefaults.standard.removeObject(forKey: key)
    }

    public static func delete(_ key: String, success: () -> (), failure: () -> () = {}) {
        UserDefaults.standard.removeObject(forKey: key)
        
        success()
        
        //failure()
        
//        if User.current()?.token == nil {
//            success()
//        } else {
//            failure()
//        }
    }

}
