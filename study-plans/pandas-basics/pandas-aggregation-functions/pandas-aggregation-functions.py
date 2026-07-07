import pandas as pd

def multi_agg(data, group_col, value_col, funcs):
    """
    Returns: dict mapping function name to {group: value} dict
    """
    df = pd.DataFrame(data).groupby(group_col)[value_col].agg(funcs)
    print(df)
    return df.to_dict()