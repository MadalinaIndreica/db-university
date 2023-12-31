--GROUP BY
--1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) as `num_students`,
YEAR (`enrolment_date`) as `enrl_date`
FROM `students`
GROUP BY YEAR (`enrolment_date`)


--2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT `office_adress`, COUNT (*) as `teachers_number`
FROM `teachers`
GROUP BY `office_adress`
ORDER BY `teachers_number`;



--3. Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, AVG (`vote`) AS `media_voti`
FROM `exam_student`
GROUP BY `exam_id`;

--4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id`, COUNT(*)
FROM `degrees`
GROUP BY `department_id`;

--JOIN

--1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT *
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia";

--2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT *
FROM `degrees`
JOIN `departments` 
ON `degrees` . `department_id`
WHERE `departments` . `name` = "Dipartimento di Neuroscienze"
AND `degrees`.`level` = "magistrale";

--3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)



--4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
--5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
--6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
--7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami