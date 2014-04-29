# CoronaViewer

CoronaViewer lets you edit your Corona project and preview those code changes in __real-time__ on your __device__.

NOTE: [CoronaCards](http://coronacards.com) developers should go [here](https://github.com/CoronaCards/CoronaViewer).

## Project setup

### Dropbox

CoronaViewer requires a [Dropbox](https://db.tt/uQgIqtPN) account. You'll need to install the Dropbox plugin on your desktop computer.

### Where Files Go

Your Corona project files (e.g. `main.lua`) should go in the following location in order to be shared:

	${DROPBOX_FOLDER}/Apps/CoronaViewer

NOTE: Only files in this location will be synchronized with your device. The rest of your Dropbox folder is __not__ visible to CoronaViewer.

### Running on device

Build the Corona project in this repo and install it on your device. ([Corona Enterprise](http://coronalabs.com/products/enterprise/) users, see below for additional info.)

You'll be prompted with Dropbox's standard login interface:

![Dropbox Login UI iOS](README/dropbox-login-ios.png)

This enables the app to synchronize with your Corona project files (i.e. files that are in the above location.)

#### Xcode Simulator

You can also build this app for the Xcode Simulator instead of for your device.

## Corona Enterprise

If you are using Enterprise, you will need to add `libplugin_viewer.a`. This plugin is available from the Enterprise [daily builds](http://developer.coronalabs.com/downloads/daily-builds) page (click on the "Enterprise" tab).

This library should appear in the "Link Binary with Libraries" build phase of your app's Xcode project.

### iOS

#### Info.plist

On Enterprise, if you have overridden the `CFBundleURLTypes` array in your Info.plist, then you need to make sure that a `CFBundleURLSchemes` entry exists. It should correspond to the one in [build.settings](build.settings).

## Availability

### Supported Platforms

* iOS
* Android (TBD)

### Product Tiers

CoronaViewer is available to the following subscriptions/tiers:

* __Corona SDK (Pro)__
* __Corona Enterprise__
* __CoronaCards__ uses a slightly different workflow. [Learn more](https://github.com/coronacards/CoronaViewer)
