class CVO_Economy {
	tag = "cvo_economy";

	class Setters {
		file = "cvo\economy\fnc";

		class setPlayerMoney;
		class changePlayerMoney;
	};

	class Init {
		file = "cvo\economy\fnc";

		class initServer;
	};

	class DB {
		class savePlayerDataLocal;
		class savePlayerDataServer;

		class loadPlayerDataLocal;
		class loadPlayerDataServer;
	};
};
