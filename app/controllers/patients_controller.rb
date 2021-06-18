# frozen_string_literal: true

# Patients Controller Class
class PatientsController < ApplicationController
  def index
    @patients = current_user.patients.order('created_at DESC')
  end

  def new
    @patient = current_user.patients.new
  end

  def create
    @patient = current_user.patients.new(patient_params)
    if @patient.save
      redirect_to patients_path
    else
      render 'new'
    end
  end

  def edit
    @patient = find_params
  end

  def update
    @patient = find_params

    if @patient.update(patient_params)
      redirect_to patients_path
    else
      render 'edit'
    end
  end

  private

  def find_params
    current_user.patients.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:user_id, :name, :age, :address, :contact_number, :current_medications, :additional_info)
  end
end
