package org.mock4as.samples
{
	import org.mock4as.Mock;
	
	public class MockSomeInterface extends Mock implements ISomeInterface
	{
		public function MockSomeInterface()
		{
			super();
		}
		
		public function doSomething():void
		{
			record("doSomething");
		}
		
		public function doSomethingElse(someStringArg:String):void
		{
			record("doSomethingElse", someStringArg);
		}
		
		public function doSomethingWith2Args(firstArg:String, secondArg:XML):void
		{
			record("doSomethingWith2Args", firstArg, secondArg);
		}
		
		public function doSomethingAndReturnXML(inNodeName:String):XML
		{
			record("doSomethingAndReturnXML", inNodeName);
			return expectedReturnFor("doSomethingAndReturnXML") as XML;
		}
		
		public function anotherMethodWithNoArgs():void
		{
			record("anotherMethodWithNoArgs");
		}
		
	}
}