# frozen_string_literal: true

require 'programmers_sarcasm'

describe 'Sarcasm' do
  let(:arr_url) do
    ['https://scontent.fesb4-2.fna.fbcdn.net/v/t1.0-9/96066463_237835897651629_218018501359566848_n.jpg?_nc_cat=102&ccb=2&_nc_sid=730e14&_nc_ohc=bYiboZ9tMDkAX9TYMAW&_nc_ht=scontent.fesb4-2.fna&oh=644efcb5e8734962296410076810a1ca&oe=603F0903']
  end

  describe '#random_sarcasm' do
    it 'select an element from the array and return it to the user' do
      expect(arr_url.sample).to eq(arr_url[0])
    end
    it 'return nil when there is no element in the array' do
      arr = []
      expect(arr.sample).to eq(nil)
    end
  end
end
