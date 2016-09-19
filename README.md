# PokeHunt

PokeHunt is no-crowdsource app for scanning nearest pokemons which can be caught with PokemonGo. 

## To Start
1. Several API keys are required to start working on this project:
  * GoogleMaps API key in GMService-APIkeys.plist. 
  * AdMob API key in AD_UNIT_ID_FOR_BANNER_TEST in GoogleService-Info.plist
  * Setup your BUNDLE_ID in GoogleService-Info.plist
  * The HockeyApp was allied to set up crash reporting. For testing purpose you can use own HokeyApp API key for this project

2. Go to your project folder using terminal and run _pod init_ and _pod install_ to setup all CocoaPods. The project uses following ones: 
	* [SnapKit](https://github.com/SnapKit/SnapKit)
	* [GoogleMaps](https://developers.google.com/maps/documentation/ios-sdk/)
	* [R.swift](https://github.com/mac-cain13/R.swift)
	* [TOWebViewConroller](https://github.com/TimOliver/TOWebViewController)
	* [AppAuth](https://cocoapods.org/pods/AppAuth)
	* [Alamofire](https://github.com/Alamofire/Alamofire)
	* [SSKeychain](https://cocoapods.org/pods/SSKeychain)
	* [Firebase](https://cocoapods.org/pods/Firebase)
	* [HockeySDK](https://github.com/bitstadium/HockeySDK-iOS)
	* [iRate](https://github.com/nicklockwood/iRate)
	* [KLCPopup](https://cocoapods.org/pods/KLCPopup)
	* [Protobuf](https://cocoapods.org/pods/Protobuf)
	* [OpenSSL](https://cocoapods.org/pods/OpenSSL)
	* [SwiftTask](https://cocoapods.org/pods/SwiftTask)
	* [INTULocationManager](https://cocoapods.org/pods/INTULocationManager)
	* [SwiftyTimer](https://cocoapods.org/pods/SwiftyTimer)
	* [SwiftEventBus](https://cocoapods.org/pods/SwiftEventBus)
	* [SwiftyMarkdown](https://cocoapods.org/pods/SwiftyMarkdown)
	* [DFNotificationView](https://cocoapods.org/pods/DFNotificationView)

## Features

  * Login with Google
  * Set steps range to scan for pokemons
  * Show pokemons
  * Show pokestops and gyms
  
## Contributors

  Three friends, namely [Dmitry Koryakin](https://github.com/fantast1k), [Dmitry Butenko](https://www.linkedin.com/in/twilightwind?authType=name&authToken=RzsN&goback=&trk=abook_conn) and [Valentina Butenko](https://github.com/ValentinaButenko) have started this one
  as pet-project to make pokemons hunting time easier. 
  
## Warning

  We know that pokemons hunt should last, that’s why everyone should be aware of using their main account as it is highly possible to get banned.
  
## License 

  See [License](https://github.com/ValentinaButenko/PokeHunt/blob/19.final.staff.fix/LICENSE.txt) file 
