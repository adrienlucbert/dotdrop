select
	nbtr.reason,
	b.ssp_name,
	count(*),
	min(b.raw_bid_request)
from rtb.bids b
array join no_bid_targeting_reasons as nbtr
where
	nbtr.targeting_id = ''
	and b.indexation_date > now() - 3600 * 24
group by nbtr.reason, b.ssp_name;