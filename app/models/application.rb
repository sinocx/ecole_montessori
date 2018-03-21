class Application < ApplicationRecord
  attr_accessor :form_step
  cattr_accessor :form_steps do
    %w(child mother father more)
  end
  def required_for_step?(step)
    # All fields are required if no form step is present
    return true if form_step.nil?

    # All fields from previous steps are required if the
    # step parameter appears before or we are on the current step
    return true if self.form_steps.index(step.to_s) <= self.form_steps.index(form_step)
  end

  validates :child_first_name, presence: true, if: -> { required_for_step?(:child)}
  validates :child_last_name, presence: true, if: -> { required_for_step?(:child)}
  validates :child_gender, presence: true, inclusion: %w(Masculin Feminin), if: -> { required_for_step?(:child)}
  validates :child_birth_date, presence: true, if: -> { required_for_step?(:child)}
  validates :child_nationality, presence: true, if: -> { required_for_step?(:child)}
  validates :child_first_lang, presence: true, if: -> { required_for_step?(:child)}
  validates :child_snd_lang, presence: true, if: -> { required_for_step?(:child)}
  validates :montessori_before, presence: true, if: -> { required_for_step?(:child)}
  validates :workshop, presence: true, if: -> { required_for_step?(:child)}
  validates :comment, presence: true, if: -> { required_for_step?(:child)}
  validates :mother_first_name, presence: true, if: -> { required_for_step?(:mother)}
  validates :mother_last_name, presence: true, if: -> { required_for_step?(:mother)}
  validates :mother_lang, presence: true, if: -> { required_for_step?(:mother)}
  validates :mother_situation, presence: true, if: -> { required_for_step?(:mother)}
  validates :mother_job, presence: true, if: -> { required_for_step?(:mother)}
  validates :mother_fiscal, presence: true, if: -> { required_for_step?(:mother)}
  validates :mother_address, presence: true, if: -> { required_for_step?(:mother)}
  validates :mother_zipcode, presence: true, if: -> { required_for_step?(:mother)}
  validates :mother_city, presence: true, if: -> { required_for_step?(:mother)}
  validates :mother_email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, presence: true, uniqueness: true, if: -> { required_for_step?(:mother)}
  validates :mother_phone, presence: true, if: -> { required_for_step?(:mother)}
  validates :mother_mobile, format: { with: /0[6-7](\d{2}){4}/ }, presence: { message: 'Mobile uniquement' }, uniqueness: true, if: -> { required_for_step?(:mother)}
  validates :father_first_name, presence: true, if: -> { required_for_step?(:father)}
  validates :father_last_name, presence: true, if: -> { required_for_step?(:father)}
  validates :father_lang, presence: true, if: -> { required_for_step?(:father)}
  validates :father_situation, presence: true, if: -> { required_for_step?(:father)}
  validates :father_job, presence: true, if: -> { required_for_step?(:father)}
  validates :father_fiscal, presence: true, if: -> { required_for_step?(:father)}
  validates :father_address, presence: true, if: -> { required_for_step?(:father)}
  validates :father_zipcode, presence: true, if: -> { required_for_step?(:father)}
  validates :father_city, presence: true, if: -> { required_for_step?(:father)}
  validates :father_email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, presence: true, uniqueness: true, if: -> { required_for_step?(:father)}
  validates :father_phone, presence: true, if: -> { required_for_step?(:father)}
  validates :father_mobile, format: { with: /0[6-7](\d{2}){4}/ }, presence: { message: 'Mobile uniquement' }, uniqueness: true, if: -> { required_for_step?(:father)}
  validates :knew_the_school, presence: true, if: -> { required_for_step?(:more)}
  validates :start_date, presence: true, if: -> { required_for_step?(:more)}
  validates :child_atmosphere, presence: true, if: -> { required_for_step?(:more)}
end
