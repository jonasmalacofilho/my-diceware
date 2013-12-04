class DevRandom {

	public static
	function randomUInt( ?max:Null<Int> ) {
		var rand = getStream().readInt32();
		if ( rand < 0 )
			rand = ~rand;
		return max != null ? rand & (max-1) : rand;
	}

	public static
	function randomInt( ?mask:Null<Int> ) {
		var rand = getStream().readInt32();
		return mask != null ? rand & mask : rand;
	}

	public static
	function getStream() {
		if ( stream == null )
			stream = sys.io.File.read( "/dev/random", true );
		return stream;
	}

	static
	var stream:haxe.io.Input;

}
