# sPoNgEbOb case
This utility was made to create a quick tool for pasting or typing a sPoNgEbOb case into any chat window on Linux, using Bash.

## Installation
Just put `spongebob.sh` in your path, bind it to anything you want.

## Usage
Invoking `spongebob.sh` will open up a popup and ask for a text. It will be copied to the clipboard or typed into your active window using sPoNgEbOb case.

If the dialog is cancelled, nothing will be copied to the clipboard or typed.

By using the `--clipboard` option the text will be copied to the clipboard. Otherwise it will be typed back to the last active window.

## Example:
`hello world -> hElLo wOrLd`

## Dependencies
* zenity
* bash
* xclip
* xdotool