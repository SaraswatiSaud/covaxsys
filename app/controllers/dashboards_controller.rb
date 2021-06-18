# frozen_string_literal: true

# Dashboards Controller
class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index; end
end
