require 'search_alphabets'

RSpec.describe SearchAlphabet do
  describe '.call' do
    subject { described_class.call(str) }
    let(:str) { 'a   **&  cZ' }

    it { is_expected.to eq '10100000000000000000000001' }

    context 'when string is !!a$%&RgTT' do
      let(:str) { '!!a$%&RgTT' }

      it { is_expected.to eq '10000010000000000101000000' }
    end

    context 'when string is &%&%/$%$%$%$%GYtf67fg34678hgfdyd' do
      let(:str) { '&%&%/$%$%$%$%GYtf67fg34678hgfdyd' }

      it { is_expected.to eq '00010111000000000001000010' }
    end

    context 'when string is empty string' do
      let(:str) { '' }

      it { is_expected.to eq '00000000000000000000000000' }
    end

    context 'when string is compeleted' do
      let(:str) { 'abcdefghijklmnopqrstuvwxyz' }

      it { is_expected.to eq '11111111111111111111111111' }
    end

    context 'when string is aaaaaaaaaaa' do
      let(:str) { 'aaaaaaaaaaa' }

      it { is_expected.to eq '10000000000000000000000000' }
    end

    # Please add more test cases as possible
  end
end
