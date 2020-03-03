class Director::ApplicationController < ApplicationController
before_action :authenticate_school!
end
