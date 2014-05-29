# CoronaViewer (for Corona SDK/Enterprise)

CoronaViewer lets you edit your Corona project and preview those code changes in __real-time__ on your __device__.

NOTE: [CoronaCards](http://coronacards.com) developers should go [here](https://github.com/CoronaCards/CoronaViewer).

## Project setup

### Dropbox

CoronaViewer requires a [Dropbox](https://db.tt/uQgIqtPN) account. You'll also want to install Dropbox on your desktop computer so that you can sync edits from your desktop to the device.

### Where Files Go

Your Corona project files (e.g. `main.lua`) should go in the following location in order to be shared:

	${DROPBOX_FOLDER}/Apps/CoronaViewer

NOTE: This folder will be created by the CoronaViewer app when first run on the device and the Dropbox authorization is approved. Do not create this folder manually, nor remove the hidden files created by Dropbox. After the Dropbox authorization is complete, you can move your Corona project files into this folder. Only files in this location will be synchronized with your device. The rest of your Dropbox folder is __not__ visible to CoronaViewer.

### Running on device

Build the Corona project in this repo and install it on your device. ([Corona Enterprise](http://coronalabs.com/products/enterprise/) users, see below for additional info.)

You'll be prompted with Dropbox's standard login interface:

![Dropbox Login UI iOS](README/dropbox-login-ios.png)

This enables the app to synchronize with your Corona project files (i.e. files that are in the above location.)

The CoronaViewer folder has now been created and you can move your Corona project files into this folder. The CoronaViewer app detect files with newer dates that are moved into this folder and syncs them with the running Corona app automatically.

#### Xcode Simulator

You can also build this app for the Xcode Simulator instead of for your device.


## Corona Enterprise

If you are using Enterprise, you will need to add `libplugin_viewer.a`. This plugin is available from the Enterprise [daily builds](http://developer.coronalabs.com/downloads/daily-builds) page (click on the "Enterprise" tab).

This library should appear in the "Link Binary with Libraries" build phase of your app's Xcode project.

### iOS

#### Info.plist

On Enterprise, if you have overridden the `CFBundleURLTypes` array in your Info.plist, then you need to make sure that a `CFBundleURLSchemes` entry exists. It should correspond to the one in [build.settings](build.settings).


## Limitations

### config.lua and build.settings

CoronaViewer uses the [config.lua](config.lua) and [build.settings](build.settings) files in this project, not the one in the project you are viewing (i.e. `${DROPBOX_FOLDER}/Apps/CoronaViewer`). Therefore, you will need to modify `config.lua` and `build.settings` if your settings differ. These include:

* content width
* content height
* content scale
* frame rate
* orientation (default and supported)

### File updates

Files are updated based on modification time and file size. To get the device to update the file, you must make sure the modification time is newer and the file size if different.

Note: There may be a problem if you swap out project files and the "new" project contains `main.lua` and other files with the same name but with an older modification date. 

### Gotchas

Runtime errors during the first pass of main.lua will cause the display to show a black screen.

Only one project can reside in the `CoronaViewer` folder. You need to switch out all the files (except for the hidden Dropbox files) in the folder when changing projects.

## Availability

### Supported Platforms

* iOS
* Android (TBD)

### Product Tiers

CoronaViewer is available to the following subscriptions/tiers:

* __Corona SDK (Pro)__
* __Corona Enterprise__
* __CoronaCards__ uses a slightly different workflow. [Learn more](https://github.com/coronacards/CoronaViewer)

