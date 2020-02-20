require './test.rb'
require 'rspec'


#Test class tests
RSpec.describe Test do
    let(:fileName){'webserver.log'}
    subject(:test){described_class.new(fileName)}

    #checks whether test class is created
    it 'creates a test class' do
    expect(test).to be_kind_of(Test)
    end

    describe '#mostPageViews' do 
        it 'shows most view pages' do 
            expect(test.mostPageViews).to eq({
                "/about/2"=>90, 
                "/contact"=>89, 
                "/index"=>82, 
                "/about"=>81, 
                "/help_page/1"=>80, 
                "/home"=>78
            }
            )
    end

    it 'shows most unique pages' do 
        expect(test.mostUniquePage).to eq({
                "/index"=> 23,
                "/home"=> 23,
                "/contact" =>23,
                "/help_page/1" =>23,
                "/about/2"=>22,
                "/about"=> 21
            }
            )

    end
end

end