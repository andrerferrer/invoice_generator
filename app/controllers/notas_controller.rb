class NotasController < ApplicationController

  def create
  end

  def show
    # @nota = something that will come from create action

    respond_to do |format|
      format.html
      format.pdf do
          render pdf: "Nota Gerada Automaticamente",
          page_size: 'A4',
          template: "notas/show.html.erb",
          layout: "pdf.html.erb",
          orientation: "Portrait",
          lowquality: true,
          zoom: 1,
          dpi: 75
      end
    end
  end
end
