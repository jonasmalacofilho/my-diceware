

class WinRandom {
	
	static inline var MAX = 0xFFFFFFF;
	public static
	function randomUInt( ?max:Null<Int> ) {
		var rand = Std.random(MAX);
		
		if ( rand < 0 )
			rand = ~rand;
		return max != null ? rand & (max-1) : rand;
	}

	public static
	function randomInt( ?mask:Null<Int> ) {
		var rand = Std.random(MAX);
		return mask != null ? rand & mask : rand;
	}
}
