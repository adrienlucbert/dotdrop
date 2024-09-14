select msu.*, df.*
from dbt_dsp.line_item li
join dbt_dsp.line_item_medias_assignment lima on lima.line_item_id = li.id 
join dbt_dsp.directus_files df on df.id = lima.directus_files_id
join dbt_dsp.media_ssp_upload msu on msu.directus_file_id = df.id
--where li.id = ''