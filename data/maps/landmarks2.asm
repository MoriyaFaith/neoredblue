Landmarks2:
; entries correspond to constants/landmark_constants.asm
	table_width 4, Landmarks2
	landmark  -8, -16, SpecialMapName2
	landmark 140, 100, NewBarkTownName2
	landmark 128, 100, Route29Name2
	landmark 100, 100, CherrygroveCityName2
	landmark 100,  80, Route30Name2
	landmark  96,  60, Route31Name2
	landmark  84,  60, VioletCityName2
	landmark  85,  58, SproutTowerName2
	landmark  84,  92, Route32Name2
	landmark  76,  76, RuinsOfAlphName2
	landmark  84, 124, UnionCaveName2
	landmark  82, 124, Route33Name2
	landmark  68, 124, AzaleaTownName2
	landmark  70, 122, SlowpokeWellName2
	landmark  52, 120, IlexForestName2
	landmark  52, 112, Route34Name2
	landmark  52,  92, GoldenrodCityName2
	landmark  50,  92, RadioTowerName2
	landmark  52,  76, Route35Name2
	landmark  52,  60, NationalParkName2
	landmark  64,  60, Route36Name2
	landmark  68,  52, Route37Name2
	landmark  68,  44, EcruteakCityName2
	landmark  70,  42, TinTowerName2
	landmark  66,  42, BurnedTowerName2
	landmark  52,  44, Route38Name2
	landmark  36,  48, Route39Name2
	landmark  36,  60, OlivineCityName2
	landmark  38,  62, LighthouseName2
	landmark  28,  56, BattleTowerName2
	landmark  28,  64, Route40Name2
	landmark  28,  92, WhirlIslandsName2
	landmark  28, 100, Route41Name2
	landmark  20, 100, CianwoodCityName2
	landmark  92,  44, Route42Name2
	landmark  84,  44, MtMortarName2
	landmark 108,  44, MahoganyTownName2
	landmark 108,  36, Route43Name2
	landmark 108,  28, LakeOfRageName2
	landmark 120,  44, Route44Name2
	landmark 130,  38, IcePathName2
	landmark 132,  44, BlackthornCityName2
	landmark 132,  36, DragonsDenName2
	landmark 132,  64, Route45Name2
	landmark 112,  72, DarkCaveName2
	landmark 124,  88, Route46Name2
	landmark 148,  68, SilverCaveName2
	assert_table_length KANTO_LANDMARK
	landmark  52, 108, PalletTownName2
	landmark  52,  92, Route1Name2
	landmark  52,  76, ViridianCityName2
	landmark  52,  68, Route2Name2
	landmark  52,  60, ViridianForestName2
	landmark  52,  52, PewterCityName2
	landmark  64,  52, Route3Name2
	landmark  76,  52, MtMoonName2
	landmark  88,  52, Route4Name2
	landmark 100,  52, CeruleanCityName2
	landmark 100,  44, Route24Name2
	landmark 108,  36, Route25Name2
	landmark 100,  60, Route5Name2
	landmark 108,  76, UndergroundName2
	landmark 100,  76, Route6Name2
	landmark 100,  84, VermilionCityName2
	landmark  88,  60, DiglettsCaveName2
	landmark  88,  68, Route7Name2
	landmark 116,  68, Route8Name2
	landmark 116,  52, Route9Name2
	landmark 132,  52, RockTunnelName2
	landmark 132,  56, Route10Name2
	landmark 132,  60, PowerPlantName2
	landmark 132,  68, LavenderTownName2
	landmark 140,  68, LavRadioTowerName2
	landmark  76,  68, CeladonCityName2
	landmark 100,  68, SaffronCityName2
	landmark 116,  84, Route11Name2
	landmark 132,  80, Route12Name2
	landmark 124, 100, Route13Name2
	landmark 116, 112, Route14Name2
	landmark 104, 116, Route15Name2
	landmark  68,  68, Route16Name2
	landmark  68,  92, Route17Name2
	landmark  80, 116, Route18Name2
	landmark  92, 116, FuchsiaCityName2
	landmark  92, 108, SafariZoneName2
	landmark  92, 128, Route19Name2
	landmark  76, 132, Route20Name2
	landmark  68, 132, SeafoamIslandsName2
	landmark  52, 132, CinnabarIslandName2
	landmark  48, 128, PokemonMansionName2
	landmark  52, 120, Route21Name2
	landmark  36,  76, Route22Name2
	landmark  28,  52, VictoryRoadName2
	landmark  28,  60, Route23Name2
	landmark  28,  36, IndigoPlateauName2
	landmark  92,  44, CeruleanCaveName2
	landmark  28,  92, Route26Name2
	landmark  20, 100, Route27Name2
	landmark  12, 100, TohjoFallsName2
	landmark  20,  68, Route28Name2
	landmark 140, 116, FastShipName2
	assert_table_length NUM_LANDMARKS

