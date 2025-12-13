select firstName, lastName, city, state from person p LEFT JOIN Address t on p.personId = t.personId
