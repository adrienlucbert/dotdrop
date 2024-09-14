SELECT
	line_item_id, campaign_id, campaign_name, deal_id, start_date, end_date, agency_name, advertiser_name, line_item_name,
	budget, dsp_fee_rate, currency_code, deal_cpm, change_rate
FROM dbt_dsp.br_guaranteed_line_item_running bglir
--where line_item_id = '7afd84b8-947e-44f6-acb4-207731f2715e'