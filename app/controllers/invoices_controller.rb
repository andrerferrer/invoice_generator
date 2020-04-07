# frozen_string_literal: true

class InvoicesController < ApplicationController
  def new; end

  def create
    session[:invoice] = params.permit(:company_name, :company_cnpj, :address, :address2, :company_city,
                            :company_state, :postal_code, :nire, :invoice_number, :invoice_date,
                            :buyer_name, :buyer_registry, :buyer_address, :service_description, :service_value)
    redirect_to controller: 'invoices', action: 'index'
  end

  def index
    @invoice = session[:invoice]
  end
end
