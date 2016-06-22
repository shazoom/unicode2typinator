# unicode2typinator
## New version
I just added three file to the repository, which are intended to be used
together with Keyboard Maestro: 

1. Pop Char-KM Dialog.kmmacros
2. unicode2typPt1.scpt
3. unicode2typePt2.scpt

The functionality is almost the same as the old version. However, it uses a
Keyboard Maestro dialog which is postionable and remembers where you put
it. There are only two applications which are worth using (at least which I
have discovered) and bother are similarly positionable. These are [Pop
Char](http://www.ergonis.com/products/popcharx/) and [Unicode Checker](http://earthlingsoft.net/UnicodeChecker/index.html.)

The AppleScript dialog is not postionable and is always opened in the
center of the screen. Since the KM dialog is positionable they can be
opened side by side. AppleScript dialogs are a more serious annoyance with
Pop Char as it is a menubar application and will always be displayed on
top.

## Add the contents off the clipboard as a Unicode expansion to Typinator

A script which checks is the contents of the clipboard contains a unicode character or unicode decimal number; if it does, checks if there is an expansion for it already; if not pops up a dialog asking for an abbreviation.

You will need to change the function, setRuleSetName(), so that it returns the name of the rule set you use to store unicode expansions.

It could be run manually but that mirrors functionality already in Typinator. I run it from a Keyboard Master macro which is triggered when the clipboard changes.

Use something like UnicodeChekcer or PopChar to browse for characters to add.

n.b. no string stripping is done with decimal number expansions. This will work fine with rules inserted with this script but will probably miss ones you’ve added yourself.
