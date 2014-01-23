class ContactosController < InheritedResources::Base

  def create
    create! do |success, failure|
      success.html do
        ContactoMailer.mensaje_recibido(@contacto).deliver

        flash[:notice] = "Tu mensaje fue enviado con exito."
        redirect_to new_contacto_path
      end
      failure.html do
        flash[:notice] = "No ha sido enviado el mensaje."
        render :accion => "new"
      end
    end
  end

end
