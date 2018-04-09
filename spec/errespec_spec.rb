RSpec.describe ErreSpec do
  ErreSpec.demo_mode!

  subject { %i[plof nil].sample }

  it "has a version number" do
    expect(Errespec::VERSION).not_to be nil
  end

  '365 day in a year'.to_i.times do
    it { is_expected.to be :plof }
  end
end
