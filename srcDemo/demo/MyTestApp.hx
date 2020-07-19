package demo;

class MyTestApp {
	var arrow = (a) -> a + 1;

	public function new(val:Int, b:Bool) {
		trace("hello app");
		noBody();
		trace('${noBody2(val)}');
		noBody3(true);
		noBody3(false);
		noBody5(11);
		moduleBody();
		moduleBody();
		moduleBody();
		moduleBody();
		moduleBody();
		trace(arrow(val));
		noBody4(function(val) {
			noBody5(11);
			return '${noBody2(val)}';
		});
		initTranslations();
		noCover();
		getInt(null);
		getInt("100");
		whileLoop();
		var sortCols = ["xxx"];

		var orderBy:String = sortCols.map(function(value:String):String {
			return value;
		}).join(", ");
		trace(orderBy);
		sortColsFunc(sortCols);
		switchVal(1);
		switchVal(2);
		opBoolOr(1);
		opBoolOr(2);
		opBoolOr(4);

		if (false)
			Sys.exit(0);
	}

	public function switchVal(val:Int) {
		switch (val) {
			case 0:
				trace("000");
			case 1:
				trace("111");
			case 2:
				trace("222");
			default:
				trace("???");
		}
		return (true == false);
	}

	public function opBoolOr(val:Int) {
		if ((val == 1) // first condition
			|| (val == 2) // second condition
			|| (val == 3)) // third condition
		{
			trace(true);
			return;
		}
		trace(false);
	}

	public static inline function sortColsFunc(sortCols):String {
		var orderBy:String = sortCols.map(function(value:String):String {
			return value;
		}).join(", ");
		return orderBy;
	}

	public static function initTranslations():Void {
		var count = 0;
		while (count++ < 10) {
			if (count < 5) {
				continue;
			}
		}
		count = 11;
	}

	function noBody()
		trace("nobody");

	inline function noBody3(val:Bool) {
		if (val) {
			moduleBody();
			moduleBody();
			return;
		}
		trace("nobody");
	}

	function noBody2(val:Int):Int
		return val * 2;

	inline function noBody5(val:Int)
		return val * 2;

	function noBody4(cb:(val:Int) -> String) {
		trace(cb(1));
		trace(cb(2));
	}

	public function getInt(field:String):Null<Int> {
		var value:Null<Int> = 10;
		if (field == null) {
			return null;
		}
		return value;
	}

	public function noCover() {
		if (true) {
			return;
		}
		trace("unreachable");
	}

	public inline function whileLoop():Null<Int> {
		while (true) {
			return null;
		}
	}

	static function main() {
		new MyTestApp(123, true);
	}
}

function moduleBody()
	trace("module level no body block");

function download():String
	return "download";
