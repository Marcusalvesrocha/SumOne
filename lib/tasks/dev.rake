namespace :dev do
  desc "TODO"
  task setup: :environment do

  	puts "Executando o setup para desenvolvimento..."

    puts "APAGANDO BD...#{%x(rails db:drop)}"

    puts "CRIANDO BD...#{%x(rake db:create)}"
    puts %x(rake db:migrate)
    puts %x(rake db:seed)

    puts "Setup completado com sucesso!"

  end

end
