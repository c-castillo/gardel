Given(/^que ingreso una letra$/) do
  visit '/'
end

When(/^presiono boton Enviar$/) do
  visit '/', :post, "letra=a"
end

Then(/^true$/) do
  last_response.body.should =~ /true/m
end

Then(/^mostrar letras coincidentes$/) do
  last_response.should have_xpath( "//tr[@id=\"pr\"]/td") do |td|
    td.should contain( '-' )
  end
end

