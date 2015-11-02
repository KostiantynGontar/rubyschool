require 'hash_demo'

RSpec.describe Book do
  before do
    @book = Book.new
    @book.add_person(name: 'Mike', age: 22)
  end

  #it 'check person exists?' do
  #  expect(@book.add_person(name: 'Mike', age: 25)).to eq('Person already exists')
  #end

  it 'shows last person' do
    expect(@book.last_person).to eq('Mike')
  end
end
