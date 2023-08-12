-- DM_control_growth_intelligence

-- Jotform_Growth.user_payment_countries_1

SELECT
DISTINCT
current_date as ETL_date,
'user_payment_countries_1' as DM_name,
case when DATE((select max(date) from Jotform_Growth.user_payment_countries_1)) < Date_sub(current_date(), interval 1 day)
then concat ('user_payment_countries_1 DMs last date is:', (select max(date) from Jotform_Growth.user_payment_countries_1) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.user_payment_countries_1
where DATE((select max(date) from Jotform_Growth.user_payment_countries_1)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'user_payment_countries_1' as DM_name,
case when ((SELECT COUNT(DISTINCT country_name) FROM Jotform_Growth.user_payment_countries_1) = 1)
THEN  concat('user_payment_countries_1 has a null or 0 or always same data exists column on - ', date)
else concat('user_payment_countries_1 has a null or 0 column on - ', date) end as error_code
from ( select
date,
created_at,
is_first,
username,
action,
country_name,
country_code,
gateway,
if(date >= '2022-01-19', total,  null) as total,
if(date >= '2022-10-07', net, null) as net
from Jotform_Growth.user_payment_countries_1 
order by 1 desc) as ic_tablo

where date is null
or username is null
or action is null
or (total<net)
or created_at is null
or is_first = 0

union all

-- Jotform_Growth.user_payment_countries_3

SELECT
DISTINCT
current_date as ETL_date,
'user_payment_countries_3' as DM_name,
case when DATE((select max(date) from Jotform_Growth.user_payment_countries_3)) < Date_sub(current_date(), interval 1 day) 
then concat ('user_payment_countries_3 DMs last date is:', (select max(date) from Jotform_Growth.user_payment_countries_3) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.user_payment_countries_3
where DATE((select max(date) from Jotform_Growth.user_payment_countries_3)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'user_payment_countries_3' as DM_name,
case when ((SELECT COUNT(DISTINCT country_name) FROM Jotform_Growth.user_payment_countries_3) = 1)
THEN  concat('user_payment_countries_3 has a null or 0 or always same data exists column on - ', date)
else concat('user_payment_countries_3 has a null or 0 column on - ', date) end as error_code
from ( select
date,
created_at,
is_first,
username,
action,
country_name,
country_code,
gateway,
if(date >= '2022-01-19', total,  null) as total,
if(date >= '2022-10-07', net, null) as net
from Jotform_Growth.user_payment_countries_3 
order by 1 desc) as ic_tablo

where date is null
or username is null
or action is null
or (total<net)
or created_at is null
or is_first = 0

union all

-- Jotform_Growth.user_payment_countries_4

SELECT
DISTINCT
current_date as ETL_date,
'user_payment_countries_4' as DM_name,
case when DATE((select max(date) from Jotform_Growth.user_payment_countries_4)) < Date_sub(current_date(), interval 1 day) 
then concat ('user_payment_countries_4 DMs last date is:', (select max(date) from Jotform_Growth.user_payment_countries_4) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.user_payment_countries_4
where DATE((select max(date) from Jotform_Growth.user_payment_countries_4)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'user_payment_countries_4' as DM_name,
case when ((SELECT COUNT(DISTINCT country_name) FROM Jotform_Growth.user_payment_countries_4) = 1)
THEN  concat('user_payment_countries_4 has a null or 0 or always same data exists column on - ', date)
else concat('user_payment_countries_4 has a null or 0 column on - ', date) end as error_code
from ( select
date,
created_at,
is_first,
username,
action,
country_name,
country_code,
gateway,
if(date >= '2022-01-19', total,  null) as total,
if(date >= '2022-10-07', net, null) as net
from Jotform_Growth.user_payment_countries_4 
order by 1 desc) as ic_tablo

where date is null
or username is null
or action is null
or (total<net)
or created_at is null
or is_first = 0



union all
-- SELECT * FROM Jotform_Growth.pricing_page_funnel_details_1;


SELECT
DISTINCT
current_date as ETL_date,
'pricing_page_funnel_details_1' as DM_name,
case when DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_1)) < Date_sub(current_date(), interval 1 day) 
then concat ('pricing_page_funnel_details_1 DMs last date is:', (select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_1) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.pricing_page_funnel_details_1
where DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_1)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'pricing_page_funnel_details_1' as DM_name,
case when ((SELECT COUNT(DISTINCT funnel_step) FROM Jotform_Growth.pricing_page_funnel_details_1) = 1)
THEN  concat('pricing_page_funnel_details_1 has a null or 0 or always same data exists column on - ', time_formatted)
else concat('pricing_page_funnel_details_1 has a null or 0 column on - ', time_formatted) end as error_code
from ( select
id,
time_formatted,
created_at,
funnel_step,
username,
gateway,
device,
if(time_formatted >= '2022-01-19', funnel_step_id,  0) as funnel_step_id
from Jotform_Growth.pricing_page_funnel_details_1
order by 1 desc) as ic_tablo

where time_formatted is null
or username is null
or funnel_step is null
or created_at is null
or funnel_step_id = 0
or gateway is not null
or device is not null

union all
-- SELECT * FROM Jotform_Growth.pricing_page_funnel_details_2;


SELECT
DISTINCT
current_date as ETL_date,
'pricing_page_funnel_details_2' as DM_name,
case when DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_2)) < Date_sub(current_date(), interval 1 day) 
then concat ('pricing_page_funnel_details_2 DMs last date is:', (select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_2) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.pricing_page_funnel_details_2
where DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_2)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'pricing_page_funnel_details_2' as DM_name,
case when ((SELECT COUNT(DISTINCT funnel_step) FROM Jotform_Growth.pricing_page_funnel_details_2) = 1)
THEN  concat('pricing_page_funnel_details_2 has a null or 0 or always same data exists column on - ', time_formatted)
else concat('pricing_page_funnel_details_2 has a null or 0 column on - ', time_formatted) end as error_code
from ( select
id,
time_formatted,
created_at,
funnel_step,
username,
gateway,
device,
if(time_formatted >= '2022-01-19', funnel_step_id,  0) as funnel_step_id
from Jotform_Growth.pricing_page_funnel_details_2
order by 1 desc) as ic_tablo

where time_formatted is null
or username is null
or funnel_step is null
or created_at is null
or funnel_step_id = 0
or gateway is not null
or device is not null

union all
-- SELECT * FROM Jotform_Growth.pricing_page_funnel_details_3;


SELECT
DISTINCT
current_date as ETL_date,
'pricing_page_funnel_details_3' as DM_name,
case when DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_3)) < Date_sub(current_date(), interval 1 day) 
then concat ('pricing_page_funnel_details_3 DMs last date is:', (select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_3) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.pricing_page_funnel_details_3
where DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_3)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'pricing_page_funnel_details_3' as DM_name,
case when ((SELECT COUNT(DISTINCT funnel_step) FROM Jotform_Growth.pricing_page_funnel_details_3) = 1)
THEN  concat('pricing_page_funnel_details_3 has a null or 0 or always same data exists column on - ', time_formatted)
else concat('pricing_page_funnel_details_3 has a null or 0 column on - ', time_formatted) end as error_code
from ( select
id,
time_formatted,
created_at,
funnel_step,
username,
gateway,
device,
if(time_formatted >= '2022-01-19', funnel_step_id,  0) as funnel_step_id
from Jotform_Growth.pricing_page_funnel_details_3
order by 1 desc) as ic_tablo

