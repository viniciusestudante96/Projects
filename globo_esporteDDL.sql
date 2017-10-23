/*drop schema ge_db;*/
create schema ge_db;
use ge_db;
create table jogadores(id bigint (255) primary key auto_increment, nome varchar (255));
create table clubes(id bigint (255) primary key auto_increment, nome varchar (100), sigla varchar(6),tecnico varchar(4));
create table jogadores_clubes(jogador_posicao varchar (20), dt_inicio_contrato date, dt_final_contrato date);
create table estadios(id bigint (255)primary key auto_increment, nome varchar (255));
create table rodadas(id bigint (255)primary key auto_increment, descricao varchar(2));
create table placares(id bigint (255)primary key auto_increment, dt_jogo date, gol_mandante varchar(1), gol_visitante varchar(1));
create table jogadores_placares(cartao varchar(10), gol varchar(50),substituicoes varchar(255));

alter table jogadores_clubes add jogadores_id bigint; 
alter table jogadores_clubes add clubes_id bigint;
alter table jogadores_placares add jogadores_id bigint;
alter table jogadores_placares add placares_id bigint;

alter table jogadores_clubes add constraint primary key chaves_primarias_jogadores_clubes(jogadores_id,clubes_id);
alter table jogadores_clubes add foreign key (jogadores_id) references jogadores(id);
alter table jogadores_clubes add foreign key (clubes_id) references clubes(id);
alter table jogadores_placares add foreign key (jogadores_id) references jogadores(id);
alter table jogadores_placares add foreign key (placares_id) references placares(id);

alter table jogadores modify nome varchar(255) not null;
alter table clubes modify nome varchar(100) not null;
alter table clubes modify sigla varchar(6) not null;
alter table clubes modify tecnico varchar(6) not null;
alter table jogadores_clubes modify jogador_posicao varchar (20) not null;
alter table jogadores_clubes modify dt_inicio_contrato date not null;
alter table estadios modify nome varchar (255) not null;
alter table rodadas modify descricao varchar(2) not null;
alter table placares modify dt_jogo date not null; 
alter table placares modify gol_mandante varchar(1) not null;
alter table placares modify gol_visitante varchar(1) not null;

alter table clubes add unique (nome);
alter table clubes add unique (sigla);
alter table clubes add unique (tecnico);
alter table estadios add unique (nome);
alter table rodadas add unique (descricao);
alter table rodadas add unique (dt_jogo);


