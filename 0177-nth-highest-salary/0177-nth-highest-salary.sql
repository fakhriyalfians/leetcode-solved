

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N - 1;
    RETURN (
        SELECT DISTINCT(salary)
        from employee
        ORDER BY salary DESC
        LIMIT 1
        OFFSET N
    );
END


# import pandas as pd

# def nth_highest_salary(employee: pd.DataFrame, N: int) -> pd.DataFrame:
#     sorted = employee['salary'].sort_values(ascending=False).drop_duplicates()

#     if N > len(sorted):
#         return pd.DataFrame({'getNthHighestSalary': [None]})

#     nth_highest = sorted.iloc[N -1]
    
#     return pd.DataFrame({f'getNthHighestSalary({N})': [nth_highest]})
    
