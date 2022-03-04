# ✨ .ps1 Language Toggler

Is your School, Workplace, or others preventing you from using a different keyboard layout? Do you **really** want to use your preferred keyboard elsewhere? Albeit a simple script, this is a convenient way to switching between languages on your computer. To find out if this is the method for you please continue reading below🔽.


# ⚠ Initial Forewarning ⚠

Depending on what the status of your computer is whether it is completely **unblocked**, **slightly prohibited** or **completely prohibited**. This Markdown should be a well enough explanation of what steps you need to take to find your best solution.

## Is your system unblocked?

To figure whether or not your system is allowed to change system language we'll start with going to the language settings.

 - Hit the ***⊞* WinKey** and then typing **"Language Settings"** <sup>(not case-sensitive)</sup>.
 - You should see an option labeled **"Language Settings"** with a capitalized **"A"** and a Japanese character. Hit **Enter** and wait for a window to load.
 - If a window either instantly closes or an outright error pops up telling you that you cannot access the settings then your system is **blocked**. Otherwise If you can access the settings then consult this [windows page](https://support.microsoft.com/en-us/windows/manage-display-language-settings-in-windows-219f28b0-9881-cd4c-75ca-dba919c52321) on how to change your system language *rather* than this repository as that is the opposite of why this repo exists.

## ‼ Partially prohibited ‼
If you followed then previous instructions or have already known you were blocked on your system. Then follow these next bullet points to figure out how to change your settings.

 - Hit the **⊞ WinKey** and then typing **"Powershell"** <sup>(not case-sensitive)</sup>. 
 - You should see an option labeled **"Powershell"** with a blue/silver box design to the left.
 - If you hit enter and wait for a window/error, If you see a blue terminal pop up then you're good to follow the next step. If you see an error or nothing pop up then either try again or I'm sorry to say that you may be completely prohibited.
 - If you have a blue window look at what the text tells you. If you see **PS C:/** or any other letter in the same spot as **C** then you're good to move on. If you see a message telling you **"Your System Administrator has disabled Powershell"** then you may be completely blocked and probably cannot continue.
 - If you were prompted to continue here then type or copy and paste into the box `Get-ExecutionPolicy` and wait for a response. If you are prompted **"Undefined"**, **"Restricted"**, **"AllSigned"**, **"Default"** or **"RemoteSigned"** then you must continue forward. If you were given an error consult what the error tells you otherwise continue.
 - Once you figured out that you are truly prevented from running scripts based off the execution policy then continue with this command. Type into your prompt `Set-ExecutionPolicy -ExecutionPolicy Bypass` and that should allow you to run the **client.ps1** script in this repository. 

## ❌❌Completely Prohibited❌❌

Whether you already know your system is locked down every way possible, your IT department is actually doing their job, or if neither of the other instruction lists helped you may be out of luck. The only other option is to directly ask your IT department or whoever runs your system(s) and ask to allow changing of language settings. As there is no way without some privileges to run the makeshift script to act in place of the **Alt+Shift** keybind to switch between languages the right way.

# 🔧🛠 How to use client.ps1 🛠🔧

The current script is set to change between **American English** and **German German**. To change this to set it to your respective language you have to do a bit of tweaking on your end. Follow this [**windows page**](https://docs.microsoft.com/en-us/openspecs/office_standards/ms-oe376/6c085406-a698-4e12-9d4d-c3b0ee3dbc4a)  to figure out what your **language code** is. Replace some text and make it as fancy as you desire and you have a working language switcher as long as you type in the appropriate response the script asks for.
