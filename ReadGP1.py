import psycopg2
import psycopg2.extras
import psycopg2.pool

# https://blog.csdn.net/qq_36135235/article/details/105049372

'''
    连接数据库
    使用数据库连接池
    returns:db
'''


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


if __name__ == '__main__':
    conn = gp_connect()
    print(conn)
    cur = conn.cursor()
    sql = """SELECT zhcode, c_fundcode, fdate, fkmbm, fkmmc, fhqjg, fhqbz, fzqsl, fzqcb, fzqsz, fgz_zz, fcb_jz_bl, fsz_jz_bl, ftpxx, fqyxx, facctdetail, facctattr, facctclass, fby, c_assettype, c_exchange, c_symbol, c_sub_facctattr, c_status, facctlevel, facctparent, fcurcode, frate, c_position, fbaldc, famount, c_isdeal, d_update_time
FROM wj_invest.fact_gz_gzb_middle_gz45
where zhcode  = 'GMA001' and fdate  = '2022-02-22'"""
    # "select relnamespace,relname,obj_description(c.oid,'pg_class') from pg_class c where relname like 'r_cisp\_%' and relkind in ('r');"
    cur.execute(sql)
    # print(cur.fetchall())
    count = 0
    while True:
        count = count + 1
        # 每次获取时会从上次游标的位置开始移动size个位置，返回size条数据
        data = cur.fetchone()
        # 数据为空的时候中断循环
        if not data:
            break
        else:
            print(data)  # 得到最后一条(通过元祖方式返回)
conn.close()  # 关闭连接
