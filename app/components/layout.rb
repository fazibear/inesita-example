class Layout
  include Inesita::Layout

  components :navbar

  def initialize
    @navbar = NavBar.new
  end

  def render
    dom do
      div class: 'container' do
        component navbar
        component outlet
      end
    end
  end
end
