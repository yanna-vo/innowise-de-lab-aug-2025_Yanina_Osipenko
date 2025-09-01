-- 1. Сколько студентов получили оценку "A" по предмету "Введение в программирование"?
SELECT
   COUNT(*) AS количество_отличников
FROM
   Fact_Student_Grades
JOIN
   Dimension_Course ON Fact_Student_Grades.course_key = Dimension_Course.course_key
WHERE
   Dimension_Course.course_name = 'Введение в программирование'
   AND Fact_Student_Grades.grade = 'A';

-- 2.  Сколько студентов учится на каждом факультете? (Используем таблицу Dimension_Student)
SELECT
   Dimension_Student.major,  -- Название специальности
   COUNT(DISTINCT Dimension_Student.student_key) AS количество_студентов
FROM
   Dimension_Student
GROUP BY
   Dimension_Student.major
ORDER BY
   количество_студентов DESC; -- Отсортировать по убыванию
  
   -- 3. Средняя оценка по предмету "Математический анализ" в каждом семестре.
SELECT
   Dimension_Semester.year,  -- Год
   Dimension_Semester.semester,  -- Семестр
   AVG(CASE  -- Преобразуем оценки в числовые значения
       WHEN Fact_Student_Grades.grade = 'A' THEN 4
       WHEN Fact_Student_Grades.grade = 'B' THEN 3
       WHEN Fact_Student_Grades.grade = 'C' THEN 2
       WHEN Fact_Student_Grades.grade = 'D' THEN 1
       ELSE 0
   END) AS средняя_оценка
FROM
   Fact_Student_Grades
JOIN
   Dimension_Course ON Fact_Student_Grades.course_key = Dimension_Course.course_key
JOIN
   Dimension_Semester ON Fact_Student_Grades.semester_key = Dimension_Semester.semester_key
WHERE
   Dimension_Course.course_name = 'Математический анализ'
GROUP BY
   Dimension_Semester.year, Dimension_Semester.semester
ORDER BY
   Dimension_Semester.year, Dimension_Semester.semester;

   -- 4.  Количество сданных предметов каждым студентом.
SELECT
   Dimension_Student.first_name,
   Dimension_Student.last_name,
   COUNT(CASE WHEN Fact_Student_Grades.grade IN ('A', 'B', 'C', 'D') THEN 1 END) AS количество_сданных_предметов
FROM
   Fact_Student_Grades
JOIN
   Dimension_Student ON Fact_Student_Grades.student_key = Dimension_Student.student_key
GROUP BY
   Dimension_Student.first_name, Dimension_Student.last_name
ORDER BY
   количество_сданных_предметов DESC;
  
   -- 5. Какие предметы читает конкретный преподаватель?
SELECT
   Dimension_Professor.first_name,
   Dimension_Professor.last_name,
   Dimension_Course.course_name
FROM
   Fact_Student_Grades
JOIN
   Dimension_Professor ON Fact_Student_Grades.Professor_Key = Dimension_Professor.Professor_Key
JOIN
   Dimension_Course ON Fact_Student_Grades.course_key = Dimension_Course.course_key
WHERE Dimension_Professor.last_name = 'Иванов' -- фамилия преподавателя
GROUP BY Dimension_Professor.first_name, Dimension_Professor.last_name, Dimension_Course.course_name
ORDER BY Dimension_Professor.last_name, Dimension_Course.course_name;
