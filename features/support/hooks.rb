#Cucumber provides a number of hooks which allow us to run blocks at various points in the Cucumber test cycle

Before do

end


After do |scenario|
  nome_cenario = scenario.name.tr(' ', '_').downcase! #downcase é para ficar em caixa baixa
  nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/,'') #expressão regular do rby, substitui todos esses caracteres por espaço em branco para não dar erro na hora de gerar o nome do screenshot
  screenshot = "features/logs/shots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Clique aqui para ver a evidência') #para anexar o screenshot ao relatório
end
