```actionscript
import flash.events.Event;

function someFunction():void{
  //Attach an event listener
  myObject.addEventListener(Event.CLICK, myEventHandler);
  //Later, remove the event listener (before destroying the object or after a specific condition)
  myObject.removeEventListener(Event.CLICK, myEventHandler); 
}

function myEventHandler(e:Event):void{
  trace("Event Handled!");
}
// Properly handle removing an event listener using a reference to the original handler function.
// Ensure myEventHandler is in scope.

//Best Practice: Store the listener reference when it is added
var myListener:Function = myEventHandler;
myObject.addEventListener(Event.CLICK, myListener);
myObject.removeEventListener(Event.CLICK, myListener);
```