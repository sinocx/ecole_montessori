class Application::StepsController < ApplicationController
  include Wicked::Wizard
  steps *Application.form_steps
  def show
    @application = Application.find(params[:application_id])
    render_wizard
  end

  def update
    @application = Application.find(params[:application_id])
    @application.update(application_params(step))
    render_wizard @application
  end

  private

  def application_params(step)
    permitted_attributes = case step
                           when "child"
                             [:child_first_name,
                              :child_last_name,
                              :child_gender,
                              :child_birth_date,
                              :child_nationality,
                              :child_first_lang,
                              :child_snd_lang,
                              :montessori_before,
                              :workshop,
                              :comment]
                           when "mother"
                             [:mother_first_name,
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
                              :mother_mobile]
                           when "father"
                             [:father_first_name,
                              :father_last_name,
                              :father_lang,
                              :father_situation,
                              :father_job,
                              :father_fiscal,
                              :father_address,
                              :father_city,
                              :father_zipcode,
                              :father_email,
                              :father_phone,
                              :father_mobile]
                            when "more"
                              [:knew_the_school,
                               :start_date,
                               :child_atmosphere]
                           end

    params.require(:application).permit(permitted_attributes).merge(form_step: step)
  end
end

