# frozen_string_literal: true

class InvoicesController < ApplicationController
  def new; end

  def create
    # raise
    session[:invoice] = invoice_params
    
    # the magic number is just a placeholder for later
    redirect_to invoice_path(1)
  end

  def show
    @invoice = session[:invoice]
  end

  private

  def invoice_params
    params.permit(:company_name, :company_cnpj, :address, :address2, :company_city,
                            :company_state, :postal_code, :nire, :invoice_number, :invoice_date,
                            :buyer_name, :buyer_address, :buyer_address2, :buyer_city, :buyer_state,
                            :buyer_postal_code, :buyer_registry, :buyer_address, service_description: [], service_value: [])
  end
end
