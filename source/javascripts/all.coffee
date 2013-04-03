//= require vendor/jquery-1.8.3
//= require vendor/ember-script

$ ->
  $('.example').each ->
    $emberscript = $(this).find('.emberscript')
    $javascript = $(this).find('.javascript')

    updateJS = ->
      try
        js = EmberScript.em2js(editor.getValue(), bare: true, optimise: false)
        output.setValue(js)
        output.selection.clearSelection()
      catch e

    editor = ace.edit($emberscript[0])
    editor.getSession().setMode("ace/mode/coffee")
    editor.getSession().setUseWorker(false) # removes errors
    editor.getSession().setUseSoftTabs(true)
    editor.getSession().setTabSize(2)
    editor.getSession().on 'change', ->
      updateJS()

    output = ace.edit($javascript[0])
    output.getSession().setMode("ace/mode/javascript")
    editor.getSession().setUseWorker(false) # removes errors
    editor.getSession().setUseSoftTabs(true)
    editor.getSession().setTabSize(2)
    output.setHighlightActiveLine(false)
    output.setReadOnly(true)

    updateJS()