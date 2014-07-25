angular.module('adperezmoralesDirectives',[])
.directive("filedrop", () ->
        restrict: "EA"
	#Isolated scope
        scope: 
	       	onFileDrop : "&"
        link: (scope, element, attrs) ->
            #When an item is dragged over the document, add .dragOver to the element
            onDragOver = (e) ->
                e.preventDefault()
                $(element).addClass "drag-over"

            #When the user leaves the window, cancels the drag or drops the item
            onDragEnd = (e) ->
                e.preventDefault()
                $(element).removeClass "drag-over"

            #When a file is dropped on the element 
            loadFile = (file) ->
                scope.onFileDrop {file: file}
		
	    #Dragging begins. Binding callback
            $(element).bind("dragover", onDragOver)

            #Dragging ends. Binding callback
            element.bind("dragleave", onDragEnd)
            element.bind("drop", (e) ->
            				onDragEnd(e)
            				loadFile e.originalEvent.dataTransfer.files[0]
            			)
)
