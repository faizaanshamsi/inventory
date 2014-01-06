require 'spec_helper'

describe Entry do
  describe 'Database Tests' do
    it { should have_db_column(:title).of_type(:string) }
    it { should have_db_column(:description).of_type(:text) }
    it { should have_db_column(:quantity).of_type(:string) }
  end

  describe 'Validation Tests' do
    it { should have_valid(:title).when('faizaan', 'shamsi', 'faizaan shamsi') }
    it { should_not have_valid(:title).when('', nil) }
    it { should have_valid(:description).when('faizaan', 'shamsi', 'faizaan shamsi') }
    it { should_not have_valid(:description).when('', nil) }
    it { should have_valid(:quantity).when('faizaan', 'shamsi', 'faizaan shamsi') }
    it { should_not have_valid(:quantity).when('', nil) }
  end
end
