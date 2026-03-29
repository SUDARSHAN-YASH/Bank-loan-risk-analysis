select * from bank_loan;
select count(*) from bank_loan;
select avg ("default") as default_rate
from bank_loan;
select loan_status, count(*) from bank_loan
group by loan_status;


select income_category,
avg("default") as default_rate
from bank_loan
group by income_category;

select credit_category,
avg("default") as default_rate
from bank_loan
group by credit_category;

select employment_status,
avg(income) as default_rate
from bank_loan
group by employment_status;


select city, avg("default") as default_rate
from bank_loan
group by city
order by default_rate desc;

select 
case
when loan_to_income< 2 then 'low risk'
when loan_to_income between 2 and 4 then 'medium risk'
else 'high risk'
end as risk_level,
avg("default") as default_rate
from bank_loan
group by risk_level;

select application_year,
count(*) as total_loans
from bank_loan 
group by application_year
order by application_year;