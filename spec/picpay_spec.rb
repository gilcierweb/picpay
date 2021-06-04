RSpec.describe Picpay do
  let(:picpay_token) { ENV['PICPAY_TOKEN'] }
  let(:seller_token) { ENV['SELLER_TOKEN'] }

  it "has a version number" do
    expect(Picpay::VERSION).to be_truthy
  end
  
  it "setup picpay" do
    api_url = 'https://appws.picpay.com/ecommerce/public/payments' # optional
    picpay = Picpay::Picpay.new(picpay_token, seller_token)
    
    expect(picpay).to be_truthy
  end
  
  it "have attributes picpay_token, seller_token and api_url in picpay" do
    api_url = 'https://appws.picpay.com/ecommerce/public/payments' # optional
    picpay = Picpay::Picpay.new(picpay_token, seller_token)
    
    expect(picpay).to have_attributes(picpay_token: picpay_token, seller_token: seller_token, api_url: api_url)
  end

end
