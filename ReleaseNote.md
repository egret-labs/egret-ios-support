##Egret iOS Support Release Notes
---

### Egret iOS Support 3.2.4 Release Notes
---
Updated: November 29, 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Fix]** Fixed setting volume of audios sometimes invalid.
- **[Fix]** Fixed rendering of filters.
- **[Fix]** Override the hot update logic, consider the network disconnect and other cases.
- **[Fix]** Fixed saveToFile is not working.
- **[Add]** Added optimization switch for rendering textures.
- **[Add]** Support transparent background.
- **[Add]** Support play audios when system is mute.
- **[Update]** Improved stability.

### Egret iOS Support 3.2.3 Release Notes
---
Updated: November 15, 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Fix]** Support filter in the situation that cmdBatch is shut down.
- **[Update]** Improved stability.

### Egret iOS Support 3.2.2 Release Notes
---
Updated: November 01, 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Fix]** Fixed rendering problems under specific cases.
- **[Fix]** Fixed game blocks caused by playing certain audios in v3.2.1.
- **[Fix]** Fixed input box with prompt text shows wrong text when editting it.
- **[Fix]** Fixed setting layout did not work on input box.
- **[Update]** Add a switch to optimize rendering efficiency(details: http://developer.egret.com/cn/github/egret-docs/Engine2D/native/other/index.html ).
- **[Update]** The last updated game package will be started when the hot update address does not exist.
- **[Update]** Improved stability.

### Egret iOS Support 3.2.1 Release Notes
---
Updated: October 18, 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Note]** This release optimized efficiency of rendering, if exception occurred when rendering, please close the optimization.
- **[Fix]** Fixed rendering problems under specific cases.
- **[Fix]** Fixed music restored from the background did not continue to playback.
- **[Fix]** Fixed delay when setting start time for audio playback.
- **[Update]** Improved stability.

### Egret iOS Support 3.2.0 Release Notes
---
Updated: September, 27 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Note]** This release optimized efficiency of rendering, if exception occurred when rendering, please close the optimization.
- **[Add]** Supported filter rendering.
- **[Add]** Supported mesh rendering.
- **[Update]** Improved efficiency of the scene rendering.
- **[Update]** Improved stability.

### Egret iOS Support 3.1.8 Release Notes
---
Updated: September, 02 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Fix]** Fixed sound can not be played again if it has been stopped.
- **[Update]** Automatic contrast local game package name during hot update.
- **[Update]** Improved stability.

### Egret iOS Support 3.1.7 Release Notes
---
Updated: August, 25 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Fix]** Fixed crash on setting illegal value of color.
- **[Fix]** Fixed start the game at the first time must be a hot update.
- **[Fix]** Fixed the color of font stroke display unusually.
- **[Fix]** Complete audio playback events.
- **[Fix]** Fixed cannot modify the volume during playback.
- **[Update]** The progress bar is no longer displayed when compared to a hot update file.
- **[Update]** The last updated game package will be started when the hot update address does not exist.
- **[Add]** Support italic text.
- **[Add]** Add ColorTransform filter.
- **[Update]** Improved stability.

### Egret iOS Support 3.1.6 Release Notes
---
Updated: August, 09 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Fix]** Fixed lag problem when multi sound effect are simultaneously playing.
- **[Update]** Progress bar dont display when comparing the file.
- **[Update]** Improved stability.

### Egret iOS Support 3.1.5 Release Notes
---
Updated: July, 27 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Fix]** Length of text in Input Field in iOS can be limited when editting.
- **[Fix]** Sound process in iOS is same to Android. Complete interfaces of sound event.
- **[Fix]** Fixed position of Input Field is error on non-retina screen in iOS.
- **[Fix]** Fixed crash when switching between iOS UIView.
- **[Update]** Improved stability.

### Egret iOS Support 3.1.4 Release Notes
---
Updated: July, 12 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Add]** Get battery info of device.
- **[Fix]** Fixed the prompt text of inputField in iOS can't disappear correctly.
- **[Fix]** Fixed inputField is offset when the scene is scaled in iOS.
- **[Update]** Improved stability.

