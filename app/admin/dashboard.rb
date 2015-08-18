ActiveAdmin.register_page "Dashboard" do
    menu priority: 1, label: proc { I18n.t('active_admin.dashboard') }
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Posts" do
          table_for Post.order("id desc").limit(15) do
            column :id
            column "Post Title" , :title do |post|
              link_to post.title , [:admin,post]
            end

            column :category , :sortable => :category
            column :created_at
          end
          strong (link_to "Show All Posts" , :posts )
        end
      end
    end
  end


  
end