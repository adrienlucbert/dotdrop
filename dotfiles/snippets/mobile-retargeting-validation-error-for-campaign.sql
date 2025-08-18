select so.* from dbt_services.service_orders so
left join dbt_services.order_updates ou on so.id = ou.service_order_id
where service_id=31 and metadata->>'campaign_end_date' is null
and (ou.id is null or ou.id = (
	select id
	from dbt_services.order_updates ou
	where ou.service_order_id = so.id
	order by date_created desc
	limit 1
))
and so.date_created > '2024-01-01'
and (ou.status is null or (ou.status::text not in ('canceled')));

update dbt_services.service_orders so
set metadata = jsonb_set(metadata::jsonb, '{campaign_end_date}', CONCAT('"', metadata->>'retargeting_end_date', '"')::jsonb, true)::json
where campaign_uuid = 'CAMPAIGN_UUID'
and service_id=31;