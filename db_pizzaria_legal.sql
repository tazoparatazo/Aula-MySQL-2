 create database db_pizzaria_legal;
 
 use db_pizzaria_legal;
 
 create table tb_classe(

  id bigint auto_increment,
 tipo varchar(255) not null, 
 massa varchar (255) not null,
 tamanho varchar (255) not null,
 primary key (id)

 );
 
insert into tb_classe ( tipo, massa, tamanho ) values ( "Doce", "Fina", "Broto");
insert into tb_classe ( tipo, massa, tamanho ) values ( "Doce", "Pam", "Broto");
insert into tb_classe ( tipo, massa, tamanho ) values ( "Salgada", "Fina", "Broto");
insert into tb_classe ( tipo, massa, tamanho ) values ( "Salgada", "pam", "Broto");
insert into tb_classe ( tipo, massa, tamanho ) values ( "Doce", "Fina", "Gandre");
insert into tb_classe ( tipo, massa, tamanho ) values ( "Salgada", "Fina", "Grande");

select * from tb_classe;

create table tb_pizza(

id bigint auto_increment,
Sabor varchar (255),
borda varchar (255),
Vegana varchar (255),
Consumo varchar (255),
valor decimal (4,2),
comp bigint,
primary key (id),
FOREIGN KEY (comp) references tb_classe (id)
);

insert into tb_pizza (Sabor, borda, Vegana, Consumo, valor, comp)values ("Mussarela" , "Rechada" , "sim", "Local", 49.0, 6);
insert into tb_pizza (Sabor, borda, Vegana, Consumo, valor, comp)values ("Mussarela" , "Rechada" , "nao", "Delivery",35.00, 6);
insert into tb_pizza (Sabor, borda, Vegana, Consumo, valor, comp)values ("Chocolate", "Normal", "Sim", "Delivery", 60.00, 5);
insert into tb_pizza (Sabor, borda, Vegana, Consumo, valor, comp)values ("Escarola", "normal","sim", "local", 31.25 , 4 );
insert into tb_pizza (Sabor, borda, Vegana, Consumo, valor, comp)values ("Julieta", " Recheada" ,"Não", "Delivery" , 25.99 , 3);
insert into tb_pizza (Sabor, borda, Vegana, Consumo, valor, comp)values ("Peperoni" , "Normal" , "Não" , "Delivery" , 41.00 , 3);
insert into tb_pizza (Sabor, borda, Vegana, Consumo, valor, comp)values ("Morango" , "Normal", "Sim" , "Delivery", 25.00, 1);
insert into tb_pizza (Sabor, borda, Vegana, Consumo, valor, comp)values ("Mussarela" , "Rechada" , "sim", "Local", 49.0, 6);

select * from tb_pizza;

select tb_pizza.Sabor, tb_pizza.borda, tb_pizza.Vegana, tb_pizza.Consumo,  tb_pizza.valor ,  tb_classe.tipo, tb_classe.massa, tb_classe.tamanho from tb_pizza
 inner join tb_classe on tb_classe.id = tb_pizza.comp;

select tb_pizza.Sabor, tb_pizza.borda, tb_pizza.Vegana, tb_pizza.Consumo,  tb_pizza.valor ,  tb_classe.tipo, tb_classe.massa, tb_classe.tamanho from tb_pizza
 inner join tb_classe on tb_classe.id = tb_pizza.comp where tb_pizza.valor > 45.00;



select tb_pizza.Sabor, tb_pizza.borda, tb_pizza.Vegana, tb_pizza.Consumo,  tb_pizza.valor ,  tb_classe.tipo, tb_classe.massa, tb_classe.tamanho from tb_pizza
 inner join tb_classe on tb_classe.id = tb_pizza.comp  where valor between 29.00 and 60.00;


select tb_pizza.Sabor, tb_pizza.borda, tb_pizza.Vegana, tb_pizza.Consumo,  tb_pizza.valor ,  tb_classe.tipo, tb_classe.massa, tb_classe.tamanho from tb_pizza
 inner join tb_classe on tb_classe.id = tb_pizza.comp  where sabor like "%C%";
 
 select tb_pizza.Sabor, tb_pizza.borda, tb_pizza.Vegana, tb_pizza.Consumo,  tb_pizza.valor ,  tb_classe.tipo, tb_classe.massa, tb_classe.tamanho from tb_pizza
 inner join tb_classe on tb_classe.id = tb_pizza.comp  where tb_classe.tipo = "Doce";


