require 'spec_helper'

describe 'Notifier' do
  context 'sends an email to Rachael when a user fills out the form correctly' do
    let(:ask) { Ask.new(name: 'Kinsey', email: 'kinsey@example.com', subject: 'Question about my student', body: 'Is she doing okay?') }
    let(:mail) { Notifier.ask_rach_email(ask) }

    it 'renders the subject' do
      expect(mail.subject).to eq('Question about my student')
    end

    it "renders Rachael's email address(receiver)" do
      expect(mail.to).to eq(['rach.durham@gmail.com'])
    end

    it "renders the sender's email" do
      expect(mail.from).to eq(['kinsey@example.com'])
    end

    it 'renders the body of the email' do
      expect(mail.body).to include('Is she doing okay?')
    end
  end
end