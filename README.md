# Angular Filedrop directive
A simple directive to expose an element to be the target for dropping files from the client's machine.

## How it works
The directive binds some events to the element where the directive has been put on. When a file is dropped in the element an angular function (defined as an element attribute) is called with the dropped file.
When a file is dragged over the element, the CSS class ***drag-over*** is added to the element. This class is removed when the dragging move finishes (drop or drag leave)

## Configuration
1. Put the ***filedrop*** directive in a HTML element
2. Put the ***on-file-drop*** element attribute pointing to a function contained in the parent scope) of the directive

## Example
`<div id="file-drop" filedrop on-file-drop="fileDropped(file)">`
