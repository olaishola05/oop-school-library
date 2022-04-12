require_relative './app'

class OptionsProcessor
  def initialize
    @app_entry = App.new
  end

  def get_user_options(run_app, data)
    case run_app
    when '1'
      @app_entry.list_all_books(data[:books])
    when '2'
      @app_entry.list_all_people(data[:people])
    when '3'
      @app_entry.create_person(data[:people])
    when '4'
      @app_entry.create_book(data[:books])
    when '5'
      @app_entry.create_rental(data)
    when '6'
      @app_entry.list_rentals(data[:people])
    when '7'
      puts 'Thank you for using this app!'
      exit
    else
      puts 'Invalid selection'
    end
  end
end
