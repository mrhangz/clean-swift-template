//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

/*

 The ___FILEBASENAMEASIDENTIFIER___Store class implements the ___FILEBASENAMEASIDENTIFIER___StoreProtocol.

 The source for the data could be a database, cache, or a web service.

 You may remove these comments from the file.

 */

class ___FILEBASENAMEASIDENTIFIER___Store: ___FILEBASENAMEASIDENTIFIER___StoreProtocol {
  func getData(_ onComplete: @escaping (Result<Entity>) -> Void) {
    // Simulates an asynchronous background thread that calls back on the main thread after 2 seconds
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
      // Returns a domain model
      onComplete(Result.success(Entity()))
    }
  }
}
