//
//  ChainedBuilder.swift
//  Builder
//
//  Created by sunil.kumar1 on 1/11/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

class ChainedBuilder {
    
    private var components: URLComponents

      init() {
          self.components = URLComponents()
      }

      func set(scheme: String) -> ChainedBuilder {
          self.components.scheme = scheme
          return self
      }

      func set(host: String) -> ChainedBuilder {
          self.components.host = host
          return self
      }

      func set(port: Int) -> ChainedBuilder {
          self.components.port = port
          return self
      }

      func set(path: String) -> ChainedBuilder {
          var path = path
          if !path.hasPrefix("/") {
              path = "/" + path
          }
          self.components.path = path
          return self
      }

      func addQueryItem(name: String, value: String) -> ChainedBuilder  {
          if self.components.queryItems == nil {
              self.components.queryItems = []
          }
          self.components.queryItems?.append(URLQueryItem(name: name, value: value))
          return self
      }

      func build() -> URL? {
          return self.components.url
      }
}
