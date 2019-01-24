# TextAttributes
TextAttributes provides simple to use API for setting text attributes for common UIKit components.

TextAttributes allow you to forget about chunky `NSAttributedString` API == you don't have to remember the [NSAttributedStringKey: Any] or it's consecutive string keys (`.font`, `.foregroundColor`, `.kern`) and rather focus directly on styling.

# Usage

```
let textAttributes = TextAttributes.attributes(font: Font.normalRegular, color: Color.white)
```

* UILabel
```
label.textAttributes = textAttributes
```

* UIButton
```
button.setAttributes(textAttributes, for: .normal)
```
        
* UITextView
```
textView.textAttributes = textAttributes
```


# Cocoapods
Add source

```
source 'https://github.com/bielikb/TextAttributes.git'
```

```
pod 'TextAttributes', '~> 1.0.1'
```
