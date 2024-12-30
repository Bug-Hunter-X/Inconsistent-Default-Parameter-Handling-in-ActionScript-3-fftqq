function myFunction(param1:String, param2:int = 10):void {
  trace(param1);
  trace(param2);
}

myFunction("Hello",20); // Output: Hello, 20
myFunction("World"); // Output: World, 10

//The bug is that the default value for param2 is not applied when param1 is passed explicitly and param2 is omitted in some cases. For example, calling myFunction("World") should ideally print World and 10. However, in some ActionScript 3 compilers and runtimes the default value may not be used,leading to unexpected behavior. 
//This was a common issue in older versions of ActionScript 3 compilers or virtual machines which did not handle default parameter values correctly when a parameter was skipped in the function call.
