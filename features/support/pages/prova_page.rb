class ProvaPage
    include Capybara::DSL
    
    def go(pesquisa)
        visit "/"
       
        find('input[name=q]').set pesquisa
        sleep 1
        find('body > div.autocomplete-suggestions > div:nth-child(3)').click
        sleep 5
    end
    
    def prod_carrinho
        click_button 'Adicionar ao carrinho'
    end
   
    
end