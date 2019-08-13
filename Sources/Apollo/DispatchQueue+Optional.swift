//
//  DispatchQueue+Optional.swift
//  Apollo
//
//  Created by Ellen Shapiro on 8/13/19.
//  Copyright © 2019 Apollo GraphQL. All rights reserved.
//

import Foundation

extension DispatchQueue {
  
  static func performAsyncIfNeeded(on callbackQueue: DispatchQueue?, action: @escaping () -> Void) {
    if let callbackQueue = callbackQueue {
      // A callback queue was provided, perform the action on that queue
      callbackQueue.async {
        action()
      }
    } else {
      // Perform the action on the current queue
      action()
    }
  }
}
