require 'pry'
require './lib/book'
require './lib/author'

RSpec.describe Author do
  it 'exists' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte).to be_a(Author)
  end

  it 'has attributes' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte.first_name).to eq("Charlotte")
    expect(charlotte_bronte.last_name).to eq("Bronte")
  end

  it 'can give full name' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it 'starts with no books' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte.books).to eq([])
  end

  it 'author can write book' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    expect(jane_eyre.class).to eq(Book)
    expect(charlotte_bronte.books).to eq([jane_eyre])
  end
end
