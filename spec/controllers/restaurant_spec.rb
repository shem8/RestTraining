describe RestaurantsController do
  # it "redirects to the home page upon save" do
  #   post :create, restaurant: FactoryGirl.attributes_for(:restaurant)
  #   response.should redirect_to root_url
  # end

  describe "GET #index" do
    it "populates an array of restaurants" do
      rest = FactoryGirl.create(:restaurant)
      get :index
      assigns(:rests).should eq([rest])
    end

    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET #show" do
    it "assigns the requested restaurant to @restaurant" do
      rest = FactoryGirl.create(:restaurant)
      get :show, id: rest
      assigns(:rest).should eq(rest)
    end

    it "renders the :show template" do
      get :show, id: FactoryGirl.create(:restaurant)
      response.should render_template :show
    end
  end

  it "deletes restaurant" do
    rest = FactoryGirl.create(:restaurant)
    expect{
      delete :destroy, id: rest
    }.to change(Restaurant,:count).by(-1)
  end

  it "redirects to restaurant#index" do
    rest = FactoryGirl.create(:restaurant)
    delete :destroy, id: rest
    response.should redirect_to restaurants_url
  end
end