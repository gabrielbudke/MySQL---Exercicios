-- 1. Selecione o estado e cidade.
SELECT estado 'Estado', cidade 'Cidade' FROM  cidades;

-- 2. Selecione as cidades que começam com a letra A.
SELECT cidade 'Cidades' FROM cidades WHERE cidade LIKE 'A%';

-- 3. Selecione as cidades que contenham no ‘apar’ em qualquer parte do nome.
SELECT cidade FROM cidades WHERE cidade LIKE '%apar%';

-- 4. Selecione as cidades que começam com a letra W.
SELECT cidade 'Cidades' FROM cidades WHERE cidade LIKE 'W%';

-- 5. Selecione o estado e a cidade que a cidade termina com ‘tuba’ ordenando pelo estado em ordem
-- decrescente.
SELECT cidade, estado FROM cidades WHERE cidade LIKE '%tuba' ORDER BY estado DESC; 

-- 6. Selecione a cidade que o nome da cidade contenha mais que 15 caracteres, ordenando 
-- pelo quantidade de caracteres.
SELECT cidade 'Cidade maior Nome' FROM cidades ORDER BY LENGTH(cidade);

-- 7. Contabilize a quantidade de cidades do estado de SC.
SELECT COUNT(cidade) 'Quantidade de Cidades' FROM cidades WHERE estado LIKE '%SC%';

-- 8. Contabilize a quantidade de cidades do estado de SP.
SELECT COUNT(cidade) 'Quantidade de Cidades' FROM cidades WHERE estado LIKE '%SP%';

-- 9. Selecione o nome da cidade com a quantidade de caracteres, quando o nome da cidade conter 10
-- caracteres.
SELECT cidade 'Cidade', LENGTH(cidade) 'Qtd de Caracteres' FROM cidades WHERE LENGTH(cidade) = 10;
