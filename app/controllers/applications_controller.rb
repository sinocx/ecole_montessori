class ApplicationsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @application = Application.new
  end

  def create
    @application = Application.new
    @application.save(validate: false)
    redirect_to application_step_path(@application, Application.form_steps.first)
  end
  private
  def params_application
    params.require(:application).permit(:child_first_name,
      :child_last_name,
      :child_gender,
      :child_birth_date,
      :child_nationality,
      :child_first_lang,
      :child_snd_lang,
      :montessori_before,
      :workshop,
      :comment,
      :mother_first_name,
      :mother_last_name ,
      :mother_lang,
      :mother_situation,
      :mother_job,
      :mother_fiscal,
      :mother_address,
      :mother_city,
      :mother_zipcode,
      :mother_email,
      :mother_phone,
      :mother_mobile,
      :father_first_name,
      :father_last_name,
      :father_lang,
      :father_situation,
      :father_job,
      :father_fiscal,
      :father_address,
      :father_zipcode,
      :father_email,
      :father_phone,
      :father_mobile,
      :knew_the_school,
      :start_date,
      :child_atmosphere
    )
  end
end