### Egret iOS Support 3.1.3 Release Notes
---
Updated: June, 28 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Add]** Supported local and remote video playback. 
- **[Add]** Supported IPv6 network. 
- **[Update]** Supported egret game for iOS custom loading bar.
- **[Fix]** Fixed crash that caused by characters replacing in EUI label. 
- **[Update]** Improved stability.

### Egret iOS Support 3.1.2 Release Notes
---
Updated: June, 14 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Update]** Better experience of iOS text input. 
- **[Update]** Supported for parsing custom params in publishing Egret game's zip package over Internet.
- **[Fix]** Fixed the bug of loading Egret game's zip package. 
- **[Update]** Improved stability.

### Egret iOS Support 3.1.1 Release Notes
---
Updated: June, 01 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Update]** Improved stability.

### Egret iOS Support 3.1.0 Release Notes
---
Updated: May, 18 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Fix]** Fix the bug that landscape mode doesn't work for iOS7. 
- **[Update]** Improved stability.

### Egret iOS Support 3.0.8 Release Notes
---
Updated: May, 05 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Fix]** Fixed rendering error when a object is cached as bitmap.
- **[Fix]** Crash fix for no texture data.
- **[Fix]** No backup to iCloud for ios egretRoot folder.
- **[Update]** Improve render performance of Font related.
- **[Update]** Improved stability.

### Egret iOS Support 3.0.7 Release Notes
---
Updated: April, 18 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Update]** Improve render performance of Texture related.
- **[Update]** Improved stability.
- **[Fix]** Fixed bugs.

### Egret iOS Support 3.0.6 Release Notes
---
Updated: April, 05 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Add]** Add new protocol declare in ProgressViewDelegate. 
- **[Add]** Add `OPTION_GAME_BACKGROUND` of GameOption.
- **[Update]** Update anti-aliasing feature in stroke line. 
- **[Update]** Improved stability.
- **[Fix]** Fixed bugs.

### Egret iOS Support 3.0.5 Release Notes
---
Updated: March, 23 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Update]** Improved stability.
- **[Update]** Improved accuracy of Bezier rending.
- **[Fix]** bugs on usage of Mask.
- **[Fix]** irregular exceptions throwing.
- **[Fix]** Fixed bugs.


### Egret iOS Support 3.0.4 Release Notes
---
Updated: March, 09 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Fix]** Bug fix for ios publishing.
- **[Fix]** Bug fix for system font stoke.
- **[Fix]** Improving font performance.
- **[Fix]** Crash fix for cache as bitmap.
- **[Fix]** Improving stability

### Egret iOS Support 3.0.3 Release Notes
---
Updated: February, 24 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Fix]** Bug fix for setTimeOut.
- **[Fix]** Bug fix for system font stoke.
- **[Fix]** Bug fix for mask used with sharp.
- **[Fix]** Bug fix for improving stability

### Egret iOS Support 3.0.1 Release Notes
---
Updated: January, 12 2016
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Fix]** Crash fix for outOfRange of fonts
- **[Fix]** Bug fix for rendering system fonts
- **[Fix]** Bug fix for downloading file with "http" header
- **[Fix]** Bug fix for improving stability

### Egret iOS Support 3.0.0 Release Notes
---
Updated: December, 31 2015
- **[Note]** This release is only a match for the version for Egret Engine 3.0, not available for webgl.
- **[Add]** Support interval
- **[Add]** Support http post ArrayBuffer data
- **[Update]** Refactor ViewController template
- **[Fix]** Bug fix for fonts
- **[Fix]** Bug fix for improving stability

### Egret iOS Support 2.5.7 Release Notes
---
Updated: December, 11 2015
- **[Add]** Support iOS 9.2
- **[Add]** Add http request's onResponseHeader callback
- **[Update]** Rewrite http request module
- **[Fix]** Bug fix for taping text view without showing keyboard
- **[Fix]** Bug fix for drawing a circle
- **[Fix]** Bug fix for improving stability

### Egret iOS Support 2.5.6 Release Notes
---
Updated: November, 27 2015
- **[Add]** Add multi-lines text view
- **[Add]** Add a loading view in template project
- **[Update]** Update view container
- **[Fix]** Bug fix for improving stability

