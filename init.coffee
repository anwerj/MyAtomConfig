# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"
#    snippetBody = '<${1:div}>$2</${1:div}>$0'

atom.commands.add 'atom-text-editor', 'jsnippet:logger-kill', ->
    snippetBody = '_logger.kill(${1:"KILL"});'
    atom.packages.activePackages.snippets?.mainModule?.insert snippetBody


atom.commands.add 'atom-text-editor', 'jsnippet:logger-info', ->
    snippetBody = '_logger.info(${1:"I AM HERE"});'
    atom.packages.activePackages.snippets?.mainModule?.insert snippetBody


atom.commands.add 'atom-text-editor', 'jsnippet:logger-debug', ->
    snippetBody = '_logger.debug(${1:"I AM HERE"});'
    atom.packages.activePackages.snippets?.mainModule?.insert snippetBody


atom.commands.add 'atom-text-editor', 'sniphpet:mc-pre', ->
    snippetBody = '\\\\mc::pre(${1:"_SERVER"});'
    atom.packages.activePackages.snippets?.mainModule?.insert snippetBody


atom.commands.add 'atom-text-editor', 'sniphpet:mc-js', ->
    snippetBody = '\\\\mc::js(${1:"_SERVER"});'
    atom.packages.activePackages.snippets?.mainModule?.insert snippetBody