where time_formatted is null
or username is null
or funnel_step is null
or created_at is null
or funnel_step_id = 0
or gateway is not null
or device is not null

union all
-- SELECT * FROM Jotform_Growth.pricing_page_funnel_details_4;


SELECT
DISTINCT
current_date as ETL_date,
'pricing_page_funnel_details_4' as DM_name,
case when DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_4)) < Date_sub(current_date(), interval 1 day) 
then concat ('pricing_page_funnel_details_4 DMs last date is:', (select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_4) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.pricing_page_funnel_details_4
where DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_4)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'pricing_page_funnel_details_4' as DM_name,
case when ((SELECT COUNT(DISTINCT funnel_step) FROM Jotform_Growth.pricing_page_funnel_details_4) = 1)
THEN  concat('pricing_page_funnel_details_4 has a null or 0 or always same data exists column on - ', time_formatted)
else concat('pricing_page_funnel_details_4 has a null or 0 column on - ', time_formatted) end as error_code
from ( select
id,
time_formatted,
created_at,
funnel_step,
username,
gateway,
device,
if(time_formatted >= '2022-01-19', funnel_step_id,  0) as funnel_step_id
from Jotform_Growth.pricing_page_funnel_details_4
order by 1 desc) as ic_tablo

where time_formatted is null
or username is null
or funnel_step is null
or created_at is null
or funnel_step_id = 0
or gateway is not null
or device is not null

