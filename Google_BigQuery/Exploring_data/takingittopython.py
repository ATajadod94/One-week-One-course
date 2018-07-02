from google.cloud import bigquery

def query_abondonded_carts();
    clinet = bigquery.Client()
    query_job = client.query("""
     YOUR SQL CODE
     """)

     results = query_job.result()

     for row in results:
         print('Data {} | Session {} |  {}')
            .format(row.date, row.unique_session_id, ... )

if __name__ == '__main__':
    query_abondonded_carts();
