CREATE TABLE Produto (
Codigo_Produto VARCHAR (25),
Preço VARCHAR (25),
Garantia Varchar (25),
Categoria Varchar (25),
PRIMARY KEY (Codigo_Produto)
);

CREATE TABLE Telefone_Cliente (
CPF_Cliente varchar (25),
Telefone_Cliente varchar (20),
PRIMARY KEY (CPF_Cliente, Telefone_Cliente),
FOREIGN KEY (CPF_Cliente) REFERENCES Cliente (CPF_Cliente) ON DELETE CASCADE ON UPDATE CASCADE
); 

CREATE TABLE Telefone_Funcionario (
CPF_Funcionario Varchar (25),
Telefone_Funcionario VARCHAR (25),
PRIMARY KEY (CPF_Funcionario, Telefone_Funcionario),
foreign key (CPF_Funcionario) references funcionario (CPF_Funcionario) on delete cascade on update cascade
);

CREATE TABLE Dependente (
CPF_Funcionario VARCHAR (25),
Nome_Dependente VARCHAR (25),
Parentesco VARCHAR (25),
Data_de_Nascimento DATE,
Sexo VARCHAR (25),
PRIMARY KEY (CPF_Funcionario, Nome_Dependente), 
foreign key (CPF_Funcionario) references Funcionario (CPF_Funcionario) on delete cascade on update cascade
);

CREATE TABLE Compra (
CPF_Cliente VARCHAR (25),
Codigo_Compra VARCHAR (25),
Valor_Total VARCHAR (25),
Data DATE,
Cupom_de_Desconto VARCHAR (25),
PRIMARY KEY (Codigo_Compra),
foreign key (CPF_Cliente) references Cliente (CPF_Cliente) on delete cascade on update cascade
);

CREATE TABLE Departamento (
CPF_Funcionario VARCHAR (25),
Num_Departamento int,
Tamanho_Estoque VARCHAR (25),
Seçao VARCHAR (25),
Nome_departamento Varchar (25),
PRIMARY KEY (Num_Departamento),

foreign key (CPF_Funcionario) references funcionario (CPF_Funcionario) on delete cascade on update cascade
);

Create table Compras_Produto (
Codigo_Compra VARCHAR (25),
Codigo_Produto VARCHAR (25),
PRIMARY KEY (Codigo_Compra , Codigo_Produto),
foreign key (Codigo_Compra) references compra (Codigo_Compra) on delete cascade on update cascade,
foreign key (Codigo_Produto) references produto (Codigo_Produto) on delete cascade on update cascade
);
Create Table Cliente_Funcionario (
 CPF_Cliente VARCHAR (25),
 CPF_Funcionario VARCHAR (25),
 PRIMARY KEY (CPF_Cliente, CPF_Funcionario),
 foreign key (CPF_Funcionario) references funcionario (CPF_Funcionario) on delete cascade on update cascade,
 foreign key (CPF_Cliente) references cliente (CPF_Cliente) on delete cascade on update cascade
 );
CREATE TABLE Produto_Departamento (
Codigo_Produto VARCHAR (25),
Num_Departamento int(25),
Quantidade int,
PRIMARY KEY (Codigo_Produto, Num_Departamento),
foreign key (Codigo_Produto) references produto (Codigo_Produto) on delete cascade on update cascade,
foreign key (Num_Departamento) references departamento (Num_Departamento) on delete cascade on update cascade
 );
 insert into Cliente (CPF_Cliente, Nome_Cliente, Numero, Rua, CEP) values ('123.123.123-12','Roberto Silva','30','Rua São Jorge','87654321');
insert into Cliente (CPF_Cliente, Nome_Cliente, Numero, Rua, CEP) values ('789.456.123-31','Isabelle Martins','31','Rua Billa','51496782');
insert into Cliente (CPF_Cliente, Nome_Cliente, Numero, Rua, CEP) values ('456.321.789-41','Isaac Xavier','741','Rua Porto Velho','16423784');
insert into Cliente (CPF_Cliente, Nome_Cliente, Numero, Rua, CEP) values ('741.852.963-74','João Mascena','33','Rua Bem-te-vi','32178946');
insert into Cliente (CPF_Cliente, Nome_Cliente, Numero, Rua, CEP) values ('987.978.789-78','Carlos Pereira','84','Rua São Jorge','41824182');

insert into Funcionario (CPF_Funcionario, Nome_Funcionario, Salario) values ('965.421.741-74','Juliano Andrade','1500');

insert into Funcionario (CPF_Funcionario, Nome_Funcionario, Salario) values ('482.284.284-24','Jessica Silva','1500');
insert into Funcionario (CPF_Funcionario, Nome_Funcionario, Salario) values ('499.475.165-14','Thomas Nascimento','2000');

insert into Funcionario (CPF_Funcionario, Nome_Funcionario, Salario) values ('789.123.654-77','Henrique CasaGrande','4000');

