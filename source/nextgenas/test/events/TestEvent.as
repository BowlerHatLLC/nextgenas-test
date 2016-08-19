package nextgenas.test.events
{
	public class TestEvent
	{
		public static const TEST_RUN_START:String = "testRunStart";
		public static const TEST_RUN_COMPLETE:String = "testRunComplete";
		public static const TEST_RUN_FAIL:String = "testRunFail";
		public static const TEST_START:String = "testStart";
		public static const TEST_COMPLETE:String = "testComplete";
		public static const TEST_FAIL:String = "testFail";

		public function TestEvent(type:String, testName:String = null, error:Error = null)
		{
			this._type = type;
			this._testName = testName;
			this._error = error;
		}

		private var _type:String;

		public function get type():String
		{
			return this._type;
		}

		private var _testName:String;

		public function get testName():String
		{
			return this._testName;
		}

		private var _error:Error;

		public function get error():Error
		{
			return this._error;
		}
	}
}