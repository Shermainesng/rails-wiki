require "faker"

puts "creating fake articles..."

10.times do
  article = Article.new(
    title: Faker::Hipster.sentence(word_count: 7),
    content: Faker::Hipster.paragraph
  )
  article.save!
end
puts 'Finished!'
