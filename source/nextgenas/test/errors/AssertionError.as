package nextgenas.test.errors
{
	public class AssertionError extends Error
	{
		public function AssertionError(message:String)
		{
			this.message = message;
			this.stack = (new Error()).stack;
		}
	}
}