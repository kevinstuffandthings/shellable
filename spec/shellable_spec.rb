# these tests stink

describe Shellable do
  class ShellTarget
    def thing
      47
    end
  end

  describe '#open_shell' do
    class ShellableTarget < ShellTarget
      include Shellable
    end
    let(:subject) { ShellableTarget.new }

    it 'can open a shell within its own context' do
      expect(subject).to respond_to :open_shell
    end
  end

  describe '::open' do
    let(:target) { ShellTarget.new }

    it 'can open a shell within the context of its argument' do
      expect(described_class).to respond_to :open
    end
  end
end
