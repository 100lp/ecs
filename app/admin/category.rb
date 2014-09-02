ActiveAdmin.register Category do
  permit_params :title, :name, :place

  menu :label => "Категории"

  show do
    attributes_table do
      row "Название", :title do |article|
        raw article.title
      end

      row "Место", :place do |article|
        raw article.place
      end
    end
  end

  form do |f|
    f.inputs "details" do
      f.input :title, :label => "Заголовок"
      f.input :name
      f.input :place
    end
    f.actions
  end
  index do
    column :place
    column :title
    column :name

    actions
  end
  
end
