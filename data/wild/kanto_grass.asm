; Kanto Pokémon in grass

KantoGrassWildMons:

	def_grass_wildmons ROUTE_1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 3, PIDGEY
	db 3, RATTATA
	db 3, RATTATA
	db 2, PIDGEY
	db 2, PIDGEY
	db 3, PIDGEY
	db 3, PIDGEY
	db 4, PIDGEY
	db 4, PIDGEY
	db 5, PIDGEY
	; day
	db 3, PIDGEY
	db 3, RATTATA
	db 3, RATTATA
	db 2, RATTATA
	db 2, PIDGEY
	db 3, PIDGEY
	db 3, PIDGEY
	db 4, RATTATA
	db 4, PIDGEY
	db 5, PIDGEY
	; nite
	db 3, PIDGEY
	db 3, RATTATA
	db 3, RATTATA
	db 2, RATTATA
	db 2, RATTATA
	db 3, PIDGEY
	db 3, PIDGEY
	db 4, RATTATA
	db 4, RATTATA
	db 5, RATTATA
	end_grass_wildmons

	def_grass_wildmons ROUTE_22
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  3, RATTATA
	db  3, NIDORAN_M
	db  4, RATTATA
	db  4, NIDORAN_M
	db  2, RATTATA
	db  2, NIDORAN_M
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_F
	db  4, NIDORAN_F
	; day
	db  3, RATTATA
	db  3, NIDORAN_M
	db  4, RATTATA
	db  4, NIDORAN_M
	db  2, RATTATA
	db  2, NIDORAN_M
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_F
	db  4, NIDORAN_F
	; nite
	db  3, RATTATA
	db  3, NIDORAN_M
	db  4, RATTATA
	db  4, NIDORAN_M
	db  2, RATTATA
	db  2, NIDORAN_M
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_F
	db  4, NIDORAN_F
	end_grass_wildmons

	db -1 ; end
