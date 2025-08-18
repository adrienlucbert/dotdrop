with creas as (
select distinct msu.creative_id from dbt_dsp.media_ssp_upload msu
join dbt_dsp.line_item_medias_assignment lima on lima.directus_files_id = msu.directus_file_id
join dbt_dsp.line_item li on li.id = lima.line_item_id
where true
-- and li.campaign_uuid = ''
--and li.id = ''
)
select msu.*, df.* from creas
join dbt_dsp.media_ssp_upload msu using (creative_id)
join dbt_dsp.directus_files df on df.id = msu.directus_file_id