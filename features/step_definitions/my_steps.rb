Given(/^que ingreso una letra$/) do
  visit '/'
end

When(/^presiono boton Enviar$/) do
  visit '/', :post, "letra=a"
end

Then(/^OK$/) do
  last_response.body.should =~ /OK/m
end

