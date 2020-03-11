require 'decimal_to_binary'

RSpec.describe DecimalToBianry do
  describe '.call' do
    subject { described_class.call(num) }
    let(:num) { 100 }

    it { is_expected.to eq '1100100' }

    # Please add more test cases as possible
  end
end
