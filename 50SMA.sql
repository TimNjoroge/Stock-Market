use PortfolioProject;
select
Ticker,
Company,
Sector,
MarketCap,
Price,
cast(SMA as decimal) as '% above 50 Days SMA',
convert(Date, [EarningDate]) as 'Earning Date'
from [dbo].[stocks1-11-22]
where cast(SMA as decimal) >=0
and [MarketCap] >2000
and [Volume] > 500000
and convert(Date, [EarningDate]) < getdate() 
order by cast(SMA as decimal) desc
