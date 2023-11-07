Persistent
OnClipboardChange(ClipChanged)

ClipChanged(DataType) {
	if DataType == 1
		oldClip := A_Clipboard 
		result := RegExReplace(oldClip,"(?<=\/\/)(?!fx)twitter(?=.com)","fxtwitter")
		if result
			A_Clipboard := result
}