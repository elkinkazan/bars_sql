select doctors.full_name, doctors.spec,sum(transactions.summ) as salary
from transactions,doctors
where transactions.doc_id = doctors.id and date between '2019-01-01' and '2019-12-31' and 2500 < 
(select sum(tr.summ)
from transactions as tr,doctors
where doctors.id = tr.id)
group by doc_id, doctors.id