class Permission
  def initialize(current_user)
    allow :index_page,   [:index]
    allow :static_pages, [:about, :contact]
    allow :sessions,     [:new, :create, :destroy]
    allow :users,        [:edit, :update]


    def allow_all
      @allow_all = true
    end
    def allow?(controller, action)
      @allow_all || @allowed_actions[[controller.to_s, action.to_s]]
    end


    def allow(controllers, actions)
      @allowed_actions ||= {}
      Array(controllers).each do |controller|
        Array(actions).each do |action|
          @allowed_actions[[controller.to_s, action.to_s]] = true
        end
      end
    end
  end
  end