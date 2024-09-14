SELECT
	line_item_id, directus_file_id, creative_id, width, height, weight, name, type, duration, status, url
FROM dbt_dsp.br_guaranteed_line_item_media bglim
where
  true -- line_item_id=''
  and bglim.status <> 'REFUSED'::dbt_dsp.media_ssp_upload_status
  and line_item_id is not null
  and directus_file_id is not null
  and creative_id is not null
  and width is not null
  and height is not null
  and weight is not null
  and name is not null
  and type is not null
  and status is not null
  and url is not null