union all
-- SELECT * FROM Jotform_Growth.pricing_page_funnel_details_5;


SELECT
DISTINCT
current_date as ETL_date,
'pricing_page_funnel_details_5' as DM_name,
case when DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_5)) < Date_sub(current_date(), interval 1 day) 
then concat ('pricing_page_funnel_details_5 DMs last date is:', (select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_5) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.pricing_page_funnel_details_5
where DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_5)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'pricing_page_funnel_details_5' as DM_name,
case when ((SELECT COUNT(DISTINCT funnel_step) FROM Jotform_Growth.pricing_page_funnel_details_5) = 1)
THEN  concat('pricing_page_funnel_details_5 has a null or 0 or always same data exists column on - ', time_formatted)
else concat('pricing_page_funnel_details_5 has a null or 0 column on - ', time_formatted) end as error_code
from ( select
id,
time_formatted,
created_at,
funnel_step,
username,
gateway,
device,
if(time_formatted >= '2022-01-19', funnel_step_id,  0) as funnel_step_id
from Jotform_Growth.pricing_page_funnel_details_5
order by 1 desc) as ic_tablo

where time_formatted is null
or username is null
or funnel_step is null
or created_at is null
or funnel_step_id = 0
or gateway is not null
or device is not null

union all
-- SELECT * FROM Jotform_Growth.pricing_page_funnel_details_6;


SELECT
DISTINCT
current_date as ETL_date,
'pricing_page_funnel_details_6' as DM_name,
case when DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_6)) < Date_sub(current_date(), interval 1 day) 
then concat ('pricing_page_funnel_details_6 DMs last date is:', (select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_6) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.pricing_page_funnel_details_6
where DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_6)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'pricing_page_funnel_details_6' as DM_name,
case when ((SELECT COUNT(DISTINCT funnel_step) FROM Jotform_Growth.pricing_page_funnel_details_6) = 1)
THEN  concat('pricing_page_funnel_details_6 has a null or 0 or always same data exists column on - ', time_formatted)
else concat('pricing_page_funnel_details_6 has a null or 0 column on - ', time_formatted) end as error_code
from ( select
id,
time_formatted,
created_at,
funnel_step,
username,
gateway,
device,
if(time_formatted >= '2022-01-19', funnel_step_id,  0) as funnel_step_id
from Jotform_Growth.pricing_page_funnel_details_6
order by 1 desc) as ic_tablo

where time_formatted is null
or username is null
or funnel_step is null
or created_at is null
or funnel_step_id = 0
or gateway is not null
or device is not null

union all
-- SELECT * FROM Jotform_Growth.pricing_page_funnel_details_7;


