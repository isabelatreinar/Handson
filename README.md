
#EXTENSÕES PARA O VSCODE:
- Ruby (Peng Lv)
- Cucumber (Steve Purves)
- vs code icons (Roberto Huertas)
- one dark pro (Atom's ionic one dark pro)
* Clicar em reload
* CTRL + shift + P, digitar 'file icon', e selecionar a opção 'File icon theme > VSCode icons'
* CTRL + shift + P, digitar 'Color Theme', selecionar a opção 'One Dark Pro'
________________________________________________________________________________________________________________________________________

#CONFIGURAR CHROME DRIVER:
1º Baixar o driver do Chrome: https://sites.google.com/a/chromium.org/chromedriver/downloads
2º Crie uma pasta ‘webdriver’ na raiz do C:/)
3º Editar a variável de ambiente 'Path' colocando o caminho onde está o chrome driver: C:\webdriver (o chromedriver está dentro dessa pasta)
4º Executar o seguinte comando no CMD: 'chromedriver' para startar 
5º No arquivo de configuração do projeto (env.rb ou spec_helper.rb) alterar para: 
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end
________________________________________________________________________________________________________________________________________

#INSTALANDO O BUNDLER (GERENCIADOR DE DEPENDÊNCIAS)
Instalando o Blunder
1º No Console do Cmder, digite o comando:
gem install bundler

________________________________________________________________________________________________________________________________________

#CRIANDO UM PROJETO!
1º -> Criar uma pasta no CMDER (comando mkdir <nome_da_pasta>)

2º Criar dependências:
CASO TENHA PROXY BARRANDO EXECUTAR ESSE COMANDO ANTES DENTRO DA PASTA CRIADA:
- No CMDER digitar: set http_proxy=10.178.129.20:8080 
-  No CMDER digitar: set

- CMDER digitar dentro da pasta que criei 'gem install bundle', depois digitar 'bundler init'
- Abrir VSCODE com comando 'code .' no CMDER
- Abrir arquivo Gemfile editar tirando 's' de http:/, apagar todo resto e digitar:

gem 'rspec'
gem 'cucumber'
gem 'capybara'
gem 'selenium-webdriver'
gem 'site_prism' 

- No CMDER digitar 'bundler install'

3º Criar arquivo .rspec (Rspec é um framework de testes(unitário)), 
para criar digitar no CMDER 'rspec --init'
Obs.: O teste unitário fica dentro da pasta 'spec'.

4º Digitar no CMDER 'cucumber --init'

5º Será criar a pasta 'features' automaticamente

6º Criar uma pasta 'specs'

7º Criar um arquivo 'nomearquivo.features' dentro da pasta 'specs' e colar as especificações(feature) -  (podem ser criadas pastas para separar as funcionalidades) - (lembrando de inserir esse trecho no código: '#language:pt')

8º No CMDER digitar e executar o comando 'cucumber'. Serão criados os cenários.

9º Criar um arquivo ruby chamado 'nomearquivo_steps.rb' dentro da pasta 'step_definitions'

10º Copiar os cenários gerados no CMDER e colar neste arquivo .rb criado

11º Dentro da pasta 'support' criar um arquivo 'env.rb' (verificar se foi criado automaticamente, se não, criar!') Neste arquivo são especificadas as bibliotecas de apoio necessárias. O cucumber sempre procura esse arquivo, ele é o primeiro código a ser executado antes das especificações:

require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
#configurar capybara para usar com selenium
Capybara.configure do |config|
    config.default_driver = :selenium # essa configuração é para instanciar o browser com Firefox
    config.app_host = 'https://sitequalquer.com' #(endereço do site q vou testar)
end
#configuração de tempo de espera para achar elemento na tela
Capybara.default_max_wait_time = 5

12º Baixar Geckodriver para instanciar browser com Firefox (https://github.com/mozilla/geckodriver/releases). 
Baixar e colar o executável na pasta C:\Windows (só isso)

13º Atualizar firefox para última versão!

14º Ir no arquivo 'nomearquivo_steps.rb' e implementar os testes automatizados!
