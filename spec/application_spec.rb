require File.join(File.dirname(__FILE__), 'spec_helper')

describe Skellington do
  it 'should load the index page successfully' do
    get '/'
    expect(last_response).to be_ok
  end
end
