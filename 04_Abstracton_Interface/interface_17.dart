// Interface-like class
class Playable {
	void play() {
		print("Playing a game.");
	}
}

// Football implements Playable
class Football implements Playable {
	@override
	void play() {
		print("Playing Football.");
	}
}

// Cricket implements Playable
class Cricket implements Playable {
	@override
	void play() {
		print("Playing Cricket.");
	}
}

void main() {
	Football football = Football();
	Cricket cricket = Cricket();

	football.play();
	cricket.play();
}
