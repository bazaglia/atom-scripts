# select all before auto ident
atom.commands.add 'atom-text-editor', 'custom:reformat', ->
    editor = atom.workspace.getActiveTextEditor();
    oldRanges = editor.getSelectedBufferRanges();
    editor.selectAll();
    atom.commands.dispatch(atom.views.getView(editor), 'editor:auto-indent')
    editor.setSelectedBufferRanges(oldRanges);

