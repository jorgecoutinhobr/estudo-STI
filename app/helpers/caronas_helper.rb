module CaronasHelper
  def horaf(data)
    data.strftime("%H:%M")
  end

  def diaf(dia)
    dia.strftime("%d/%m/%Y")
  end

end