insert into Funcionario (CPF_Funcionario, Nome_Funcionario, Salario) values ('456.454.747-71','Alanzoka','1200');

insert into Dependente (CPF_Funcionario, Nome_Dependente, Parentesco, Data_de_Nascimento, Sexo) values ('965.421.741-74','Sandro Neves','Tio','07/12/1984','Masculino');
insert into Dependente (CPF_Funcionario, Nome_Dependente, Parentesco, Data_de_Nascimento, Sexo) values ('482.284.284-24','Alice Lispector','Prima','01/09/1999','Feminino');
insert into Dependente (CPF_Funcionario, Nome_Dependente, Parentesco, Data_de_Nascimento, Sexo) values ('499.475.165-14','Marcelo Alpes','avô','22/11/1967','Masculino');
insert into Dependente (CPF_Funcionario, Nome_Dependente, Parentesco, Data_de_Nascimento, Sexo) values ('789.123.654-77','Regina Casé','Mãe','07/01/1977','Feminino');
insert into Dependente (CPF_Funcionario, Nome_Dependente, Parentesco, Data_de_Nascimento, Sexo) values ('456.454.747-71','Flavio Machado','Filho','06/05/2010','Masculino');
insert into Produto values ('1234567891','300','30','jogo');
insert into Produto values ('9876543211','150','30','jogo');
insert into Produto values ('1472583691','600','60','Action Figure');
insert into Produto values ('9123414149','300','60','Action Figure');
insert into Produto values ('9888888888','3000','90','console');
insert into Compra values ('123.123.123-12','2134567894','600','01/05/2021','10');
insert into Compra values ('789.456.123-31','9876541111','2000','24/05/2021','5');
insert into Compra values ('456.321.789-41','9495195449','300','02/04/2021','2');
insert into Compra values ('741.852.963-74','6545645112','500','11/08/2021','6');
insert into Compra values ('987.978.789-78','1235417414','150','06/06/2021','10');
insert into Departamento values ('965.421.741-74','1','150','Jogos','Departamento Jogos');
insert into Departamento values ('482.284.284-24','2','100','Jogos','Departamento Jogos2');
insert into Departamento values ('499.475.165-14','3','200','Action Figure','Departamento Action Figure1');
insert into Departamento values ('789.123.654-77','4','150','Action Figure','Departamento Action Figures2');
insert into Departamento values ('456.454.747-71','5','100','consoles','Departamento consoles');
Insert into Telefone_Funcionario values ('965.421.741-74','11989656171');
Insert into Telefone_Funcionario values ('482.284.284-24','11915460013');
Insert into Telefone_Funcionario values ('499.475.165-14','11984123414');
Insert into Telefone_Funcionario values ('789.123.654-77','11989679108');
Insert into Telefone_Funcionario values ('456.454.747-71','11959545111');

Insert into Telefone_Cliente values ('123.123.123-12','11934012289');
Insert into Telefone_Cliente values ('789.456.123-31','11956521243');
Insert into Telefone_Cliente values ('456.321.789-41','11999888777');
Insert into Telefone_Cliente values ('741.852.963-74','11934934942');
Insert into Telefone_Cliente values ('987.978.789-78','11934123456');

Insert into Compras_Produto values ('2134567894','1234567891');
Insert into Compras_Produto values ('9876541111','9876543211');
Insert into Compras_Produto values ('9495195449','1472583691');
Insert into Compras_Produto values ('6545645112','9123414149');
Insert into Compras_Produto values ('1235417414','9888888888');
Insert into Cliente_Funcionario values ('123.123.123-12','965.421.741-74');
Insert into Cliente_Funcionario values ('789.456.123-31','482.284.284-24');
Insert into Cliente_Funcionario values ('456.321.789-41','499.475.165-14');
Insert into Cliente_Funcionario values ('741.852.963-74','789.123.654-77');
Insert into Cliente_Funcionario values ('987.978.789-78','456.454.747-71');

insert into Produto_Departamento values ('1234567891','1','12');
insert into Produto_Departamento values ('9876543211','2','78');
insert into Produto_Departamento values ('1472583691','3','100');
insert into Produto_Departamento values ('9123414149','4','50');
insert into Produto_Departamento values ('9888888888','5','60');
update Funcionario set salario = '100000' where CPF_Funcionario = '789.123.654-77';
DELETE FROM Cliente WHERE CPF_Cliente = '123.123.123-12';
alter table Funcionario add RG VARCHAR (25);
ALTER TABLE Dependente DROP COLUMN Sexo;
RENAME TABLE funcionario TO empregado;
select * from empregado where salario = '1500' order by Nome_Funcionario ASC;
SELECT Nome_Funcionario FROM empregado WHERE salario < 8000;
Select * from empregado where Nome_Funcionario like ('T_%A');
