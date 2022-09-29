import psycopg2
import psycopg2.extras
import psycopg2.pool
import pandas as pd
from openpyxl.utils.dataframe import dataframe_to_rows
from openpyxl.styles import Font, Color, NamedStyle, Border, Side, PatternFill, Alignment, numbers
import openpyxl


def gp_connect():
    print(psycopg2.__version__)
    try:
        conn = psycopg2.connect(dbname="xn_dbcenter",
                                user="xn_dbcenter",
                                password="xn_dbcenter",
                                port="5432",
                                host="172.16.13.1",
                                client_encoding="UTF-8")
        return conn
    except psycopg2.DatabaseError as e:
        print("could not connect to Greenplum server", e)


def write_excel(df):
    #选取colcomment的第一行
    table = df.colcomment.iloc[0]
    #清洗名字
    table = table.replace("[CISP一期]_","")
    # print(table)
    # #创建工作簿
    # wb = openpyxl.Workbook()
    # # 激活工作表
    # ws = wb.active
    # # 重命名工作表
    # ws.title = table
    col = df.colcomment.iloc[1:-1]
    list_col = col.values
    print(type(list_col))
    # col = pd.DataFrame(list_col,columns=['comment'])
    list_col.tolist
    print(list_col)
    # for row in dataframe_to_rows(col, index=False, header=True):
    #     ws.append(row)
    # wb.save(table + '.xlsx')
    return


if __name__ == '__main__':
    conn = gp_connect()
    cur = conn.cursor()
    sql = """select relname, objsubid, description 
          from pg_class c inner join pg_description d on c.oid = d.objoid 
          where c.relname like 'r_cisp\_%'  
          and c.relkind in ('r')  
          order by relname,objsubid"""
    cur.execute(sql)
    result = cur.fetchall()
    df = pd.DataFrame(result, columns=['tablename', 'colindex', 'colcomment'])
    tables = df["tablename"].drop_duplicates()
    # data = data.drop_duplicates(subset=None, keep='first', inplace=False)

    for table in tables:
        write_excel(df.loc[df["tablename"] == table])
conn.close()  # 关闭连接
