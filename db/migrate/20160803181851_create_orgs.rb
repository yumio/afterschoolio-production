class CreateOrgs < ActiveRecord::Migration[5.0]
  def change
    create_table :orgs do |t|
      t.string :org_name
      t.string :org_street
      t.string :org_city
      t.string :org_state
      t.string :org_zip
      t.string :org_phone
      t.string :org_url
      t.string :org_email
      t.string :org_description
      t.string :org_imageurl
      t.string :org_category
      t.string :org_subcategory
      t.string :org_tag
      t.integer :org_kidgrade_start
      t.integer :org_kidgrade_end
      t.boolean :org_featured

      t.timestamps
    end
  end
end
