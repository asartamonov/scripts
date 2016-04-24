editor.beginUndoAction()

#	retreive text to replace from user selection in editor
selected = editor.getSelText()
if selected:
	#	popup window for user input
	newword = notepad.prompt('Type replacement:', 'Replace selected text with', '')
	#	build regex from user input to replace selected text
	expression = '(?<![\d\w])' + selected + '(?![\d\w])'
	#	perform replacement based on regex (from selection) and new word from user input
	editor.rereplace(expression, newword)

editor.endUndoAction()

#	Documentation at:
#	http://npppythonscript.sourceforge.net/docs/latest/scintilla.html
#	http://npppythonscript.sourceforge.net/docs/latest/notepad.html