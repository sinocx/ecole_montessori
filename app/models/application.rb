class Application < ApplicationRecord
  validates :child_first_name, presence: true
  validates :child_last_name, presence: true
  validates :child_gender, presence: true, inclusion: %w(Masculin Feminin)
  validates :child_birth_date, presence: true
  validates :child_nationality, presence: true
  validates :child_first_lang, presence: true
  validates :child_snd_lang, presence: true
  validates :montessori_before, presence: true
  validates :workshop, presence: true
  validates :comment, presence: true
  validates :mother_first_name, presence: true
  validates :mother_last_name, presence: true
  validates :mother_lang, presence: true
  validates :mother_situation, presence: true
  validates :mother_job, presence: true
  validates :mother_fiscal, presence: true
  validates :mother_address, presence: true
  validates :mother_zipcode, presence: true
  validates :mother_city, presence: true
  validates :mother_email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, presence: true, uniqueness: true
  validates :mother_phone, presence: true
  validates :mother_mobile, format: { with: /0[6-7](\d{2}){4}/ }, presence: { message: 'Mobile uniquement' }, uniqueness: true
  validates :father_first_name, presence: true
  validates :father_last_name, presence: true
  validates :father_lang, presence: true
  validates :father_situation, presence: true
  validates :father_job, presence: true
  validates :father_fiscal, presence: true
  validates :father_address, presence: true
  validates :father_zipcode, presence: true
  validates :father_city, presence: true
  validates :father_email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, presence: true, uniqueness: true
  validates :father_phone, presence: true
  validates :father_mobile, format: { with: /0[6-7](\d{2}){4}/ }, presence: { message: 'Mobile uniquement' }, uniqueness: true
end
