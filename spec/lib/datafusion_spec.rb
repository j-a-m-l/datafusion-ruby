RSpec.describe DataFusion do
  it 'has a version number' do
    expect(DataFusion::VERSION).not_to be nil
  end

  it 'run Rust code' do
    expect(DataFusion.reverse 'something').to eq 'gnihtemos'
  end
end
