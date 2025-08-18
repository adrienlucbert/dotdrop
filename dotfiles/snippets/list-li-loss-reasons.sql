select
	loss_reason,
	ssp_name,
	count(*),
	first_value(b.raw_bid_request),
	first_value(b.raw_bid_response)
from rtb.bids b
join rtb.loss_reasons lr on lr.ssp = b.ssp_name and lr.code = b.loss_reason
	where targeting_id = '<li_uuid>'
	and status = 'LOST'
	and b.indexation_date > now() - 3600 * 24
group by loss_reason, ssp_name