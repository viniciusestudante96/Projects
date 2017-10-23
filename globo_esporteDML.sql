insert into jogadores(id, nome) values (1,'Júlio César'), (2,'Lucas'), (3,'Nogueira'),(4,'Frazan'),(5,'Léo'),
(6,'Orejuela'),(7,'Wendel'),(8,'Douglas'),(9,'Gustavo Scarpa'),(10,'Robinho'),(11,'Henrique Dourado'),
(12,'Marlon Freitas'),(13,'Sornoza'),(14,'Wellington Silva'),(15,'Fernando Prass'),(16,'Mayke'),(17,'Edu Dracena'),
(18,'Juninho'),(19,'Egídio'),(20,'Jean'),(21,'Tche Tche'),(22,'Moisés'),(23,'Dudu'),(24,'Deyverson'),(25,'Willian'),
(26,'Thiago Santos'),(27,'Roger Guedes'),(28,'Borja');
insert into clubes(id, nome, sigla,tecnico) values (1,'Fluminense','Flu','Abel Braga'), (2,'Palmeiras','Pal','Cuca');
insert into jogadores_clubes(jogador_posicao,dt_inicio_contrato,dt_final_contrato,jogadores_id,clubes_id) values 
			/*JOGADORES FLUMINENSE*/
            ('GOLEIRO','2016-01-20','2018-01-06',1,1), ('LATERAL-DIREITO','2016-06-10','2017-12-06',2,1),
			('LATERAL-ESQUERDO', '2017-05-01','2019-03-05',3,1),('ZAGUEIRO','2017-01-08','2019-01-08',4,1),
            ('ZAGUEIRO','2015-07-22','2018-07-22',5,1),('MEIO-CAMPO','2017-01-04','2020-01-04',6,1),
            ('MEIO-CAMPO','2016-02-14','2020-01-04',7,1), ('MEIO-CAMPO','2016-02-14','2020-01-04',8,1),
            ('MEIO-CAMPO','2016-06-24','2020-02-04',9,1),('MEIO-CAMPO','2015-06-24','2017-12-04',10,1),
            ('ATACANTE','2017-01-04','2019-01-04',11,1),('MEIO-CAMPO','2015-06-24','2020-12-04',12,1),
            ('MEIO-CAMPO','2015-06-24','2017-12-04',13,1),('ATACANTE','2014-06-24','2017-12-04',14,1),
            /*JOGADORES PALMEIRAS*/
            ('GOLEIRO','2016-01-20','2018-01-06',15,2), ('LATERAL-DIREITO','2016-06-10','2017-12-06',16,2),
			('LATERAL-ESQUERDO', '2017-05-01','2019-03-05',17,2),('ZAGUEIRO','2017-01-08','2019-01-08',18,2),
            ('ZAGUEIRO','2015-07-22','2018-07-22',19,2),('MEIO-CAMPO','2017-01-04','2020-01-04',20,2),
            ('MEIO-CAMPO','2016-02-14','2020-01-04',21,2), ('MEIO-CAMPO','2016-02-14','2020-01-04',22,2),
            ('MEIO-CAMPO','2016-06-24','2020-02-04',23,2),('MEIO-CAMPO','2015-06-24','2017-12-04',24,2),
            ('ATACANTE','2017-01-04','2019-01-04',25,2),('MEIO-CAMPO','2015-06-24','2020-12-04',26,2),
            ('ATACANTE','2015-06-24','2017-12-04',27,2),('ATACANTE','2014-06-24','2017-12-04',28,2);
insert into estadios(id, nome) values (1,'Maracanã');
insert into rodadas(id, descricao) values (1,'25ª');
insert into placares(id, dt_jogo,gol_mandate,gol_visitante) values (1,'2017-09-24','0','1');
insert into jogadores_placares(cartao, gol,substituicoes,jogadores_id,placares_id) values 
							/*DADOS DO FLUMINENSE*/
                            ('amarelo',null,null,2,1),('amarelo',null,null,3,1),
                            (null,'sai',null,6,1),(null,'sai',null,8,1),(null,'sai',null,10,1),
                            (null,'entra',13,1),(null,'entra',12,1),(null,'entra',14,1),
                            /*DADOS DO PALMEIRAS*/
							('amarelo',null,null,17,1),('amarelo','1',null,19,1),(null,'sai',null,20,1),
                            (null,'sai',null,24,1),(null,'sai',null,25,1),(null,'entra',26,1),
                            (null,'entra',27,1),(null,'entra',28,1);
