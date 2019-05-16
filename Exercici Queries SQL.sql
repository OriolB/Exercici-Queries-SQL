

select count(*) as 'total' from Flights;

select Origin, AVG(ArrDelay) as 'prom_arribades', AVG(DepDelay) as 'prom_sortides'
from Flights group by Origin;

select Origin, colYear, colMonth, AVG(ArrDelay) as 'prom_arribades'
from Flights group by Origin, colYear, colMonth order by Origin, colYear;

select City, colYear, colMonth, AVG(ArrDelay) as 'prom_arribades'
from Flights inner join USAirports on Flights.Origin=USAirports.IATA 
group by Origin, colYear, colMonth order by City, colYear;
 
select UniqueCarrier, colYear, colMonth, AVG(ArrDelay) as 'avg_delay', count(Cancelled) as 'total_cancelled'
from Flights where Cancelled=true group by UniqueCarrier, colYear, colMonth order by count(Cancelled) desc;
 
select TailNum, SUM(Distance) as 'totalDistance' 
from Flights where not TailNum='' group by TailNum order by totalDistance desc limit 10;

select UniqueCarrier, AVG(ArrDelay) as 'avgDelay' 
from Flights group by UniqueCarrier having AVG(ArrDelay)>10 order by AVG(ArrDelay) desc;