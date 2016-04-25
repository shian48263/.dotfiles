'use strict';

define([
    'base/js/namespace',
    'base/js/events',
    'notebook/js/cell',
    'codemirror/addon/display/rulers',
    'codemirror/addon/selection/active-line',
    'codemirror/keymap/sublime'
  ],
  function(cell, events, IPython) {
    events.on('app_initialized.NotebookApp', function() {
      cell.Cell.options_default.cm_config.indentUnit = 2;
      cell.Cell.options_default.cm_config.keyMap = 'sublime';
      cell.Cell.options_default.cm_config.lineNumbers = true;
      cell.Cell.options_default.cm_config.lineWrapping = true;
      cell.Cell.options_default.cm_config.rulers = [{
        column: 79,
        className: 'ipynb_ruler'
      }, {
        column: 100,
        className: 'ipynb_ruler'
      }];
    });
    cell.Cell.options_default.cm_config.styleActiveLine = true;
    events.on('notebook_loaded.Notebook', function() {
      IPython.notebook.set_autosave_interval(0);
    });
  }
);
