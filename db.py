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

#MENTOR
def delete_mentor_bd(company_name):    
    query = "delete from public.mentoring_mentors where company_name = '{}';".format(company_name)
    print(query)
    execute_q(query)

def create_mentor_bd():
    query = "insert into mentoring_mentors (linkedin, occupation, company_name, phone_number, state, city, attendance, "\
        "created_at, updated_at, user_id, step, approved_at) VALUES ('https://www.linkedin.com/in/qaautomation/', 'QA', "\
        "'QA Automation BD', '48999999999', 'Santa Catarina', 'Florianópolis', 'online', '2022-03-01 00:00:00+03', "\
        "'2022-03-02 00:00:00+03', 931, 0, '2022-03-02 00:00:00+03');" 
    print(query)
    execute_q(query)
   
def select_mentor_bd():
    # query = "select id from mentoring_mentors where company_name= '{}';".format(company_name)
    query = "select id from mentoring_mentors where company_name='QA Automation BD'"
    print(query)
    id_mentor = execute_q(query)
    return id_mentor

#MENTEE
def delete_mentee_bd(company_bio):    
    query = "delete from public.mentoring_mentees where company_bio = '{}';".format(company_bio)
    print(query)
    execute_q(query)

def create_mentee_bd():
    query = "insert into mentoring_mentees (user_id, linkedin, phone_number, state, city, attachments_url, company_bio, "\
        "how_mentors_can_help, step, created_at, updated_at) VALUES (1, 'https://www.linkedin.com/in/qaautomation/', "\
        "'48999999999', 'Santa Catarina', 'Florianópolis', 'http://meudrive.com/teste', 'Mentee Company BD', "\
        "'O mentor pode me ajudar assim...', 0, '2022-03-02 00:00:00+03', '2022-03-02 00:00:00+03');" 
    print(query)
    execute_q(query)

def select_mentee_bd():
    query = "select id from mentoring_mentees where company_bio='Mentee Company BD'"
    # query = "select id from mentoring_mentees where company_bio= '{}';".format(company_bio)
    print(query)
    id_mentee = execute_q(query)
    return id_mentee
  
#AGENDA
def create_agenda_bd():
    query = "insert into mentoring_agendas (mentor_id, init_time, end_time, mentoring_format, address, created_at, updated_at) "\
        "VALUES ({$id_mentor}, '2022-03-20 10:00:00+03', '2022-03-20 11:00:00+03', 'in_person','Rua Teste do Bug, 55', "\
        "'2022-03-02 10:00:00+03', '2022-03-02 10:01:00+03');"
    print(query)
    execute_q(query)

def select_agenda_bd():   
    query = "select id from mentoring_agendas;"
    print(query)
    agenda_id = execute_q(query)
    return agenda_id


