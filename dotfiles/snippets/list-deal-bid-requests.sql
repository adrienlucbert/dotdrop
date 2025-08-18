select
	toDate(b.bid_request_date) as bid_request_date,
	status,
	no_bid_reason,
	count(*) as count,
	sum(net_cost) as net_cost
from rtb.bids b
array join bid_request_deals
where
	b.indexation_date > now() - 3600 * 24 * 7
	and bid_request_deals.deal_id = ''
group by 1, 2, 3
order by 1 asc;