
SELECT i.IncidentId, i.PeopleServed, l.Name AS LANGUAGE, i.SystemTimestamp
FROM Incidents i
LEFT JOIN Languages l ON i.LanguageId = l.LanguageId


SELECT c.Name AS Category, p.Name AS Product, i.Requests, i.SystemTimestamp 
FROM IncidentDetails i
INNER JOIN Categories c ON i.CategoryId = c.CategoryId
LEFT JOIN Products p ON i.ProductId = p.ProductId
WHERE i.incidentId = 3



