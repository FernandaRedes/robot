import psycopg2 

def execute_q(query):
    try:
        conn= psycopg2.connect(
            #nome do servidor do banco de dados
            host="localhost",
            port="5432",
            database="poc_rails_api_development",
            user="postgres",
            password="qa"
        )
    except:
        print (msg)
        msg = "Não foi possível conectar ao banco de dados"
    
    cur= conn.cursor()
    cur.execute(query)
    conn.commit()
    cur.close()
    conn.close()

##SECTOR
def create_sector_bd():
    f = open('./sectors.json')   
    data = json.loads(f.read())     
    print(data) 
    for i in data['list_sectors']:
        query = ("insert into mentoring_sectors(id, title, created_at, updated_at) VALUES (%s, %s, '2022-03-01 00:00:00+03', '2022-03-01 00:20:00+03')", i)       
        print(query)
        execute_q(query)
        print(i) 
    f.close()

    
