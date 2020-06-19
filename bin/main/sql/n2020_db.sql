DROP TABLE tb_user;
DROP SEQUENCE sequence_tb_user;
DROP TABLE tb_segment;
DROP SEQUENCE sequence_tb_segment;
DROP TABLE tb_bot;
DROP SEQUENCE sequence_tb_bot;


CREATE SEQUENCE sequence_tb_bot
INCREMENT BY 1
START WITH 1;

CREATE TABLE tb_bot(
    id_bot INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    welcome_msg VARCHAR(255) NOT NULL,
    farewell_msg VARCHAR(255) NOT NULL,
    downtime INT NOT NULL,
    default_answer VARCHAR(255) NOT NULL
);

INSERT INTO tb_bot VALUES(sequence_tb_bot.nextval, 'Chefbot', 'Olá, eu sou o The Good Bot. Serei seu auxiliar gastronômico. Em que posso lhe ajudar?', 'Tchau', 5, 'Desculpe, não entendi o que você quis dizer');

CREATE SEQUENCE sequence_tb_segment
INCREMENT BY 1
START WITH 1;

CREATE TABLE tb_segment(
    id_segment INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    tb_bot INT NOT NULL,
    FOREIGN KEY(tb_bot) REFERENCES tb_bot(id_bot)
);

INSERT INTO tb_segment VALUES(sequence_tb_segment.nextval, 'saudação', 1);
INSERT INTO tb_segment VALUES(sequence_tb_segment.nextval, 'ajuda', 1);
INSERT INTO tb_segment VALUES(sequence_tb_segment.nextval, 'intenção de alimentação', 1);
INSERT INTO tb_segment VALUES(sequence_tb_segment.nextval, 'exibição receitas', 1);

CREATE SEQUENCE sequence_tb_user
INCREMENT BY 1
START WITH 1;

CREATE TABLE tb_user(
    id_user INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO tb_user(id_user, name, email, password) VALUES(sequence_tb_user.nextval, 'USoftware', 'usoftware@usoftware.com', '1234');

select * from tb_bot;
select * from tb_segment;
select * from tb_user;
