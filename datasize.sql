use sample;
select  
table_name, engine, table_rows as tbl_rows, avg_row_length as rlen,  
floor((data_length+index_length)/1024/1024) as allMB,
floor((data_length)/1024/1024) as dMB,
floor((index_length)/1024/1024) as iMB
from information_schema.tables  
where table_schema=database()  
order by (data_length+index_length) desc; 
