![Alt text](https://github.com/omaralbeik/SwiftierSwift/blob/master/logo.png "Swiftier Swift")

[![MIT](https://img.shields.io/badge/License-MIT-red.svg)](https://opensource.org/licenses/MIT)
[![Swift](https://img.shields.io/badge/Swift-3.0-orange.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS-lightgrey.svg)](https://github.com/omaralbeik/SwiftierSwift)
[![Xcode](https://img.shields.io/badge/Xcode-8.0%20beta6-blue.svg)](https://developer.apple.com/xcode)


A collection of priceless native swift 3 extensions to make working with your projects a real joy ;)


## How to use:

Copy Extensions folder to your Xcode project to use all extensions, or a specific extension


## Requirements:

Xcode 8 beta6 or later with Swift 3 is required to use these extensions

## How cool is this?

SwiftierSwift includes more than 150 property and method ..

```swift
[1, 2, 3, 1, 3].removeDuplicates() = [1, 2, 3]
["h", "e", "l", "l", "o"].indexes(of item: "l") = [2, 3]
[1, 2, 3, 4, 5].randomItem = 3
[1, 2, 3, 4, 5].shuffle() = [2, 5, 3, 1, 4]
[1, 2, 3, 4, 5].average = 3
```

```swift
Date().isInToday = true
Date().add(component: .month, value: 1) // Add 1 month to current date
Date().beginning(of component: .day) // Return beginning of current day
Date().isIn(current: .month) = true
Date().iso8601String = "2016-08-23T21:26:15.287Z" // Return iso8601 string for date
let date = Date(iso8601String: "2016-08-23T21:26:15.287Z") // Create date from iso8601 string
```

```swift
√ 9 = 3 // Return square root of a number
5 ^ 2 = 25 // Return square power of a number
5 ± 2 = (3, 7) // Return a number plus or minus another number
Int.randomBetween(min: 1, max: 10) = 6 // Return random number in range
134.romanNumeral = "CXXXIV" // Return roman numeral for a number
```

## List Of Extensions

- [x] [String extensions](#string-extensions)
- [x] [Date extensions](#date-extensions)
- [x] [Array extensions](#array-extensions)
- [x] [Double extensions](#double-extensions)
- [x] [Float extensions](#float-extensions)
- [x] [Int extensions](#int-extensions)
- [x] [Character extensions](#character-extensions)
- [ ] [Convenience extensions](#convenience-extensions)
- [ ] [UIColor extensions](#uicolor-extensions)
- [ ] [UIImage extensions](#uiimage-extensions)
- [ ] [UINavigationController extensions](#uinavigationcontroller-extensions)
- [ ] [UIView extensions](#uiview-extensions)
- [ ] [UITextField extensions](#uitextfield-extensions)


## Thanks:
Special thanks to [Eng. AbdulRahman Dabbour](https://github.com/thedabbour) for documenting the project
