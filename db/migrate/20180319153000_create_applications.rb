class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.string :child_first_name
      t.string :child_last_name
      t.string :child_gender
      t.date :child_birth_date
      t.string :child_nationality
      t.string :child_first_lang
      t.string :child_snd_lang
      t.string :montessori_before
      t.string :nursery
      t.string :workshop
      t.string :comment
      t.string :mother_first_name
      t.string :mother_last_name
      t.string :mother_lang
      t.string :mother_situation
      t.string :mother_job
      t.string :mother_fiscal
      t.string :mother_address
      t.string :mother_zipcode
      t.string :mother_city
      t.string :mother_email
      t.string :mother_phone
      t.string :mother_mobile
      t.string :father_first_name
      t.string :father_last_name
      t.string :father_lang
      t.string :father_situation
      t.string :father_job
      t.string :father_fiscal
      t.string :father_address
      t.string :father_zipcode
      t.string :father_city
      t.string :father_email
      t.string :father_phone
      t.string :father_mobile
      t.string :knew_the_school
      t.date :start_date
      t.string :child_atmosphere

      t.timestamps
    end
  end
end
