require 'rails_helper'

module Urls
  RSpec.describe Form do
    subject { described_class.new }

    describe 'validation' do
      describe '#original' do
        it 'can not be blank' do
          subject.original = ''

          expect(subject).to be_invalid
          expect(subject.errors[:original]).to be_present
        end

        it 'must be a valid email' do
          subject.original = 'not valid'

          expect(subject).to be_invalid
          expect(subject.errors[:original]).to be_present
        end
      end
    end
  end
end
