Given(/^que ingreso una letra$/) do
  visit '/'
end

When(/^presiono boton Enviar$/) do
  visit '/', :post, "letra=a"
end

Then(/^true$/) do
  last_response.body.should =~ /true/m
end

