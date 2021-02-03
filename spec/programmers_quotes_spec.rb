require 'programmers_quotes'

describe 'Quotes' do
let(:arr_url) { ["I'm not a great programmer; I'm just a good programmer with great habits. ― Kent Beck"] }

describe '#random_quotes' do
    it'select an element from the array and return it to the user' do
        expect(arr_url.sample).to eq(arr_url[0])
    end
    it 'return nil when there is no element in the array' do
        arr = []
        expect(arr.sample).to eq(nil)
    end
end
end