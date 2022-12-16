# SWUserDefaults

[![CI Status](https://img.shields.io/travis/liuhongli/SWUserDefaults.svg?style=flat)](https://travis-ci.org/liuhongli/SWUserDefaults)
[![Version](https://img.shields.io/cocoapods/v/SWUserDefaults.svg?style=flat)](https://cocoapods.org/pods/SWUserDefaults)
[![License](https://img.shields.io/cocoapods/l/SWUserDefaults.svg?style=flat)](https://cocoapods.org/pods/SWUserDefaults)
[![Platform](https://img.shields.io/cocoapods/p/SWUserDefaults.svg?style=flat)](https://cocoapods.org/pods/SWUserDefaults)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

SWUserDefaults is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SWUserDefaults'
```

## Usage
```
// save Int value to UserDefaults
SWUserDefaults.save(3, "key1")

// get Int value from UserDefaults
let value = SWUserDefaults.get("key1", Int.self)

// delete from UserDefaults
SWUserDefaults.delete("key1")


// save dict value to UserDefaults
let dict: [String : Any] = ["name": "Lily", "age": 18]
SWUserDefaults.save(dict, "key2")

// get dict value from UserDefaults
let dictValue = SWUserDefaults.get("key2", [String : Any].self)

// delete from UserDefaults
SWUserDefaults.delete("key2")
```

## Author

liuhongli, liuhongli2120@gmail.com

## License

SWUserDefaults is available under the MIT license. See the LICENSE file for more info.
