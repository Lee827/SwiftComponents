//
//  Bundle.swift
//  SwiftComponents
//
//  Created by KWUN LOK LEE on 15/12/2023.
//

public extension Bundle {
  public var releaseVersionNumber: String {
    return infoDictionary?["CFBundleShortVersionString"] as? String ?? "0.0.0";
  }
  public var buildVersionNumber: String {
    return infoDictionary?["CFBundleVersion"] as? String ?? "0";
  }
}
