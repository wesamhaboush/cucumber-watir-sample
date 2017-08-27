class HomePage
  include PageObject, Common

  page_url 'https://www.google.com/'

  button :search, :name => "btnK"
  text_field :search_term, :name => "q"
  link :love_wikipedia, :text => "Love - Wikipedia"
end