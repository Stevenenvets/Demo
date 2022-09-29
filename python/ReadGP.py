import psycopg2
import psycopg2.extras
import psycopg2.pool
from datetime import datetime

'''
    连接数据库
    使用数据库连接池
    returns:db
'''


def gp_connect():
    try:
        simple_conn_pool = psycopg2.pool.SimpleConnectionPool(minconn=1, maxconn=5, dbname="testdb",
                                                              user="xn_dbcenter",
                                                              password="xn_dbcenter",
                                                              host="172.16.13.1",
                                                              port="5432")
        # connect()也可以使用一个大的字符串参数,
        # 比如”host=localhost port=5432 user=postgres password=postgres dbname=test”
        # 从数据库连接池获取连接
        conn = simple_conn_pool.getconn()
        return conn
    except psycopg2.DatabaseError as e:
        print("could not connect to Greenplum server", e)


if __name__ == '__main__':
    conn = gp_connect()
    print(conn)
    cur = conn.cursor()
    # 批量查询大小
    batch_size = 1000
    gp_list = []
    for i in range(2000, 100000):
        gp_list.append((i, 'abc%s' % i))
    # print(gp_list)

    # 开始时间
    start_time = datetime.now()
    # 批量提交数据execute_values性能大于executemany
    psycopg2.extras.execute_values(cur, "INSERT INTO public.gp_test (num, data) VALUES %s", gp_list)
    conn.commit()
    # 提交到数据库中
    cur.execute("select  *  from gp_test order by id")
    count = 0

    while True:
        count = count + 1
        # 每次获取时会从上次游标的位置开始移动size个位置，返回size条数据
        data = cur.fetchmany(batch_size)
        # 数据为空的时候中断循环
        if not data:
            break
        else:
            print(data[-1])  # 得到最后一条(通过元祖方式返回)
        print('获取%s到%s数据成功' % ((count - 1) * batch_size, count * batch_size))
    print('insert到fetchmany获取全量数据所用时间:', (datetime.now() - start_time).seconds)  # 16s
conn.close()  # 关闭连接