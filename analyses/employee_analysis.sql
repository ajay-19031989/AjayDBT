select first_name,gender,start_date,login_time,salary,bonus,management,team from {{ source('emp_raw','employee') }}
where team is null and bonus<5