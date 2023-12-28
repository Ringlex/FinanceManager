//
//  FStore.swift
//  FinanceManager
//
//  Created by Bercik on 28/12/2023.
//

import Foundation
import FirebaseCore
import FirebaseFirestore

struct FStore {
    static let financeDB = Firestore.firestore()
    static let users = "Users"
}
