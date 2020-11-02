ActiveAdmin.register Horse do
  permit_params :name, :age, :top_speed, :breed_id, :number_of_legs
end
