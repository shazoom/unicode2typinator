# unicode2typinator
## Add the contents off the clipboard as a Unicode expansion to Typinator

A script which checks is the contents of the clipboard contains a unicode character or unicode decimal number; if it does, checks if there is an expansion for it already; if not pops up a dialog asking for an abbreviation.

You will need to change the function, setRuleSetName(), so that it returns the name of the rule set you use to store unicode expansions.

It could be run manually but that mirrors functionality already in Typinator. I run it from a Keyboard Master macro which is triggered when the clipboard changes.

Use something like UnicodeChekcer or PopChar to browse for characters to add.

n.b. no string stripping is done with decimal number expansions. This will work fine with rules inserted with this script but will probably miss ones you’ve added yourself.
