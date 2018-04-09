<p align="center">
<img src="https://raw.githubusercontent.com/myriadmobile/Droar/master/Github/DroarLogo.png">
</p>

[![CI Status](http://img.shields.io/travis/myriadmobile/netfox-Droar.svg?style=flat)](https://travis-ci.org/myriadmobile/netfox-Droar)
[![Version](https://img.shields.io/cocoapods/v/netfox-Droar.svg?style=flat)](http://cocoapods.org/pods/netfox-Droar)
[![License](https://img.shields.io/cocoapods/l/netfox-Droar.svg?style=flat)](http://cocoapods.org/pods/netfox-Droar)
[![Platform](https://img.shields.io/cocoapods/p/netfox-Droar.svg?style=flat)](http://cocoapods.org/pods/netfox-Droar)

# netfox-Droar

This is a plugin for [Droar](https://github.com/myriadmobile/Droar), a single-line installation debugging window.  It adds an integration to use netfox inline with Droar.

## Overview

The idea behind Droar is simple: during app deployment stages, adding quick app configurations (switching between mock vs live, QA credential quick-login, changing http environments, etc) tend to get written and shipped straight inline with production code.  Droar solves this issue by adding quick configurations that are grouped into one place, and under a single tool.

<p align="center">
<img src="https://media.giphy.com/media/7FfNceqr7lhqyqsrW6/giphy.gif">
</p>

## Installation

netfox-Droar is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "netfox-Droar"
```

No code is required to use this plugin.  Just start Droar normally.  When this plugin is loaded, it will start netfox, and add a section in Droar to launch Netfox.

If Droar is never started, this plugin will take no action.

## Author

Nathan Jangula, Myriad Mobile, developer@myriadmobile.com

## License

netfox-Droar is available under the MIT license. See the LICENSE file for more info.



