# frozen_string_literal: true

# Appointments Controller Class
class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @appointments = Appointment.all
  end

  def edit
    @appointment = find_params
  end

  def update_patient
    current_user.patients.first.update(
      appointment_date: find_params.appointment_date,
      appointment_time: find_params.appointment_time
    )
    find_params.destroy
    redirect_to patients_path
  end

  private

  def find_params
    Appointment.find(params[:id])
  end
end
