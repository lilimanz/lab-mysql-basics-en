USE bank ;

/* TOP 5 clients where district_id = 1 */
SELECT * 
FROM bank.client 
WHERE district_id = 1
ORDER BY client_id ASC 
LIMIT 5;

/*Last client id where district_id = 72 */
SELECT client_id 
FROM bank.client 
WHERE district_id = 72
ORDER BY client_id DESC 
LIMIT 1;

SELECT MAX(client_id)
FROM bank.client
WHERE district_id = 72;

/* Top 3 lowest loans based on amount column */
SELECT *
FROM loan
ORDER BY amount ASC
limit 3;

/* Values for status un loan table */
SELECT status
FROM loan
GROUP BY status
ORDER BY status ASC;

/* loan_id of the highest payment received */
select loan_id
from loan
order by payments DESC
limit 1;

/* lowest 5 accounts_ids, amount */
SELECT 
	account_id,
    amount 
FROM loan 
ORDER BY account_id ASC
limit 5;

/* lowest loan amount, duration > 60, get account_ids*/
SELECT 
	account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC;

/* Unique values of k_symbol in order table */
SELECT k_symbol
FROM bank.order 
group by k_symbol
ORDER BY k_symbol ASC;

/* order_id for the account_id = 34 */
SELECT order_id
from bank.order 
where account_id = 34;

/* query 10*/
select account_id
from bank.order 
where order_id BETWEEN 29540 AND 29560
group by account_id;

/*query 11*/
select amount
from `order`
where account_to = 30067122;

/*query 12*/
SELECT 
	trans_id,
    date,
    type,
    amount
from trans
where account_id =793 
ORDER by date DESC;

/* query 13*/
SELECT 
	district_id,
	COUNT(DISTINCT client_id) as num_of_client
FROM client 
where district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

/* query 14*/
SELECT 
	type,
    COUNT(DISTINCT card_id) as frequency 
from card
group by type;

/*QUERY 15*/
SELECT 
	account_id,
    SUM(amount) as total_amount 
from loan
GROUP BY account_id 
ORDER BY total_amount DESC
LIMIT 10;

/* QUERY 16*/
SELECT 
	date, 
    count(distinct loan_id)
from loan
where date < 930907
group by date 
order by date DESC;

/*query 17*/
SELECT 
	date, 
    duration, 
    COUNT(*)
from loan 
where date like '%9712%'
group by date, duration 
order by date ASC, duration ASC;

/* query 18 */
SELECT 
	account_id, 
    type, 
    SUM(amount) as total_amount
FROM trans 
where account_id = 396
group by type 
order by type ASC;