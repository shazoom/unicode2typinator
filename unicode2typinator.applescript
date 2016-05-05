--   Created by: Peter David Shannon
--   Created on: 2016-04-11
--
--   Copyright (c) 2016 Peter Shannon
--   Feel free to modify the script for your own use, but leave the copyright notice intact.

-- I use Keyboard Maestro to trigger this script if the clipboard changes.
-- Perhaps there are some other automation programs which can do the same
-- thing.

-- User confiugration

-- Set the return the name of the rule set you use for unicode character expansion
on getRuleSetName()
	return "Unicode Script"
end getRuleSetName

-- End user configuration

on get_decimal_expansion(pDecimal)
	return "{Scripts/Unicode.applescript " & pDecimal & "}"
end get_decimal_expansion

on new_expansion(pAbbreviation, pDecimal, pInput)
	set mRuleSetName to getRuleSetName()
	tell application "Typinator"
		if exists rule set mRuleSetName then
			set mRuleSet to rule set mRuleSetName
			tell mRuleSet
				set mNewRule to make new rule
			end tell
			set abbreviation of mNewRule to pAbbreviation
			set whole word of mNewRule to true
			if pDecimal = -1 then
				set plain expansion of mNewRule to pInput
			else
				set plain expansion of mNewRule to get_decimal_expansion(pDecimal)
			end if
		end if
	end tell
end new_expansion

on new_expansion_dialog(pDecimal, pInput)
	if pDecimal = -1 then
		display dialog "Type in the abbreviation for " & pInput default answer "" with title "Add Typinator Character Expansion" buttons {"Cancel", "Create"} default button 2
	else
		display dialog "Type in the abbreviation for " & pDecimal default answer "" with title "Add Typinator Character Expansion" buttons {"Cancel", "Create"} default button 2
	end if
	
	set mAbbreviation to text returned of result
	if mAbbreviation ­ "" then
		new_expansion(mAbbreviation, pDecimal, pInput)
	end if
end new_expansion_dialog

on already_exists(pDecimal, pInput)
	-- Needed to add this check as the latest update for Keyboard Maestro now 
	-- sometimes spots changes to the clipboard much more quicky
	set mRuleSetName to getRuleSetName()
	set decExpansion to get_decimal_expansion(pDecimal)
	tell application "Typinator"
		if exists rule set mRuleSetName then
			set mRuleSet to rule of rule set mRuleSetName
			repeat with mRule in mRuleSet
				set mExpansion to plain expansion of mRule as string
				if mExpansion = decExpansion then
					return true
				else if mExpansion = pInput then
					return true
				end if
			end repeat
			return false
		end if
	end tell
end already_exists

on check_decimal(pInput)
	-- Is the input a single character and outside the ASCII range and in the unicode range?
	-- Is the input a single character, return -1?
	-- Or is the input an integer, return the integerp? 
	set biggestAscii to 127
	set biggestUnicode to 1114111
	if length of pInput = 1 and id of pInput > biggestAscii and id of pInput ² biggestUnicode then
		-- this is a non-core-ascii unicode character
		return -1
	else if length of pInput ² length of (biggestUnicode as string) then
		try
			set mNumber to pInput as number
			set mInteger to pInput as integer
			if mNumber = mInteger and mInteger > biggestAscii and mInteger ² biggestUnicode then
				return mInteger
			end if
		end try
	end if
	-- If we get here then it's not a unicode character or decimal number
	error "Not a unicode character or decimal number." number 1000
end check_decimal

-- main program
set mInput to the clipboard
try
	-- Quick check to see if the clipboard contents have a unicode character 
	-- or decimal number.
	set mDecimal to check_decimal(mInput)
on error errString number errNumber
	if errNumber = 1000 then
		-- The clipboard does not contain anything we should be trying to turn 
		-- into a unicode expansion.
		return
	else
		error errString number errNumber
	end if
end try

-- Check to see if we already have the expansion
if not already_exists(mDecimal, mInput) then
	new_expansion_dialog(mDecimal, mInput)
end if
