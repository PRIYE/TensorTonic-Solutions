import pandas as pd

def groupby_basics(data, group_col, value_col):
    """
    Returns: dict with 'sum', 'mean', 'count' (each a dict)
    """
    df = pd.DataFrame(data).groupby(group_col).agg({value_col : ['sum','mean', 'count']})
    df.columns = ['sum', 'mean', 'count']
    print(df)
    return df.to_dict()