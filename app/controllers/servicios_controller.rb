class ServiciosController < InheritedResources::Base
  def create
    create!(notice: "Se ha creado el servicio"){ servicios_path }
  end

  def update
    update!(notice: "El servicio se ha editado"){ servicios_path }
  end

  def destroy
    destroy!(notice: "El servicio se ha eliminado"){ servicios_path }
  end
end
