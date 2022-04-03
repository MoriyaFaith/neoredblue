; Crystal does not support SGB, so this is unused.

MapGroupRoofSGBPalInds:
; entries correspond to map groups
	table_width 1, MapGroupRoofSGBPalInds
	db PREDEFPAL_ROUTES
	db PREDEFPAL_FUCHSIA
	db PREDEFPAL_CIANWOOD
	db PREDEFPAL_PALLET
	db PREDEFPAL_VIRIDIAN
	db PREDEFPAL_PEWTER
	db PREDEFPAL_INDIGO
	db PREDEFPAL_DUNGEONS
	assert_table_length NUM_MAP_GROUPS + 1
