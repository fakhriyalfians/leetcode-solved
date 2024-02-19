# Write your MySQL query statement below
select name as Customers from Customers
left join orders on Customers.id=customerID
where customerId is Null

# import pandas as pd

# def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:

#     mergedDf = customers.merge(orders,how='left', left_on='id', right_on='customerId')
#     mask = mergedDf['customerId'].isna()
#     return mergedDf[mask][['name']].rename(columns={'name':'Customers'})