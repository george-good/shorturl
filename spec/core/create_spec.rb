require 'rails_helper'
module Urls
  RSpec.describe Create do
    subject { described_class.new(form) }

    context 'when the form is valid' do
      let(:form) do
        Form.new(
          valid?: true,
          original: 'https://google.com'
        )
      end

      it 'creates a new url' do
        expect { subject.call }.to change(Url, :count).by(1)
      end
    end
  end
end
