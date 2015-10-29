class AddTranslationToCourses < ActiveRecord::Migration
  def self.up
    Course.create_translation_table!({
      :title       => :string,
      :description => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Course.drop_translation_table! :migrate_data => true
  end
end
