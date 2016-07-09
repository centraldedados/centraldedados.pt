# Perguntas & Respostas

### Em que formato estão disponíveis os dados?

Os datasets que disponibilizamos são publicados em CSV e JSON, seguindo a norma [Tabular Data Package](http://frictionlessdata.io/guides/tabular-data-package/). A versão JSON é automaticamente gerada a partir do CSV, salvo menção em contrário na descrição da data package.

Os ficheiros nestes formatos podem ser abertos em qualquer editor de texto, mas o CSV será mais facilmente legível num editor de folhas de cálculo como o LibreOffice Calc, Google Spreadsheets ou Microsoft Excel. O formato JSON é mais indicado para bibliotecas de visualização (como o D3.js).

### O que são data packages?

O formato [data package](http://frictionlessdata.io/data-packages) foi desenvolvido pela Open Knowledge e representa  uma excelente solução para o desafio de publicação de datasets em bruto. O site [Frictionless Data](http://frictionlessdata.io/) explica extensivamente o porquê e os pormenores do formato data package.

### Qual é o software que sustenta este site?

100% software livre e aberto!

O  motor deste site chama-se [Datacentral](https://github.com/centraldedados/datacentral) e foi desenvolvido  especificamente para construir a Central de Dados. É um conjunto de scripts Python que operam sobre data packages alojadas em repositórios  Git para construir um site HTML estático, que pode ser colocado em qualquer webserver e atualizado com cron jobs simples. O código-fonte deste site é software livre e está disponível segundo os termos copyleft da GNU General Public License.

Todo o código Python, HTML e CSS foi escrito usando os editores Gedit e Vim em portáteis a correr [Debian GNU/Linux](http://debian.org). O servidor que aloja o site corre o webserver [Apache](http://apache.org). O logo e elementos gráficos foram desenhados com papel, [Gimp](http://gimp.org) e [Inkscape](http://inkscape.org).

### Mas já existe o dados.gov.pt e o Pordata, porquê mais um site?

O [dados.gov.pt](http://dados.gov.pt) é um recurso fantástico ao qual recorremos frequentemente. A Central de Dados não procura ser uma alternativa, mas sim um complemento ao dados.gov.pt, contribuindo para um ecossistema de informação pública disponível livremente em formatos abertos.

O [Pordata](http://pordata.pt) é um recurso interessante mas, infelizmente, não é aberto.
