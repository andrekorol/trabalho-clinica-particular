INSERT INTO historico(permaneceMuitoSentado, temAntecedentesCirurgicos, antecedentesCirurgicos) VALUES
(1, 1, "apendicite"),
(0, 0, "-");

###############################################################################################
INSERT INTO historico(permaneceMuitoSentado,temAntecedentesCirurgicos,antecedentesCirurgicos,
fezTratamentoEsteicoAnteriormente,tratamentoEsteticoAnterior,temAtencendetesAlergicos,
atecendentesAlergicos,praticaAtividadeFsica,atividadesFisicas,
fumante,temAlimentacaoBalanceada,alimentacao,
bebeliquidosComFrequencia,liquidos,gestante,
temFilhos,numeroFilhos,algumProblemaOrtopédico,
problemaOrtopédico,algumTratamentoMedico,usouAcidosNaPele,
acidosUsados,algumTratamentoOrtomecular,
tratamentoOrtomcular,temCuidadoDiarios,cuidadosDiarios,
portadorDeAmarcapasso,Marcapasso,presencaeMetais,
metais,temAtencedentesOncalogicos,antecedentesOncologicos,
temCicloMenstrualRegular,observacoesCicloMestrual,
usaAnticoncepiciona,metodoAnticoncepicional,temVarizes,
graVarizes,temLesoes,tipoDeLesoes,
hipertensao,epilepisia,temHilepisia,hipotensao,diabetes)
VALUES(1,1,"apendice",0, "dremagem Linfatica" 1 ,"caramarao" ,1, futebol,1,1,"fastfood",1,"cerveja",1,1,3,1,
"psiquiatra",1,"acidoHialuronico",1,"suplementos,1",0,"umAparelho",1,"ferro",1,"neoplasias",1,"dura5dias",1,
"prevencao",1," vasinhos",1,"Tornozelo e Pé",1,0,"doencanoSistemaNervoso",1,1);



VALUES(0,1,"apendice",0, "Shiatsu" 1 ,"pao" ,0, Volei,1,1,"pizza",1,"agua",0,1,2,1,
"psicologa",1,"acidoHialuronico",1,"suplementos,1",0,"umAparelho",1,"aco",1,"neoplasias",1,"dura5dias",1,
"prevencao",1," vasinhos",1,"Tornozelo e Pé",1,1,"doencanoSistemaNervoso",0,1);


VALUES(0,1,"chagas",0, "drenagem" 1 ,"queijo" ,0, futesal,1,1,"pizza",1,"agua",0,1,2,1,
"psicologa",1,"acidoHialuronico",1,"suplementos,1",0,"umAparelho",1,"aco",1,"neoplasias",1,"dura5dias",1,
"prevencao",1," vasinhos",1,"Tornozelo e Pé",0,1,"doencanoSistemaNervoso",0,1);


VALUES(1,1,"corona",0, "massagemlinfatica" 1 ,"leite" ,0, futebol,0,1,"pizza",1,"agua",0,0,3,1,
"psicologa",1,"acidoHialuronico",0,"suplementos,0",1,"umAparelho",0,"aco",1,"neoplasias",0,"dura5dias",0,
"prevencao",1," vasinhos",1,"Tornozelo e Pé",1,0,"doencanoSistemaNervoso",1,1);


VALUES(1,1,"",1,"relexora" 1 ,"pao" ,0, basquete,1,1,"Japones",1,"agua",0,1,2,1,
"psicologa",1,"acidoHialuronico",1,"suplementos,1",0,"umAparelho",1,"aco",1,"neoplasias",1,"dura5dias",1,
"prevencao",1," vasinhos",1,"Tornozelo e Pé",1,1,"doencanoSistemaNervoso",0,1);

###########################################################################################################################
insert into anamneseCorporal(nome,Endereço,sexo,bairro,dataFicha,dataNascimento,FonesRes,FonesComercial,CEP,etinia,profissao,email,motivoDaVisita,nomeEmergencia,telefoneEmergencia,nomeMedico,telefoneMedico,convenioMedico,carterinhaConvenio,hosptital,medico_idmedico,historico_idhistorico) values 
 ('Vicente Raimundo Gustavo da Rocha','Rua Ipê-branco','M','Dunas do Peró','05/02/2000','22\/11\/1959','(22) 2731-8445','(22) 99971-5982','28923-656',' ','engenheiro','vicenteraimundogustavodarocha_@flextroniocs.copm.br','refreiado','pronto socorro','Nicholas','12988546255','unimed ','0118365 ','vivalle','2','2');
 ('Mariane Alícia da Silva','Rua Coronel Alberto de Melo','F','Vila de Cava','03/04/2007','26\/08\/1946','(21) 3681-3041','(21) 99344-6230','6052-050',' ','farmaceutico','mmarianealiciadasilva@trilhavitoria.com.br','dor de cabeca','pronto socorro','Luiza','1294485445','policlim','51818918','Orto','4 ','1');
 ('Caroline Sophia Dias','Rua Alberto Domingos','F','Triângulo','02/07/2005','14\/01\/1980','(24) 2729-3362 ','(24) 98785-6897','25820-100 ',' ','Motorista','carolinesophiadias..carolinesophiadias@fundamentos.com.br','virose','pronto socorro','Pedro','12988542233','suamerica','19818189','policlim','3','5');
 ('Eliane Clarice Marina das Neves','Rua Maria Adelaide de Carvalho','F','Centro','06/07/2002','10\/08\/1954','(21) 3874-1216','(21) 98887-6552','26210-070 ','  ',' compredor','elianeclaricemarinadasneves__elianeclaricemarinadasneves@mourafiorito.com','diarreia','Isa',suamerica','1891891','Orto','1','3');
 ('Osvaldo Carlos Anthony Mendes','Travessa Luzia Cruz','M ','Parque Leopoldina','03/04/2018','07\/12\/1999 ','(22) 2770-7743','(22) 99860-9751','28051-160 ','   ','osvaldocarlosanthonymendes-96@zootecnista.com.br','pre Natal','pronto socorro','Felipe','12988542266','suamerica ','1191989','policlim ',5','2');
 ('Malu Vanessa Gabriela Araújo','Rua José Eugênio',' F','São Cristóvão','09/08/2003','26\/07\/1978','(21) 3792-7948','(21) 99150-7818','20941-140','   ','venda','maluvanessagabrielaaraujo_@quintadoslagos.com.br','cirurgia ','pronto socorro','Lucas','1285544555','suamerica','15159196','Orto','2','3');

######################################################################################################################################################################################################################################



