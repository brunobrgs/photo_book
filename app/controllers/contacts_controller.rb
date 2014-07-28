class ContactsController < ApplicationController
  def new
    @contact_form = ContactForm.new
  end

  def create
    @contact_form = ContactForm.new(params[:contact_form])
    if @contact_form.deliver
      flash[:notice] = 'Mensagem enviada com sucesso.'
      redirect_to action: :new
    else
      flash[:alert] = 'Desculpe. Houve um problema ao enviar sua mensagem!'
      render :new
    end
  end
end
