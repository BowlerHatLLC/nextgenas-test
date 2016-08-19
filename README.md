# nextgenas-test

An automated testing library for transpiled ActionScript.

## Defining Tests

Add `[Test]` metadata to a function to mark it as a test. The `TestRunner` will automatically detect this function when it runs.

``` actionscript
package
{
	import nextgenas.test.assert.Assert;

	public class SomeComponentTests
	{
		[Test]
		public function testSomethingImportant():void
		{
			var expectedValue:Number = 1;
			var actualValue:Number = 2 - 1;
			Assert.strictEqual(expectedValue, actualValue,
				"The values are not equal!");
		}
	}
}
```

### Running Tests

Create a `TestRunner` and pass all classes with tests to the `run()` method.

``` actionscript
package
{
	import nextgenas.test.TestRunner;

	public class ProjectTests
	{
		public function ProjectTests()
		{
			this._runner = new TestRunner();

			//will print result of tests to the console with trace()
			new TraceListener(this._runner);

			this._runner.run(new <Class>
			[
				SomeComponentTests
				//add more tests here
			]);
		}

		private var _runner:TestRunner;
	}
}
```

A `TraceListener` may be created to print results to the console using `trace()`. Alternatively, you can listen for events dispatched by the `TestRunner` and respond with custom logic.

---

Want to see more ActionScript libraries like *nextgenas-test*? Please [become a patron](http://patreon.com/josht) and support the next generation of ActionScript development on the web -- without a plugin!

[NextGen ActionScript by Josh Tynjala on Patreon](http://patreon.com/josht).

Special thanks to the following sponsors for their generous support:

* [YETi CGI](http://yeticgi.com/)