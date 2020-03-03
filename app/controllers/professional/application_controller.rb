class Professional::ApplicationController < ApplicationController
before_action :authenticate_photographer!
end
