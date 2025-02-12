insert into user (username, password, role) values ('John', 'john123', 'SALE');
insert into user (username, password, role) values ('Susan', 'susan123', 'WAREHOUSE');

insert into region (name) values ('YGN');

insert into township (name) values ('Kyauktada');
insert into township (name) values ('Bahan');
insert into township (name) values ('Kamaryut');
insert into township (name) values ('Mingalar Taung Nyunt');
insert into township (name) values ('Sanchaung');
insert into township (name) values ('Lanmadaw');
insert into township (name) values ('Pabedan');
insert into township (name) values ('Tamwe');
insert into township (name) values ('Yankin');
insert into township (name) values ('Ahlone');

insert into shop (name, region_id, township_id, address, available_status) values ('Tech Nest', 1, 10, 'No-155, Lower Kyi Myin Dine Road', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('Digital Hub', 1, 2, 'No-45, Kabar Aye Pagoda Road', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('Cyber Core', 1, 7, 'Junction City Mall, Level 3', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('Code & Pixel', 1, 6, 'No-85, Landamadaw Street', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('Byte Bazaar', 1, 5, 'No-56, Pyay Road', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('NextGen Gadgets', 1, 2, 'Myanmar Plaza, Level 1', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('Infinity Tech Store', 1, 1, 'No-102, Sule Pagoda Road', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('GigaWorld Electronics', 1, 5, 'Dagon Center II', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('Circuit City Pro', 1, 4, 'Yuzana Plaza', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('The Data Den', 1, 1, 'No-15, Pansodan Street', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('Innovate IT', 1, 5, 'No-29, Myaynigone Zay Street', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('PC Planet', 1, 7, 'No-44, Seikanthar Street', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('Future Bytes', 1, 8, 'Ocean Supercenter', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('SmartEdge Solutions', 1, 3, 'No-60, University Avenue Road', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('Cloud Connectors', 1, 2, 'Pearl Condo', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('Mega Tech Mart', 1, 4, 'Mingalar Market', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('Hardware Haven', 1, 6, 'Junction Mawtin, Level 2', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('IT Essentials Co.', 1, 9, 'Yankin Center', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('Tech Fusion Store', 1, 1, 'No-78, 35th Street', 'OPEN');
insert into shop (name, region_id, township_id, address, available_status) values ('Binary Boutique', 1, 1, 'No-18, Bogalay Zay Street ', 'OPEN');

insert into brand (name) values ('Apple');
insert into brand (name) values ('Microsoft');
insert into brand (name) values ('G Skill');
insert into brand (name) values ('Itel');
insert into brand (name) values ('HP');
insert into brand (name) values ('LG');
insert into brand (name) values ('WD');
insert into brand (name) values ('Epson');
insert into brand (name) values ('Logitech');
insert into brand (name) values ('Samsung');
insert into brand (name) values ('Canon');
insert into brand (name) values ('APC');
insert into brand (name) values ('Dell');
insert into brand (name) values ('Asus');
insert into brand (name) values ('Seagate');
insert into brand (name) values ('Cisco');
insert into brand (name) values ('TP-link');
insert into brand (name) values ('Acer');
insert into brand (name) values ('HyperX');
insert into brand (name) values ('MSI');

insert into category (name) values ('Storage Device');
insert into category (name) values ('Printer');
insert into category (name) values ('Accessories');
insert into category (name) values ('Power Supply');
insert into category (name) values ('Desktop');
insert into category (name) values ('Laptop');
insert into category (name) values ('Networking Device');
insert into category (name) values ('Memory');
insert into category (name) values ('Software');

insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values (CURRENT_DATE, 1, '7149', 'CONSUMER', 7, "black", 'PENDING');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values (CURRENT_DATE, 1, '7148', 'CONSUMER', 7, "white", 'PENDING');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values (CURRENT_DATE, 1, '7147', 'CONSUMER', 4, "black", 'PENDING');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values (CURRENT_DATE, 1, '7146', 'CONSUMER', 10, "black", 'PENDING');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values (CURRENT_DATE, 1, '7145', 'CONSUMER', 4, "black", 'PENDING');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values (CURRENT_DATE, 1, '7144', 'CONSUMER', 15, "white", 'PENDING');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-10', 1, '7143', 'CONSUMER', 11, "gray", 'PENDING');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-10', 1, '7142', 'CONSUMER', 8, "black", 'PENDING');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-10', 1, '7141', 'CONSUMER', 16, "red", 'PENDING');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-09', 1, '7140', 'CONSUMER', 20, "black", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-09', 1, '7139', 'CONSUMER', 18, "black", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-09', 1, '7138', 'CONSUMER', 3, "yellow", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-09', 1, '7137', 'CONSUMER', 5, "black", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-08', 1, '7136', 'CONSUMER', 8, "green", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-08', 1, '7135', 'CONSUMER', 12, "black", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-07', 1, '7134', 'CONSUMER', 19, "gray", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-07', 1, '7133', 'CONSUMER', 17, "green", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-07', 1, '7132', 'CONSUMER', 13, "black", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-07', 1, '7131', 'CONSUMER', 11, "white", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-06', 1, '7130', 'CONSUMER', 10, "black", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-06', 1, '7129', 'CONSUMER', 14, "white", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-05', 1, '7128', 'CONSUMER', 9, "black", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-04', 1, '7127', 'CONSUMER', 7, "gray", 'DELIVERED');
insert into orders (created_date, created_user_id, invoice_no, product_segment, shop_id, remarks, status) values ('2025-02-04', 1, '7126', 'CONSUMER', 2, "black", 'DELIVERED');

insert into product (name, brand_id, category_id, price, cashback, stock) values ('Dell XPS 13', 13, 6, 1800000, 0, 20);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Lenovo IdeaPad 5', 4, 6, 800000, 0, 30);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('HP EliteBook 840', 2, 6, 2000000, 0, 10);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Asus TUF Gaming F15 ', 12, 1, 700000, 0, 5);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Acer Aspire 5 ', 5, 9, 600000, 0, 20);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Apple MacBook Pro 14-inch', 9, 5, 650000, 0, 35);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('MSI Prestige 14', 4, 7, 3000000, 0, 46);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('HP Omen 25L', 6, 6, 1500000, 0, 20);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Dell OptiPlex 7090', 8, 8, 1300000, 0, 20);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Asus ROG Strix G10', 17, 3, 600000, 0, 20);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Microsoft Surface Studio', 18, 2, 500000, 0, 20);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('ViewSonic VX3276 Monitor', 19, 4, 400000, 0, 20);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('LG UltraGear 27-inch', 20, 3, 6500000, 0, 20);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Samsaung Smart Monitor M8', 10, 1, 4500000, 0, 7);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Dell XPS 15', 7, 2, 10000000, 0, 20);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Logitech MX Keys Keyboard', 6, 7, 1600000, 0, 26);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Razer Basilisk V3 Mouse ', 5, 6, 1400000, 0, 21);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Kingston NV2 2TB SSD', 4, 3, 1100000, 0, 20);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('WD Black SN850X 1TB SSD', 3, 4, 1700000, 0, 17);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Seagate IronWolf 4TB HDD', 2, 4, 900000, 0, 20);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Samsung T7 Protabel SSD', 4, 1, 2500000, 0, 9);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('TP-link Deco XE75 Router', 1, 7, 2000000, 0, 10);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Cisco Catalyst 9200 Switch', 6, 6, 450000, 0, 20);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Epson EcoTank ET-3850', 15, 3, 650000, 0, 18);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Canon Image CLASS MF644 CDW', 16, 7, 700000, 0, 15);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Adobe Photoshop CC', 17, 9, 6000000, 0, 14);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Microsoft Office 2021', 20, 6, 7000000, 0, 13);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('Kaspersky Total Security', 13, 5, 1400000, 0, 10);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('NVIDIA RTZ 4060 GPU', 11, 8, 1800000, 0, 20);
insert into product (name, brand_id, category_id, price, cashback, stock) values ('G.Skill Trident Z RAM 32 GB', 14, 6, 1800000, 0, 8);

insert into service_center (name, contact, address, available_status) values ('Access Spectrum Co., Ltd', '+951-376448 ', '364-366, Maha Bandoola Garden Street, Kyauktada Township, Yangon', 'OPEN');
insert into service_center (name, contact, address, available_status) values ('COMPUTER TECHNICAL TEAM (Trading) Co., Ltd', '+951-8398792', 'No. 11/13, 45th Street, Botahtaung Township, Yangon', 'OPEN');
insert into service_center (name, contact, address, available_status) values ('Myanma Computer Company', '+951-245762', 'Theingyi Bazaar, Block C, 3rd Floor, Ward 3&4, Pabedan Township, Yangon', 'OPEN');
insert into service_center (name, contact, address, available_status) values ('ICT Com', '+959-977715152', '1st Floor, Room 5, Sein Gay Har Super Center, Pabedan Township, Yangon', 'OPEN');
insert into service_center (name, contact, address, available_status) values ('Lenovo Exclusive Store', '+951-9253636', 'Junction City, Bogyoke Road, Pabedan Township, Yangon', 'OPEN');
insert into service_center (name, contact, address, available_status) values ('Myanmar ICT Park', '+951-652236', 'Hlaing Campus, Yangon', 'OPEN');
insert into service_center (name, contact, address, available_status) values ('ASUS Myanmar Service Center', '+959-79345678', '2nd Floor, Ocean Supercenter, Kamayut Township, Yangon', 'OPEN');
insert into service_center (name, contact, address, available_status) values ('HP Authorized Service Center', '+951-558855', 'Pearl Condo Tower A, Bahan Township, Yangon', 'OPEN');
insert into service_center (name, contact, address, available_status) values ('Dell Service Center', '+951-556677', 'Pyay Road, Sanchaung Township, Yangon', 'OPEN');
insert into service_center (name, contact, address, available_status) values ('Zawgyi Electronics  goods and ICT product repairs', '+951-394095', 'Anawrahta Road, Downtown Yangon', 'OPEN');





