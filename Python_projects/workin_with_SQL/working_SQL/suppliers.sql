
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

            INSERT INTO suppliers VALUES (1,'Exotic Liquids','Charlotte Cooper','Purchasing Manager','UK','','EC1 4SD','London','49 Gilbert St.','(171) 555-2222','','','Chang,Aniseed Syrup');
            INSERT INTO suppliers VALUES (2,'New Orleans Cajun Delights','Shelley Burke','Order Administrator','USA','LA','70117','New Orleans','P.O. Box 78934','(100) 555-4822','','#CAJUN.HTM#','Chef Anton''s Cajun Seasoning,Chef Anton''s Gumbo Mix,Louisiana Fiery Hot Pepper Sauce,Louisiana Hot Spiced Okra');
            INSERT INTO suppliers VALUES (3,'Grandma Kelly''s Homestead','Regina Murphy','Sales Representative','USA','MI','48104','Ann Arbor','707 Oxford Rd.','(313) 555-5735','(313) 555-3349','','Grandma''s Boysenberry Spread,Uncle Bob''s Organic Dried Pears,Northwoods Cranberry Sauce');
            INSERT INTO suppliers VALUES (4,'Tokyo Traders','Yoshi Nagase','Marketing Manager','Japan','','100','Tokyo','9-8 Sekimai Musashino-shi','(03) 3555-5011','','','Mishi Kobe Niku,Ikura,Longlife Tofu');
            INSERT INTO suppliers VALUES (5,'Cooperativa de Quesos ''Las Cabras''','Antonio del Valle Saavedra','Export Administrator','Spain','Asturias','33007','Oviedo','Calle del Rosal 4','(98) 598 76 54','','','Queso Cabrales,Queso Manchego La Pastora');
            INSERT INTO suppliers VALUES (6,'Mayumi''s','Mayumi Ohno','Marketing Representative','Japan','','545','Osaka','92 Setsuko Chuo-ku','(06) 431-7877','','Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#','Konbu,Tofu,Genen Shouyu');
            INSERT INTO suppliers VALUES (7,'Pavlova, Ltd.','Ian Devling','Marketing Manager','Australia','Victoria','3058','Melbourne','74 Rose St. Moonie Ponds','(03) 444-2343','(03) 444-6588','','Pavlova,Alice Mutton,Carnarvon Tigers,Vegie-spread,Outback Lager');
            INSERT INTO suppliers VALUES (8,'Specialty Biscuits, Ltd.','Peter Wilson','Sales Representative','UK','','M14 GSD','Manchester','29 King''s Way','(161) 555-4448','','','Chai,Teatime Chocolate Biscuits,Sir Rodney''s Marmalade,Sir Rodney''s Scones,Scottish Longbreads');
            INSERT INTO suppliers VALUES (9,'PB Knäckebröd AB','Lars Peterson','Sales Agent','Sweden','','S-345 67','Göteborg','Kaloadagatan 13','031-987 65 43','031-987 65 91','','Gustaf''s Knäckebröd,Tunnbröd');
            INSERT INTO suppliers VALUES (10,'Refrescos Americanas LTDA','Carlos Diaz','Marketing Manager','Brazil','','5442','Sao Paulo','Av. das Americanas 12.890','(11) 555 4640','','','Guaraná Fantástica');
            INSERT INTO suppliers VALUES (11,'Heli Süßwaren GmbH & Co. KG','Petra Winkler','Sales Manager','Germany','','10785','Berlin','Tiergartenstraße 5','(010) 9984510','','','NuNuCa Nuß-Nougat-Creme,Gumbär Gummibärchen,Schoggi Schokolade');
            INSERT INTO suppliers VALUES (12,'Plutzer Lebensmittelgroßmärkte AG','Martin Bein','International Marketing Mgr.','Germany','','60439','Frankfurt','Bogenallee 51','(069) 992755','','Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#','Rössle Sauerkraut,Thüringer Rostbratwurst,Wimmers gute Semmelknödel,Rhönbräu Klosterbier,Original Frankfurter grüne Soße');
            INSERT INTO suppliers VALUES (13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Coordinator Foreign Markets','Germany','','27478','Cuxhaven','Frahmredder 112a','(04721) 8713','(04721) 8714','','Nord-Ost Matjeshering');
            INSERT INTO suppliers VALUES (14,'Formaggi Fortini s.r.l.','Elio Rossi','Sales Representative','Italy','','48100','Ravenna','Viale Dante, 75','(0544) 60323','(0544) 60603','#FORMAGGI.HTM#','Gorgonzola Telino,Mascarpone Fabioli,Mozzarella di Giovanni');
            INSERT INTO suppliers VALUES (15,'Norske Meierier','Beate Vileid','Marketing Manager','Norway','','1320','Sandvika','Hatlevegen 5','(0)2-953010','','','Geitost,Gudbrandsdalsost,Flotemysost');
            INSERT INTO suppliers VALUES (16,'Bigfoot Breweries','Cheryl Saylor','Regional Account Rep.','USA','OR','97101','Bend','3400 - 8th Avenue Suite 210','(503) 555-9931','','','Sasquatch Ale,Steeleye Stout,Laughing Lumberjack Lager');
            INSERT INTO suppliers VALUES (17,'Svensk Sjöföda AB','Michael Björn','Sales Representative','Sweden','','S-123 45','Stockholm','Brovallavägen 231','08-123 45 67','','','Inlagd Sill,Gravad lax,Röd Kaviar');
            INSERT INTO suppliers VALUES (18,'Aux joyeux ecclésiastiques','Guylène Nodier','Sales Manager','France','','75004','Paris','203, Rue des Francs-Bourgeois','(1) 03.83.00.68','(1) 03.83.00.62','','Côte de Blaye,Chartreuse verte');
            INSERT INTO suppliers VALUES (19,'New England Seafood Cannery','Robb Merchant','Wholesale Account Agent','USA','MA','02134','Boston','Order Processing Dept. 2100 Paul Revere Blvd.','(617) 555-3267','(617) 555-3389','','Boston Crab Meat,Jack''s New England Clam Chowder');
            INSERT INTO suppliers VALUES (20,'Leka Trading','Chandra Leka','Owner','Singapore','','0512','Singapore','471 Serangoon Loop, Suite #402','555-8787','','','Singaporean Hokkien Fried Mee,Ipoh Coffee,Gula Malacca');
            INSERT INTO suppliers VALUES (21,'Lyngbysild','Niels Petersen','Sales Manager','Denmark','','2800','Lyngby','Lyngbysild Fiskebakken 10','43844108','43844115','','Rogede sild,Spegesild');
            INSERT INTO suppliers VALUES (22,'Zaanse Snoepfabriek','Dirk Luchte','Accounting Manager','Netherlands','','9999 ZZ','Zaandam','Verkoop Rijnweg 22','(12345) 1212','(12345) 1210','','Zaanse koeken,Chocolade');
            INSERT INTO suppliers VALUES (23,'Karkki Oy','Anne Heikkonen','Product Manager','Finland','','53120','Lappeenranta','Valtakatu 12','(953) 10956','','','Maxilaku,Valkoinen suklaa,Lakkalikööri');
            INSERT INTO suppliers VALUES (24,'G''day, Mate','Wendy Mackenzie','Sales Representative','Australia','NSW','2042','Sydney','170 Prince Edward Parade Hunter''s Hill','(02) 555-5914','(02) 555-4873','G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#','Manjimup Dried Apples,Filo Mix,Perth Pasties');
            INSERT INTO suppliers VALUES (25,'Ma Maison','Jean-Guy Lauzon','Marketing Manager','Canada','Québec','H1J 1C3','Montréal','2960 Rue St. Laurent','(514) 555-9022','','','Tourtière,Pâté chinois');
            INSERT INTO suppliers VALUES (26,'Pasta Buttini s.r.l.','Giovanni Giudici','Order Administrator','Italy','','84100','Salerno','Via dei Gelsomini, 153','(089) 6547665','(089) 6547667','','Gnocchi di nonna Alice,Ravioli Angelo');
            INSERT INTO suppliers VALUES (27,'Escargots Nouveaux','Marie Delamare','Sales Manager','France','','71300','Montceau','22, rue H. Voiron','85.57.00.07','','','Escargots de Bourgogne');
            INSERT INTO suppliers VALUES (28,'Gai pâturage','Eliane Noz','Sales Representative','France','','74000','Annecy','Bat. B 3, rue des Alpes','38.76.98.06','38.76.98.58','','Raclette Courdavault,Camembert Pierrot');
            INSERT INTO suppliers VALUES (29,'Forêts d''érables','Chantal Goulet','Accounting Manager','Canada','Québec','J2S 7S8','Ste-Hyacinthe','148 rue Chasseur','(514) 555-2955','(514) 555-2921','','Sirop d''érable,Tarte au sucre');
            UPDATE products  SET suppliers_id=1  WHERE product_name IN ('Chang','Aniseed Syrup');
            UPDATE products  SET suppliers_id=2  WHERE product_name IN ('Chef Anton''s Cajun Seasoning','Chef Anton''s Gumbo Mix','Louisiana Fiery Hot Pepper Sauce','Louisiana Hot Spiced Okra');
            UPDATE products  SET suppliers_id=3  WHERE product_name IN ('Grandma''s Boysenberry Spread','Uncle Bob''s Organic Dried Pears','Northwoods Cranberry Sauce');
            UPDATE products  SET suppliers_id=4  WHERE product_name IN ('Mishi Kobe Niku','Ikura','Longlife Tofu');
            UPDATE products  SET suppliers_id=5  WHERE product_name IN ('Queso Cabrales','Queso Manchego La Pastora');
            UPDATE products  SET suppliers_id=6  WHERE product_name IN ('Konbu','Tofu','Genen Shouyu');
            UPDATE products  SET suppliers_id=7  WHERE product_name IN ('Pavlova','Alice Mutton','Carnarvon Tigers','Vegie-spread','Outback Lager');
            UPDATE products  SET suppliers_id=8  WHERE product_name IN ('Chai','Teatime Chocolate Biscuits','Sir Rodney''s Marmalade','Sir Rodney''s Scones','Scottish Longbreads');
            UPDATE products  SET suppliers_id=9  WHERE product_name IN ('Gustaf''s Knäckebröd','Tunnbröd');
            UPDATE products  SET suppliers_id=10  WHERE product_name IN ('Guaraná Fantástica');
            UPDATE products  SET suppliers_id=11  WHERE product_name IN ('NuNuCa Nuß-Nougat-Creme','Gumbär Gummibärchen','Schoggi Schokolade');
            UPDATE products  SET suppliers_id=12  WHERE product_name IN ('Rössle Sauerkraut','Thüringer Rostbratwurst','Wimmers gute Semmelknödel','Rhönbräu Klosterbier','Original Frankfurter grüne Soße');
            UPDATE products  SET suppliers_id=13  WHERE product_name IN ('Nord-Ost Matjeshering');
            UPDATE products  SET suppliers_id=14  WHERE product_name IN ('Gorgonzola Telino','Mascarpone Fabioli','Mozzarella di Giovanni');
            UPDATE products  SET suppliers_id=15  WHERE product_name IN ('Geitost','Gudbrandsdalsost','Flotemysost');
            UPDATE products  SET suppliers_id=16  WHERE product_name IN ('Sasquatch Ale','Steeleye Stout','Laughing Lumberjack Lager');
            UPDATE products  SET suppliers_id=17  WHERE product_name IN ('Inlagd Sill','Gravad lax','Röd Kaviar');
            UPDATE products  SET suppliers_id=18  WHERE product_name IN ('Côte de Blaye','Chartreuse verte');
            UPDATE products  SET suppliers_id=19  WHERE product_name IN ('Boston Crab Meat','Jack''s New England Clam Chowder');
            UPDATE products  SET suppliers_id=20  WHERE product_name IN ('Singaporean Hokkien Fried Mee','Ipoh Coffee','Gula Malacca');
            UPDATE products  SET suppliers_id=21  WHERE product_name IN ('Rogede sild','Spegesild');
            UPDATE products  SET suppliers_id=22  WHERE product_name IN ('Zaanse koeken','Chocolade');
            UPDATE products  SET suppliers_id=23  WHERE product_name IN ('Maxilaku','Valkoinen suklaa','Lakkalikööri');
            UPDATE products  SET suppliers_id=24  WHERE product_name IN ('Manjimup Dried Apples','Filo Mix','Perth Pasties');
            UPDATE products  SET suppliers_id=25  WHERE product_name IN ('Tourtière','Pâté chinois');
            UPDATE products  SET suppliers_id=26  WHERE product_name IN ('Gnocchi di nonna Alice','Ravioli Angelo');
            UPDATE products  SET suppliers_id=27  WHERE product_name IN ('Escargots de Bourgogne');
            UPDATE products  SET suppliers_id=28  WHERE product_name IN ('Raclette Courdavault','Camembert Pierrot');
            UPDATE products  SET suppliers_id=29  WHERE product_name IN ('Sirop d''érable','Tarte au sucre');
    
            ALTER TABLE ONLY suppliers
                ADD CONSTRAINT pk_suppliers PRIMARY KEY (suppliers_id);
        
            ALTER TABLE ONLY products
                ADD CONSTRAINT fk_suppliers FOREIGN KEY (suppliers_id) REFERENCES suppliers;
    