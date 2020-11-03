ActiveAdmin.register Horse do
  permit_params :name, :age, :top_speed, :breed_id, :number_of_legs, :image

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