NewBarkTownName2:     db "NEW BEGINNINGS@"
CherrygroveCityName2: db "FRAGRANT FLOWERS@"
VioletCityName2:      db "NOSTALGIC SCENTS@"
AzaleaTownName2:      db "LIVING HAPPILY@"
GoldenrodCityName2:   db "OPULENT CHARM@"
EcruteakCityName2:    db "HISTORICAL CITY@"
OlivineCityName2:     db "SEA BREEZE¯PORT@"
CianwoodCityName2:    db "CRASHING WAVES@"
MahoganyTownName2:    db "HOME OF THE NINJA@"
BlackthornCityName2:  db "MOUNTAIN RETREAT@"
LakeOfRageName2:      db "@"
SilverCaveName2:      db "THE FINAL STEP@"
SproutTowerName2:     db "TOWER OF UNITY@"
RuinsOfAlphName2:     db "@"
UnionCaveName2:       db "@"
SlowpokeWellName2:    db "@"
RadioTowerName2:      db "@"
PowerPlantName2:      db "@"
NationalParkName2:    db "@"
TinTowerName2:        db "@"
LighthouseName2:      db "LIGHTHOUSE@"
WhirlIslandsName2:    db "@"
MtMortarName2:        db "@"
DragonsDenName2:      db "@"
IcePathName2:         db "@"
NotApplicableName2:   db "N/A@" ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName2:      db "SHADES OF JOURNEY@"
ViridianCityName2:    db "ETERNALLY GREEN@"
PewterCityName2:      db "STONE GREY@"
CeruleanCityName2:    db "MYSTERIOUS BLUE@"
LavenderTownName2:    db "NOBLE PURPLE@"
VermilionCityName2:   db "EXQUISITE SUNSETS@"
CeladonCityName2:     db "RAINBOW DREAMS@"
SaffronCityName2:     db "GOLDEN COMMERCE@"
FuchsiaCityName2:     db "PASSION PINK@"
CinnabarIslandName2:  db "BURNING DESIRE@"
IndigoPlateauName2:   db "ULTIMATE GOAL@"
VictoryRoadName2:     db "@"
MtMoonName2:          db "@"
RockTunnelName2:      db "@"
LavRadioTowerName2:   db "@"
SilphCoName2:         db "@" ; unreferenced
SafariZoneName2:      db "@" ; unreferenced
SeafoamIslandsName2:  db "@"
PokemonMansionName2:  db "@" ; unreferenced
CeruleanCaveName2:    db "UNKOWN DUNGEON@" ; unreferenced
Route1Name2:          db "@"
Route2Name2:          db "@"
Route3Name2:          db "@"
Route4Name2:          db "@"
Route5Name2:          db "@"
Route6Name2:          db "@"
Route7Name2:          db "@"
Route8Name2:          db "@"
Route9Name2:          db "@"
Route10Name2:         db "@"
Route11Name2:         db "@"
Route12Name2:         db "SILENCE BRIDGE@"
Route13Name2:         db "@"
Route14Name2:         db "@"
Route15Name2:         db "@"
Route16Name2:         db "CYCLING ROAD@"
Route17Name2:         db "CYCLING ROAD@"
Route18Name2:         db "CYCLING ROAD@"
Route19Name2:         db "@"
Route20Name2:         db "@"
Route21Name2:         db "@"
Route22Name2:         db "@"
Route23Name2:         db "THE FINAL ROAD@"
Route24Name2:         db "NUGGET BRIDGE@"
Route25Name2:         db "@"
Route26Name2:         db "@"
Route27Name2:         db "@"
Route28Name2:         db "@"
Route29Name2:         db "@"
Route30Name2:         db "@"
Route31Name2:         db "@"
Route32Name2:         db "@"
Route33Name2:         db "@"
Route34Name2:         db "@"
Route35Name2:         db "@"
Route36Name2:         db "@"
Route37Name2:         db "@"
Route38Name2:         db "@"
Route39Name2:         db "@"
Route40Name2:         db "@"
Route41Name2:         db "@"
Route42Name2:         db "@"
Route43Name2:         db "@"
Route44Name2:         db "@"
Route45Name2:         db "@"
Route46Name2:         db "@"
DarkCaveName2:        db "@"
IlexForestName2:      db "@"
BurnedTowerName2:     db "@"
FastShipName2:        db "@"
ViridianForestName2:  db "@"
DiglettsCaveName2:    db "@"
TohjoFallsName2:      db "@"
UndergroundName2:     db "@"
BattleTowerName2:     db "@"
SpecialMapName2:      db "@"
