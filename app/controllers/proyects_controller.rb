class ProyectsController < ApplicationController
  def index
    
    if params[:status].present?
      @proyects = Proyect.where('status = ?', params[:status])
      else
      @proyects = Proyect.all
      
    end

  end
  def create

    if params[:status] == 'propuesta'
      status = 0
    elsif params[:status] == 'en_progreso'
      status = 1
    else
      status = 2
    end
    

    @proyect = Proyect.create(
      name: params[:name],
      description: params[:description],
      date_begin: params[:date_begin],
      date_end: params[:date_end],
      status: status
    )
  end
end
