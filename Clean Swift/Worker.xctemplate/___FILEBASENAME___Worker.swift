//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___StoreProtocol {
  func getData(_ completion: @escaping (Result<Entity>) -> Void)
}

class ___FILEBASENAMEASIDENTIFIER___Worker {

  var store: ___FILEBASENAMEASIDENTIFIER___StoreProtocol

  init(store: ___FILEBASENAMEASIDENTIFIER___StoreProtocol) {
    self.store = store
  }

  // MARK: - Business Logic

  func doSomeWork(_ completion: @escaping (Result<Entity>) -> Void) {
    // NOTE: Do the work
    store.getData {
      // The worker may perform some small business logic before returning the result to the Interactor
      completion($0)
    }
  }
}
