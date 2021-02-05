# ./spec/programmers_quotes_spec.rb
require 'programmers_quotes'

describe 'Quotes' do
  let(:arr_url) { ["I'm not a great programmer; I'm just a good programmer with great habits. ― Kent Beck"] }

  describe '#random_quotes' do
    it 'select an element from the array and return it to the user' do
      expect(arr_url.sample).to eq(arr_url[0])
    end
    it 'It does not return element in a sequential order' do
      arr = [18, 22, 50, 6]
      expect(arr.sample(2)).not_to eq(arr[18, 22])
    end
    it 'return nil when there is no element in the array' do
      arr = []
      expect(arr.sample).to eq(nil)
    end
    it 'does not return empty array when there is no element in the array' do
      arr = []
      expect(arr.sample).not_to eq([])
    end
  end
end
