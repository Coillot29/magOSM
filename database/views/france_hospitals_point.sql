-------------
--hospitals--
-------------

-- ! UNION DES POINTS ET DES POLYGONES --
DROP MATERIALIZED VIEW IF EXISTS france_hospitals_point;
CREATE MATERIALIZED VIEW france_hospitals_point AS 
	SELECT
		osm_id,
		amenity,
		name,
		tags->'short_name' AS short_name,
		tags->'official_name' AS official_name,
		tags->'alt_name' AS alt_name,
		tags->'old_name' AS old_name,
		operator,
		tags->'operator:type' as "operator-type",		
		tags->'emergency' AS "emergency",
		tags->'capacity' AS "capacity",
		tags->'wheelchair' AS "wheelchair",
		tags->'ref:FR:FINESS' AS "ref-FR-FINESS",
		tags->'type:FR:FINESS' AS "type-FR-FINESS",
		tags->'ref:FR:NAF' AS "ref-FR-NAF",
		tags->'ref:FR:SIRET' AS "ref-FR-SIRET",
		tags->'contact:website' AS "contact-website",
		tags->'url' AS url,
		tags->'phone' AS phone,
		tags->'contact:phone' AS "contact-phone",
		tags->'fax' AS "fax",
		tags->'contact:fax' AS "contact-fax",
		tags->'email' as "email",
		tags->'contact:email' AS "contact-email",
		"addr:housename" AS "addr-housename",
		"addr:housenumber" AS "addr-housenumber",
		tags->'addr:street' AS "addr-street",
		tags->'addr:city' AS "addr-city",
		tags->'addr:postcode' AS "addr-postcode",
		tags->'wikidata' as "wikidata",
		tags->'wikipedia' as "wikipedia",
		tags->'description' AS description,
		tags->'opening_hours' AS opening_hours,
		tags->'source' AS "source",
		tags->'note' AS "note",
		/*tags->'osm_user' AS "osm_user",
		tags->'osm_uid' AS "osm_uid",
		tags->'osm_changeset' AS "osm_changeset",*/
		'node' AS "osm_type", 
		tags->'osm_version' AS "osm_version",
		tags->'osm_timestamp' AS "osm_timestamp",
		way,
		'' AS "osm_original_geom"

	FROM france_point 
	WHERE amenity='hospital'
	UNION
  SELECT
		osm_id,
		amenity,
		name,
		tags->'short_name' AS short_name,
		tags->'official_name' AS official_name,
		tags->'alt_name' AS alt_name,
		tags->'old_name' AS old_name,
		operator,
		tags->'operator:type' as "operator-type",		
		tags->'emergency' AS "emergency",
		tags->'capacity' AS "capacity",
		tags->'wheelchair' AS "wheelchair",
		tags->'ref:FR:FINESS' AS "ref-FR-FINESS",
		tags->'type:FR:FINESS' AS "type-FR-FINESS",
		tags->'ref:FR:NAF' AS "ref-FR-NAF",
		tags->'ref:FR:SIRET' AS "ref-FR-SIRET",
		tags->'contact:website' AS "contact-website",
		tags->'url' AS url,
		tags->'phone' AS phone,
		tags->'contact:phone' AS "contact-phone",
		tags->'fax' AS "fax",
		tags->'contact:fax' AS "contact-fax",
		tags->'email' as "email",
		tags->'contact:email' AS "contact-email",
		"addr:housename" AS "addr-housename",
		"addr:housenumber" AS "addr-housenumber",
		tags->'addr:street' AS "addr-street",
		tags->'addr:city' AS "addr-city",
		tags->'addr:postcode' AS "addr-postcode",
		tags->'wikidata' as "wikidata",
		tags->'wikipedia' as "wikipedia",
		tags->'description' AS description,
		tags->'opening_hours' AS opening_hours,
		tags->'source' AS "source",
		tags->'note' AS "note",
		/*tags->'osm_user' AS "osm_user",
		tags->'osm_uid' AS "osm_uid",
		tags->'osm_changeset' AS "osm_changeset",*/
		'way' AS "osm_type", 
		tags->'osm_version' AS "osm_version",
		tags->'osm_timestamp' AS "osm_timestamp",
		ST_Centroid(way) AS "way",
		ST_AsEWKT(way) AS "osm_original_geom"
	FROM france_polygon 
	WHERE amenity='hospital';
GRANT SELECT ON TABLE france_hospitals_point TO isogeo;