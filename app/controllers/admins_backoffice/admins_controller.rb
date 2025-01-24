class AdminsBackoffice::AdminsController < AdminsBackofficeController
  def index
    @admins = Admin.all # variavel de inserção
  end

  def edit
    
  end
end
