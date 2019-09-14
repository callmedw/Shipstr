module CurrencyConverterConcern
  extends Active::SupportConcern

  before_save :convert_currency

  def convert_currency

  end

end
