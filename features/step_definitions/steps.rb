Dado('que estou na página principal') do  # Ele busca por alguma linha no(s) documento(s) .feature que possua o conteúdo dentro dos ''
    visit "/"                      # Chama a page login, direciona para a URL selecionada e carrega os elementos da página
end

Quando('eu seleciono um produto') do  # Aqui está sendo passado dois parametros string que existe(m) no(s) documento(s) login.feature
    click_on "#span-fourth-level-menu-1-1-3-4"   # Chama a page login e executar a função login passsando os parâmetros email e password
    click_on "#CC-product-grid-image-LVL3337088-00"
    click_on "#cc-prodDetails-addToCart"

end
                                                                           
Então('devo ter o produto adicionado ao carrinho') do                 
    page.should have_content('#name-ci16991057691861')  # Valida se a mensagem do alert contém com a mensagem esperada
end