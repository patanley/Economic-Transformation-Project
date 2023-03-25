
Drop table if exists dim.Calendar;

 

DECLARE @StartDate  date;
Set @StartDate = '19900101';

 

DECLARE @CutoffDate date; 
Set @CutoffDate = DATEADD(DAY, -1, DATEADD(YEAR, 34, @StartDate));

 

--Change nothing below this line --
;WITH seq(n) AS 
(
  SELECT 0 UNION ALL SELECT n + 1 FROM seq
  WHERE n < DATEDIFF(DAY, @StartDate, @CutoffDate)
),
d(d) AS 
(
  SELECT DATEADD(DAY, n, @StartDate) FROM seq
),
src AS
(
  SELECT
    Date         = CONVERT(date, d),
    DateKey      = CAST(REPLACE(CONVERT(varchar(10), d),'-','') as INT),
--    DateKeyAlt   = CAST(d as INT),
    DayofMonth   = DATEPART(DAY,       d),
    DayName      = DATENAME(WEEKDAY,   d),
    WeekOfYear         = DATEPART(WEEK,      d),
    ISOWeek      = DATEPART(ISO_WEEK,  d),
    DayOfWeek    = DATEPART(WEEKDAY,   d),
    Month        = DATEPART(MONTH,     d),
    MonthName    = DATENAME(MONTH,     d),
    MonthAbbrev  = LEFT(DATENAME(MONTH, d),3),
    Quarter      = DATEPART(Quarter,   d),
    Qtr          =(Case
                        When DATEPART(QUARTER,    d) = 1 THEN 'Q1'
                        When DATEPART(QUARTER,    d) = 2 THEN 'Q2'
                        When DATEPART(QUARTER,    d) = 3 THEN 'Q3'
                        When DATEPART(QUARTER,    d) = 4 THEN 'Q4'
                      ELSE 'Err'
                    End),

 

    Year         = DATEPART(YEAR,      d),
    FirstOfMonth = DATEFROMPARTS(YEAR(d), MONTH(d), 1),
    LastOfYear   = DATEFROMPARTS(YEAR(d), 12, 31),
    DayOfYear    = DATEPART(DAYOFYEAR, d)
  FROM d
)
SELECT * 
INTO dim.Calendar
FROM src
  ORDER BY Date
  OPTION (MAXRECURSION 0);    