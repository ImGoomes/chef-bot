CREATE TABLE tb_bot(
    id_bot INT PRIMARY KEY,
    name VARCHAR(255),
    welcome_msg VARCHAR(255),
    farewell_msg VARCHAR(255),
    downtime INT,
    default_answer VARCHAR(255)
);

CREATE TABLE tb_segment(
    id_segment INT PRIMARY KEY,
    name VARCHAR(255),
    tb_bot INT,
    foreign key(tb_bot) references tb_bot(id_bot)
);

create sequence sequence_tb_bot
increment by 1
start with 1;

create sequence sequence_tb_segment
increment by 1
start with 1;
