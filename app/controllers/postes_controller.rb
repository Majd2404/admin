class PostesController < InheritedResources::Base

  private

    def poste_params
      params.require(:poste).permit(:title, :description)
    end

end
