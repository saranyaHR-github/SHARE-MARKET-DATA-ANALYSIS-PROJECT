select * from share_market.nasdaq100_market_cap;
select * from share_market.nasdaq100_metrics_ratios;

---- `Determine the market capitalization of the company in the IT sector (from Nasdaq 100) with the greatest LastSale value`
select * from share_market.`combined data`;

select `Market_ Cap`, company, sector from share_market.`combined data`
where sector="Information Technology" ORDER BY `Last_Sale` DESC
LIMIT 3;

---- Find the number of companies from each industry in the Nasdaq 100 Market cap.xlsx
SELECT sector, COUNT(*) Numofcompanies
FROM share_market.`combined data`
GROUP BY sector;

--- List the top 5 companies based on market capitalization
select company from share_market.`combined data` order by `Market_ Cap` limit 5;

---- Create a table with sectors and subsectors showcasing the count of companies in each subsector
CREATE TABLE share_market.sector_subsector_count
SELECT sector, subsector, COUNT(*) as Numofcompanies
FROM share_market.`combined data`
GROUP BY sector, subsector

SELECT * FROM share_market.sector_subsector_count;