SELECT
DISTINCT
current_date as ETL_date,
'pricing_page_funnel_details_7' as DM_name,
case when DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_7)) < Date_sub(current_date(), interval 1 day) 
then concat ('pricing_page_funnel_details_7 DMs last date is:', (select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_7) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.pricing_page_funnel_details_7
where DATE((select max(time_formatted) from Jotform_Growth.pricing_page_funnel_details_7)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'pricing_page_funnel_details_7' as DM_name,
case when ((SELECT COUNT(DISTINCT funnel_step) FROM Jotform_Growth.pricing_page_funnel_details_7) = 1)
THEN  concat('pricing_page_funnel_details_7 has a null or 0 or always same data exists column on - ', time_formatted)
else concat('pricing_page_funnel_details_7 has a null or 0 column on - ', time_formatted) end as error_code
from ( select
id,
time_formatted,
created_at,
funnel_step,
username,
gateway,
device,
if(time_formatted >= '2022-01-19', funnel_step_id,  0) as funnel_step_id
from Jotform_Growth.pricing_page_funnel_details_7
order by 1 desc) as ic_tablo

where time_formatted is null
or username is null
or funnel_step is null
or created_at is null
or funnel_step_id = 0
or gateway is not null
or device is not null





union all

-- SELECT * FROM Jotform_Growth.paid_user_country_state;

select
current_date as ETL_date,
'paid_user_country_state' as DM_name,
case when ((SELECT COUNT(DISTINCT payment_country_name) FROM Jotform_Growth.paid_user_country_state) = 1)
THEN  concat('paid_user_country_state has a null or 0 or always same data exists column on - ', 'payment_country: ', payment_country, ' ','IP_country: ' ,IP_country,' ', 'user_locations_country: ', user_locations_country,' ' ,'country_code: ', country_code )
else concat('paid_user_country_state has a null or 0 column on - ' , 'payment_country: ', payment_country, ' ','IP_country: ' ,IP_country,' ', 'user_locations_country: ', user_locations_country,' ' ,'country_code: ', country_code ) end as error_code
from Jotform_Growth.paid_user_country_state
where username is NULL
or payment_country is NULL
or payment_country like '%<nil>%'
or payment_country_name is NULL
or payment_country_name like '%<nil>%'
or IP_country is NULL
or IP_country_name is NULL
or user_locations_country is NULL
or user_locations_country_name is NULL
or country_code is NULL
or country_name is NULL
or state_code is NULL
or state_code like '%<nil>%'

union all

-- Jotform_Growth.jotform_marketing_ussubmissionslast30days;

SELECT
DISTINCT
current_date as ETL_date,
'jotform_marketing_ussubmissionslast30days' as DM_name,
case when DATE((select max(date) from Jotform_Growth.jotform_marketing_ussubmissionslast30days)) < Date_sub(current_date(), interval 1 day) 
then concat ('jotform_marketing_ussubmissionslast30days DMs last date is:', (select max(date) from Jotform_Growth.jotform_marketing_ussubmissionslast30days) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.jotform_marketing_ussubmissionslast30days
where DATE((select max(date) from Jotform_Growth.jotform_marketing_ussubmissionslast30days)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'jotform_marketing_ussubmissionslast30days' as DM_name,
case when ((SELECT COUNT(DISTINCT user_count_10_plus_submissions) FROM Jotform_Growth.jotform_marketing_ussubmissionslast30days) = 1)
THEN  concat('jotform_marketing_ussubmissionslast30days has a null or 0 or always same data exists column on - ', date)
else concat('jotform_marketing_ussubmissionslast30days has a null or 0 column on - ', date) end as error_code
from ( select
date,
if(date >= '2022-01-19', user_count_10_plus_submissions,  null) as user_count_10_plus_submissions,
if(date >= '2022-10-07', user_count_5_plus_submissions, null) as user_count_5_plus_submissions
from Jotform_Growth.jotform_marketing_ussubmissionslast30days
order by 1 desc) as ic_tablo

where date is null
or user_count_10_plus_submissions is NULL
or user_count_10_plus_submissions < 10
or user_count_5_plus_submissions is NULL
or user_count_5_plus_submissions < 5
or user_count_5_plus_submissions < user_count_10_plus_submissions

union all

-- Jotform_Growth.jotform_marketing_us_per_country_language;

SELECT
DISTINCT
current_date as ETL_date,
'jotform_marketing_us_per_country_language' as DM_name,
case when DATE((select max(`current_date`) from Jotform_Growth.jotform_marketing_us_per_country_language)) < Date_sub(current_date(), interval 1 day) 
then concat ('jotform_marketing_us_per_country_language DMs last date is:', (select max(`current_date`) from Jotform_Growth.jotform_marketing_us_per_country_language)) end as error_code
from Jotform_Growth.jotform_marketing_us_per_country_language
where DATE((select max(`current_date`) from Jotform_Growth.jotform_marketing_us_per_country_language)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'jotform_marketing_us_per_country_language' as DM_name,
case when ((SELECT COUNT(DISTINCT jotform_language) FROM Jotform_Growth.jotform_marketing_us_per_country_language) = 1)
THEN  concat('jotform_marketing_us_per_country_language has a null or 0 or always same data exists column on - ', `current_date`)
else concat('jotform_marketing_us_per_country_language has a null or 0 column on - ', `current_date`) end as error_code
from ( select
`current_date`,
created_at,
id,
country,
jotform_language,
users,
active_users,
engaged_user,
paid_users
from
Jotform_Growth.jotform_marketing_us_per_country_language
order by 1 desc) as ic_tablo

where `current_date` is null
or id is null
or country is null
or country = ''
or users is null
or active_users is null
or engaged_user is null
or paid_users is null
or created_at is null


--union all

-- Jotform_Growth.jotform_marketing_upwork_agent_timeline;

/*
SELECT
DISTINCT
current_date as ETL_date,
'jotform_marketing_upwork_agent_timeline' as DM_name,
case when (select max(start_date) from Jotform_Growth.jotform_marketing_upwork_agent_timeline) < Date_sub(current_date(), interval 1 day) 
then concat ('jotform_marketing_upwork_agent_timeline DMs last date is:', (select max(start_date) from Jotform_Growth.jotform_marketing_upwork_agent_timeline) /* Max(ETL_date yapmıştık) *//*)*/ /* end as error_code 
from Jotform_Growth.jotform_marketing_upwork_agent_timeline
where (select max(start_date) from Jotform_Growth.jotform_marketing_upwork_agent_timeline) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'jotform_marketing_upwork_agent_timeline' as DM_name,
concat('jotform_marketing_upwork_agent_timeline has a null or 0 column on - ', start_date) as error_code
from ( select
id,
freelancer_id,
freelancer_name,
start_date,
end_date,
if(start_date >= '2022-01-19', task,  null) as task
from Jotform_Growth.jotform_marketing_upwork_agent_timeline
order by 1 desc) as ic_tablo

where id is null
or start_date is null
or end_date is null
or start_date > end_date
or freelancer_id is null
or freelancer_name is null
or task is null
or task like '%<nil>%'  */

union all

-- jotform_marketing_prpage_funnel_analytics

SELECT
DISTINCT
current_date as ETL_date,
'jotform_marketing_prpage_funnel_analytics' as DM_name,
case when DATE((select max(time_formatted) from Jotform_Growth.jotform_marketing_prpage_funnel_analytics)) < Date_sub(current_date(), interval 1 day) 
then concat ('jotform_marketing_prpage_funnel_analytics DMs last date is:', (select max(time_formatted) from Jotform_Growth.jotform_marketing_prpage_funnel_analytics) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.jotform_marketing_prpage_funnel_analytics
where DATE((select max(time_formatted) from Jotform_Growth.jotform_marketing_prpage_funnel_analytics)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'jotform_marketing_prpage_funnel_analytics' as DM_name,
case when ((SELECT COUNT(DISTINCT funnel_step) FROM Jotform_Growth.jotform_marketing_prpage_funnel_analytics) = 1)
THEN  concat('jotform_marketing_prpage_funnel_analytics has a null or 0 or always same data exists column on - ', time_formatted)
else concat('jotform_marketing_prpage_funnel_analytics has a null or 0 column on - ', time_formatted) end as error_code
from ( select
time_formatted,
created_at,
granularity,
funnel_step,
click_count_type,
funnel_step_id,
if(time_formatted >= '2022-01-19', clicks,  null) as clicks
from Jotform_Growth.jotform_marketing_prpage_funnel_analytics 
order by 1 desc) as ic_tablo

where time_formatted is null
or granularity is null
or funnel_step is null
or clicks is null
or clicks = 0
or created_at is null
or funnel_step_id is null
or funnel_step_id = 0

union all 


-- Jotform_Growth.jotform_marketing_pring_page_transactions;


SELECT
DISTINCT
current_date as ETL_date,
'jotform_marketing_pring_page_transactions' as DM_name,
case when DATE((select max(time_formatted) from Jotform_Growth.jotform_marketing_pring_page_transactions)) < Date_sub(current_date(), interval 1 day) 
then concat ('jotform_marketing_pring_page_transactions DMs last date is:', (select max(time_formatted) from Jotform_Growth.jotform_marketing_pring_page_transactions) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.jotform_marketing_pring_page_transactions
where DATE((select max(time_formatted) from Jotform_Growth.jotform_marketing_pring_page_transactions)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'jotform_marketing_pring_page_transactions' as DM_name,
case when ((SELECT COUNT(DISTINCT funnel_step) FROM Jotform_Growth.jotform_marketing_pring_page_transactions) = 1)
THEN  concat('jotform_marketing_pring_page_transactions has a null or 0 or always same data exists column on - ', time_formatted)
else concat('jotform_marketing_pring_page_transactions has a null or 0 column on - ', time_formatted) end as error_code
from ( select
time_formatted,
created_at,
granularity,
funnel_step,
gateway,
funnel_step_id,
device,
if(time_formatted >= '2022-01-19', clicks,  null) as clicks
from Jotform_Growth.jotform_marketing_pring_page_transactions
order by 1 desc) as ic_tablo

where time_formatted is null
or granularity is null
or funnel_step is null
or clicks is null
or clicks = 0
or created_at is null
or funnel_step_id is null
or funnel_step_id = 0
or gateway is null
or device is null
or device = ''

union all

-- Jotform_Growth.jotform_dwh_DM_user_ntry_language_summary;

SELECT
DISTINCT
current_date as ETL_date,
'jotform_dwh_DM_user_ntry_language_summary' as DM_name,
case when DATE((select max(ETL_date) from Jotform_Growth.jotform_dwh_DM_user_ntry_language_summary)) < Date_sub(current_date(), interval 1 day) 
then concat ('jotform_dwh_DM_user_ntry_language_summary DMs last date is:', (select max(ETL_date) from Jotform_Growth.jotform_dwh_DM_user_ntry_language_summary) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.jotform_dwh_DM_user_ntry_language_summary
where DATE((select max(ETL_date) from Jotform_Growth.jotform_dwh_DM_user_ntry_language_summary)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'jotform_dwh_DM_user_ntry_language_summary' as DM_name,
case when ((SELECT COUNT(DISTINCT jotform_language) FROM Jotform_Growth.jotform_dwh_DM_user_ntry_language_summary) = 1)
THEN  concat('jotform_dwh_DM_user_ntry_language_summary has a null or 0 or always same data exists column on - ', ETL_date)
else concat('jotform_dwh_DM_user_ntry_language_summary has a null or 0 column on - ', ETL_date) end as error_code
from Jotform_Growth.jotform_dwh_DM_user_ntry_language_summary
where ETL_date is null
or country is null
or jotform_language is null
or churned_user_count is null
or churned_user_count = 0
or created_at is null

union all

-- Jotform_Growth.jotform_dwh_CR_user_p30_language_summary;


SELECT
DISTINCT
current_date as ETL_date,
'jotform_dwh_CR_user_p30_language_summary' as DM_name,
case when DATE((select max(ETL_date) from Jotform_Growth.jotform_dwh_CR_user_p30_language_summary)) < Date_sub(current_date(), interval 1 day) 
then concat ('jotform_dwh_CR_user_p30_language_summary DMs last date is:', (select max(ETL_date) from Jotform_Growth.jotform_dwh_CR_user_p30_language_summary)) end as error_code
from Jotform_Growth.jotform_dwh_CR_user_p30_language_summary
where DATE((select max(ETL_date) from Jotform_Growth.jotform_dwh_CR_user_p30_language_summary)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'jotform_dwh_CR_user_p30_language_summary' as DM_name,
case when ((SELECT COUNT(DISTINCT source) FROM Jotform_Growth.jotform_dwh_CR_user_p30_language_summary) = 1)
THEN  concat('jotform_dwh_CR_user_p30_language_summary has a null or 0 or always same data exists column on - ', ETL_date)
else concat('jotform_dwh_CR_user_p30_language_summary has a null or 0 column on - ', ETL_date) end as error_code
from Jotform_Growth.jotform_dwh_CR_user_p30_language_summary
where ETL_date is null
or country is null
or jotform_language is null
or source is null
or P30_user_count = 0
or created_at is null

union all

-- Jotform_Growth.jotform_dwh_cr_user_hipaa;

SELECT
DISTINCT
current_date as ETL_date,
'jotform_dwh_cr_user_hipaa' as DM_name,
case when DATE((select max(ETL_date) from Jotform_Growth.jotform_dwh_cr_user_hipaa)) < Date_sub(current_date(), interval 1 day) 
then concat ('jotform_dwh_cr_user_hipaa DMs last date is:', (select max(ETL_date) from Jotform_Growth.jotform_dwh_cr_user_hipaa) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.jotform_dwh_cr_user_hipaa
where DATE((select max(ETL_date) from Jotform_Growth.jotform_dwh_cr_user_hipaa)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'jotform_dwh_cr_user_hipaa' as DM_name,
case when ((SELECT COUNT(DISTINCT hipaa_disabled_user_count) FROM Jotform_Growth.jotform_dwh_cr_user_hipaa) = 1)
THEN  concat('jotform_dwh_cr_user_hipaa has a null or 0 or always same data exists column on - ', ETL_date)
else concat('jotform_dwh_cr_user_hipaa has a null or 0 column on - ', ETL_date) end as error_code
from Jotform_Growth.jotform_dwh_cr_user_hipaa
where ETL_date is null
or hipaa_enabled_user_count is null
or hipaa_disabled_user_change_count is null
or hipaa_enabled_user_change_count is null
or hipaa_enabled_grandfather_user_count is null
or hipaa_disabled_user_count is null
or total_hipaa_enabled_user_count is null

union all

-- Jotform_Growth.jotform_marketing_daily_transactions_new;


SELECT
DISTINCT
current_date as ETL_date,
'jotform_marketing_daily_transactions_new' as DM_name,
case when DATE((select max(date) from Jotform_Growth.jotform_marketing_daily_transactions_new)) < Date_sub(current_date(), interval 1 day) 
then concat ('jotform_marketing_daily_transactions_new DMs last date is:', (select max(date) from Jotform_Growth.jotform_marketing_daily_transactions_new) /* Max(ETL_date yapmıştık) */) end as error_code
from Jotform_Growth.jotform_marketing_daily_transactions_new
where DATE((select max(date) from Jotform_Growth.jotform_marketing_daily_transactions_new)) < Date_sub(current_date(), interval 1 day)
union all
select distinct 
current_date as ETL_date,
'jotform_marketing_daily_transactions_new' as DM_name,
case when ((SELECT COUNT(DISTINCT gateway) FROM Jotform_Growth.jotform_marketing_daily_transactions_new) = 1)
THEN  concat('jotform_marketing_daily_transactions_new has a null or 0 or always same data exists column on - ', date)
else concat('jotform_marketing_daily_transactions_new has a null or 0 column on - ', date) end as error_code
from Jotform_Growth.jotform_marketing_daily_transactions_new
where date is null
or id is null
or gateway is null
or country is null
or region is null
or payment is null
or payment_count is null
or refund is null
or refund_count is null
or fee is null
or net is null
or first_payment is null
or first_payment_count is null
or first_net is null
or (country not like '%US%'  AND state is not null);