 create database db_generation_game_online;
 use db_generation_game_online;
 
 create table tb_classe(
 id bigint auto_increment,
 tipo varchar(255) not null, 
 defesa decimal (5,3),
 ataque decimal(5,3),
 primary key (id)
 );
 
insert into tb_classe (tipo, defesa, ataque) values ( "Atirador",0.500,2.500);
insert into tb_classe (tipo, defesa, ataque) values ( "Atacante",2.000,2.000);
insert into tb_classe (tipo, defesa, ataque) values ( "Escudeiro",3.500,0.500);
insert into tb_classe (tipo, defesa, ataque) values ( "Voador",1.500,1.500);
insert into tb_classe (tipo, defesa, ataque) values ( "Dêmonio",0.500,4.000); 
  
 
 select * from tb_classe;
 
 create table tb_personagem (
 id bigint auto_increment,
 personagem varchar(255) not null,
 habilidade varchar(255) not null,
 Elemento varchar (255) not null,
 sexo varchar (255) not null, 
 classe varchar (255) not null,
 comp bigint,
 primary key (id),
  FOREIGN KEY (comp) references tb_classe (id)
 );
 
 insert into tb_personagem (personagem, habilidade, Elemento, sexo, classe,comp) values ( "Sarastro", "Camuflagem", "Água", "Masculino", "Épico",1); 
 insert into tb_personagem (personagem, habilidade, Elemento, sexo, classe,comp) values ( "Shinna", "Hipnose", "Mágica", "Feminino", "Raro",3); 
 insert into tb_personagem (personagem, habilidade, Elemento, sexo, classe,comp) values ( "Hiuku", "Explosão", "Fogo", "Não Definido", "Comum",2); 
 insert into tb_personagem (personagem, habilidade, Elemento, sexo, classe,comp) values ( "Yumegô", "Inteligência", "Psíquico", "Feminina", "Comum",4); 
 insert into tb_personagem (personagem, habilidade, Elemento, sexo, classe,comp) values ( "Paradox", "Telecinesia", "Fada", "M/F", "Ouro",5); 
 insert into tb_personagem (personagem, habilidade, Elemento, sexo, classe,comp) values ( "Aquarius", "Controle Temporal", "Fantasma", "Masculino", "Prata",2); 
 insert into tb_personagem (personagem, habilidade, Elemento, sexo, classe,comp) values ( "Escorpion", "Envenenamento", "Sombrio", "Masculino", "Divino",4); 
 insert into tb_personagem (personagem, habilidade, Elemento, sexo, classe,comp) values ( "Denali", "Congelamento", "Gelo", "Fluido", "Lengendária",3); 
 
 




