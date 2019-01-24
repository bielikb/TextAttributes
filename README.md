# TextAttributes
TextAttributes provides simple to use API for setting text attributes for common UIKit components.

TextAttributes allow you to forget about chunky `NSAttributedString` API.

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
