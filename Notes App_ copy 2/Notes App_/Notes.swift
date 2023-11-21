//
//  Notes.swift
//  Notes App_
//
//  Created by Chiara Mirra on 19/11/23.
//

import Foundation

struct Notes: Identifiable, Hashable, Codable {
  var id = UUID()
  let name: String
  let text: String
}
