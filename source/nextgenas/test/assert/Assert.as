package nextgenas.test.assert
{
	import nextgenas.test.errors.AssertionError;

	public class Assert
	{
		public static function strictEqual(actual:*, expected:*, message:String = null):void
		{
			if(actual === expected)
			{
				return;
			}
			throw new AssertionError(message);
		}

		public static function notStrictEqual(actual:*, expected:*, message:String = null):void
		{
			if(actual !== expected)
			{
				return;
			}
			throw new AssertionError(message);
		}

		public static function equal(actual:*, expected:*, message:String = null):void
		{
			if(actual == expected)
			{
				return;
			}
			throw new AssertionError(message);
		}

		public static function notEqual(actual:*, expected:*, message:String = null):void
		{
			if(actual != expected)
			{
				return;
			}
			throw new AssertionError(message);
		}

		public static function true(actual:*, message:String = null):void
		{
			if(actual === true)
			{
				return;
			}
			throw new AssertionError(message);
		}

		public static function false(actual:*, message:String = null):void
		{
			if(actual === false)
			{
				return;
			}
			throw new AssertionError(message);
		}

		public static function null(actual:*, message:String = null):void
		{
			if(actual === null)
			{
				return;
			}
			throw new AssertionError(message);
		}

		public static function notNull(actual:*, message:String = null):void
		{
			if(actual !== null)
			{
				return;
			}
			throw new AssertionError(message);
		}

		public static function undefined(actual:*, message:String = null):void
		{
			if(actual === undefined)
			{
				return;
			}
			throw new AssertionError(message);
		}

		public static function defined(actual:*, message:String = null):void
		{
			if(actual !== undefined)
			{
				return;
			}
			throw new AssertionError(message);
		}

		public static function NaN(actual:*, message:String = null):void
		{
			if(isNaN(actual))
			{
				return;
			}
			throw new AssertionError(message);
		}

		public static function notNaN(actual:*, message:String = null):void
		{
			if(!isNaN(actual))
			{
				return;
			}
			throw new AssertionError(message);
		}
	}
}