namespace :dev do
  desc "Apaga e Popula o BD"
  task setup: :environment do
    puts %x(rails db:drop db:create db:migrate db:seed)
  end

end
