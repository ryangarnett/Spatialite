update poly_50G_23
	set prop_code = (select aroll from pilot_parcels
		where st_intersects(st_centroid(poly_50G_23.geom), pilot_parcels.geom))
