class Admin::UsersController < AdminController
    before_action :set_admin, only: [:edit, :update, :destroy]

    def index
        @users = User.order(id: :desc)
    end
end