### Egret iOS Support 2.5.5 Release Notes
---
Updated: November, 13 2015
- **[Add]** New text field
- **[Fix]** Bug fix for snapshoting a large render
- **[Fix]** Bug fix for improving stability

### Egret iOS Support 2.5.4 Release Notes
---
Updated: November, 6 2015
- **[Add]** Support snapshoting render texture
- **[Add]** Support Egret Engine 2.5.4
- **[Fix]** Bug fix for updating game version
- **[Fix]** Bug fix for some matrix operation
- **[Fix]** Bug fix for graphics
- **[Fix]** Bug fix for improving stability

### Egret iOS Support 2.5.1 Release Notes
---
Updated: October, 23 2015
- **[Add]** Support iOS 9.0+
- **[Add]** Support Egret Engine 2.5.0+
- **[Add]** Support Egret Nest SDK
- **[Add]** Support parsing XML format
- **[Fix]** Crash fix for exiting app
- **[Fix]** Bug fix for localStorage module
- **[Fix]** Bug fix for improving stability

### Egret iOS Support 2.0.4 Release Notes
---
Updated: August, 14 2015

- **[Add]** Support In-App Pucharse in AppStore
- **[Update]** New Project template
- **[Fix]** Bug fix for improving stability

### Egret iOS Support 2.0.3 Release Notes
---
Updated: July, 31 2014

- **[Fix]** Bug fix for containing incorrect library files
- **[Fix]** Bug fix for improving stability

### Egret iOS Support 2.0 Final Release Notes
---
Updated: July, 16 2014

- **[Add]** Support WebSocket TypedArray streaming
- **[Add]** Support game package encryption
- **[Add]** Support game starting by network configuration
- **[Add]** Support saving and loading game settings
- **[Add]** Support iOS 8.4
- **[Update]** New JavaScriptCore framework
- **[Update]** New graphics interface
- **[Update]** New math library
- **[Update]** New project template
- **[Fix]** Bug fix for crashing app when entering background
- **[Fix]** Bug fix for music playing incorrectly when app re-enters foreground
- **[Fix]** Bug fix for input text

### Egret iOS Support 2.0.1 Release Notes
---
Updated: July, 3 2014

- **[Add]** Support iOS 8.4
- **[Fix]** Bug fix for loading encrypted game package
- **[Fix]** Bug fix for crashing app when entering background

### Egret iOS Support 2.0.0 Release Notes
---
Updated: June, 18 2015

- **[Add]** Support WebSocket TypedArray stream
- **[Add]** Support game package encryption 
- **[Add]** Support starting game by reading configuration file from network
- **[Add]** Support reading and storing game settings.
- **[Update]** New JavaScriptCore framework is used.
- **[Update]** New graphics interface is used.
- **[Update]** New maths library is used.
- **[Fix]** The problem that old JavaScriptCore does not support TypedArray on iOS7
- **[Fix]** Slight crash probability when pressing HOME button
- **[Fix]** The bug that music is played when application re-enters front end. 
- **[Fix]** Text input bug
 

### Egret iOS Support 1.7.2 Release Notes
---
Updated: May, 20 2015

- **[ADD]** Start game via remote configure file
- **[ADD]** game options
- **[UPDATE]** new JavaScriptCore framework
- **[UPDATE]** new Math library

### Egret iOS Support 1.7.1 Release Notes
---
Updated: May, 07 2015

- **[FIX]** crash when HOME button is pressed
- **[FIX]** background music plays when entering foreground
- **[FIX]** text input bug

### Egret iOS Support 1.7.0 Release Notes
---
Updated: April, 24 2015

(Note: v1.7.0 is the stable version from v1.6.1 to v1.6.2 CE)

- **[ADD]** iOS 8.3 support
- **[UPDATE]** Improve render performance
- **[FIX]** Bugs fix for stability improvements

#### Knonw issue
- Press Home in gameplay, app crash by small chance (P0)

### Egret iOS Support 1.6.2 Release Notes
---
Updated: April, 09 2015

- **[ADD]** iOS 8.3 support
- **[UPDATE]** Improve render performance
- **[FIX]** Bugs fix for stability improvements

#### Knonw issue
- Press Home in gameplay, app crash by small chance (P0)
