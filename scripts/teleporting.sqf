hint "Скрипт запрацював";

fnc_option1 = {
	hint "Це функція для Варіанту 1";
};

fnc_option2 = {
	hint "Це функція для Варіанту 2";
};

fnc_option3 = {
	hint "Це функція для Варіанту 3";
};

_this addAction [
	"TP to Main Base",
	fnc_option1
];

_this addAction [
	"TP to Side Base",
	fnc_option2
];

_this addAction [
	"TP to City Base",
	fnc_option3
];