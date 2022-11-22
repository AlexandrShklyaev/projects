import json


def get_data_json():
    """чтение файла json"""
    with open('suppliers.json', encoding='utf-8') as input_file:
        return json.load(input_file)


def set_data_to_sql_file(data: str):
    """ запись запроса в файл sql"""
    with open('suppliers.sql', 'w', encoding="utf-8") as output_file:
        output_file.write(data)


def get_req_insert():
    """ формирвание запроса на добавление новых данных со связями в стркуктуру бд"""
    list_suppliers = get_data_json()
    req = """
            ALTER TABLE IF EXISTS products
                ADD COLUMN IF NOT EXISTS suppliers_id smallint;
            
            DROP TABLE IF EXISTS suppliers; 
            
            CREATE TABLE suppliers (
                suppliers_id smallint NOT NULL,
                company_name character varying(40) NOT NULL,
                contact_1 character varying(40),
                contact_2 character varying(40),
                country character varying(40),
                state character varying(20),
                index character varying(20),
                city character varying(100),
                other character varying(255),
                phone character varying(24),
                fax character varying(24),
                homepage text,
                products character varying(255)
                
            );
"""
    req_update_products = ""
    suppliers_id = 0
    row2 = ""
    for each_row in list_suppliers:
        # дербаним построчно на значения полей
        suppliers_id += 1
        company_name = each_row['company_name'].replace("'", "''")
        _contact = each_row['contact'].split(",")
        contact_1 = _contact[0].strip().replace("'", "''")
        contact_2 = _contact[1].strip().replace("'", "''")
        _address = each_row['address'].split(";")
        country = _address[0].strip().replace("'", "''")
        state = _address[1].strip().replace("'", "’")
        index = _address[2].strip().replace("'", "''")
        city = _address[3].strip().replace("'", "''")
        other = _address[4].strip().replace("'", "''")
        phone = each_row['phone'].replace("'", "''")
        fax = each_row['fax'].replace("'", "''")
        homepage = each_row['homepage'].replace("'", "''")
        list_products = each_row['products']

        list_good_products =[each_product.replace("'", "''") for each_product in list_products]

        products = "','".join(list_good_products)
        row2 += f"""
            UPDATE products  SET suppliers_id={suppliers_id}  WHERE product_name IN ('{products}');"""  # заполнение идешек

        str_products = ",".join(list_good_products)
        row = f"""
            INSERT INTO suppliers VALUES ({suppliers_id},'{company_name}','{contact_1}','{contact_2}','{country}','{state}','{index}','{city}','{other}','{phone}','{fax}','{homepage}','{str_products}');"""
        req += row
    req += req_update_products
    req += row2
    req += f"""
    
            ALTER TABLE ONLY suppliers
                ADD CONSTRAINT pk_suppliers PRIMARY KEY (suppliers_id);
        
            ALTER TABLE ONLY products
                ADD CONSTRAINT fk_suppliers FOREIGN KEY (suppliers_id) REFERENCES suppliers;
    """

    return req


if __name__ == '__main__':
    req_insert = get_req_insert()
    set_data_to_sql_file(req_insert)
