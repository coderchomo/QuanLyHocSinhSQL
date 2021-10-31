use quanlyhocvien;
SELECT c.name, count(s.studentID)
FROM classes c
         JOIN students s on c.classesID = s.classesID
group by c.name;
SELECT a.address, count(s.studentID)
from address a
         JOIN students s on a.addressID = s.addressID
group by a.address;
SELECT c.name, avg(p.point) as 'Diem trung binh'
fROM course c
         join point p on c.courseID = p.courseID
group by c.name
having avg(point) >= ALL (SELECT AVG(P.point) FROM POINT p group by p.courseID);
