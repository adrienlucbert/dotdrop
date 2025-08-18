select array_agg(inf.frame_uuid) as frame_uuids, array_agg(inf.frame_external_id) as frame_external_uuids
from dbt_dsp.line_item li
join dbt_dsp.dsp_frames_segments dfs using (segment_uuid)
join i18n_frames inf using(frame_uuid)
where
	li.id=''
	and not dfs.is_draft