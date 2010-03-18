class Admin::AssetsController < Admin::ApplicationController

  make_resourceful do
    actions :all
  end

end
