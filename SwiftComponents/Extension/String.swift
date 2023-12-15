//
//  String.swift
//  SwiftComponents
//
//  Created by KWUN LOK LEE on 15/12/2023.
//

public extension String {
  public var decode: String {
    return self.replacingOccurrences(of: "&ldquo;", with: "\"");
  }
  
  public var decodeMultiline: String {
    return self.replacingOccurrences(of: "\\n", with: "\n");
  }
  
  public var hasWhiteSpace: Bool {
    return self.contains(" ");
  }
  
  public func removingWhitespaces() -> String {
    return components(separatedBy: .whitespaces).joined();
  }
  
  public var htmlToAttributedString: NSAttributedString {
    guard let data = data(using: .utf8) else { return NSAttributedString() }
    do {
      return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html,
                                                          .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil);
    } catch {
      return NSAttributedString();
    }
  }
  
  public var htmlToString: String {
    return htmlToAttributedString.string;
  }
  
  public func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
    let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude);
    let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [.font: font], context: nil);
    
    return ceil(boundingBox.height);
  }
  
  public func width(withConstrainedHeight height: CGFloat, font: UIFont) -> CGFloat {
    let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height);
    let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [.font: font], context: nil);
    
    return ceil(boundingBox.width);
  }
  
  public func lineSpaced(_ spacing: CGFloat, label: UILabel) -> NSAttributedString {
    let paragraphStyle = NSMutableParagraphStyle();
    paragraphStyle.lineSpacing = spacing - label.font.pointSize - (label.font.lineHeight - label.font.pointSize);
    paragraphStyle.lineBreakMode = .byTruncatingTail;
    let attributedString = NSAttributedString(string: self, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle]);
    return attributedString;
  }
}
