--Count the number of athletes from each country
SELECT Country, COUNT(*) AS TotalAthletes
FROM athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;

--Calculate total medals won by each country
SELECT TeamCountry, SUM(Gold) TotalGold, SUM(Silver) TotalSilver, SUM(Bronze) TotalBronze 
FROM medals 
GROUP BY TeamCountry
ORDER BY TotalGold  DESC;

--Calculate the average number of entries by gender for each discipline
SELECT Discipline, AVG(Female) as AvgFemale,
    AVG(Male) as AvgMale
FROM entriesgender 
GROUP BY Discipline;

-- Number of athletes by discipline
SELECT Discipline, COUNT(*) as AthleteCount
FROM athletes
GROUP BY Discipline
ORDER BY AthleteCount DESC;

-- Multi-discipline athletes
SELECT PersonName, Country, COUNT(DISTINCT Discipline) AS DisciplineCount
FROM athletes
GROUP BY PersonName, Country
HAVING COUNT(DISTINCT Discipline) > 1
ORDER BY DisciplineCount DESC;

-- Medal efficiency: Countries with the highest medals per athlete ratio
WITH AthleteCount AS (
    SELECT Country, COUNT(*) AS NumAthletes
    FROM athletes
    GROUP BY Country
)
SELECT m.TeamCountry, 
       m.Total AS TotalMedals, 
       a.NumAthletes,
       CAST(m.Total AS FLOAT) / a.NumAthletes AS MedalsPerAthlete
FROM medals m
JOIN AthleteCount a ON m.TeamCountry = a.Country
WHERE m.Total > 0
ORDER BY MedalsPerAthlete DESC;