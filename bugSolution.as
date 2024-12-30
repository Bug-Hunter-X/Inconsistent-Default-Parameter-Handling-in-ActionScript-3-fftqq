function myFunction(param1:String, param2:int = 10):void {
  trace(param1);
  trace(param2);
}

//Corrected way to handle default parameters, by providing a parameter or using a check.
function myFunctionCorrected(param1:String, param2:int):void {
  param2 = (param2 == undefined) ? 10 : param2;
  trace(param1);
  trace(param2);
}

myFunction("Hello",20); // Output: Hello, 20
myFunction("World"); // Output: World, 10

myFunctionCorrected("Hello",20); // Output: Hello, 20
myFunctionCorrected("World"); // Output: World, 10
//In this corrected version, we explicitly check for undefined param2 and assign default value 10 if needed.  This avoids the inconsistencies seen in the original code.