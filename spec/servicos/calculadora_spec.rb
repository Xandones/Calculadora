RSpec.describe Calculadora, type: :servicos do
  describe 'ao instanciar' do
    it 'passando A e 3, o resultado deve ser uma exceção' do
      expect do
        Calculadora.new('A', 3.0)
      end.to raise_error(StandardError, 'a primeira variável não é um número')
    end

    it 'passando 16 e a data de hoje, o resultado deve ser uma exceção' do
      expect do
        Calculadora.new(16.0, Date.new)
      end.to raise_error(StandardError, 'a segunda variável não é um número')
    end

    it 'passando letra A e a data de hoje, o resultado deve ser uma exceção' do
      expect do
        Calculadora.new('A', Date.new)
      end.to raise_error(StandardError, 'a primeira variável não é um número')
    end
  end

  describe 'ao somar' do
    it 'o número 5 e 3, o resultado deve ser 8' do
      expect( Calculadora.somar(5.0, 3.0) ).to eq(8)
    end

    it 'o número -15 e 8, o resultado deve ser negativo 7' do
      expect( Calculadora.somar(-15.0, 8.0) ).to eq(-7)
    end

    it 'o número 9 e -1, o resultado deve ser 8' do
      expect( Calculadora.somar(9.0, -1.0) ).to eq(8)
    end

    it 'o número -10 e -8, o resultado deve ser negativo 18' do
      expect( Calculadora.somar(-10.0, -8.0) ).to eq(-18)
    end
  end

  describe 'ao subtrair' do
    it 'o número 156 e 134, o resultado deve ser 8' do
      calculadora = Calculadora.new(156.0, 134.0)
      expect( calculadora.subtrair ).to eq(22)
    end

    it 'o número 12 e 13, o resultado deve ser -1' do
      calculadora = Calculadora.new(12.0, 13.0)
      expect( calculadora.subtrair ).to eq(-1)
    end

    it 'o número 12 e -13, o resultado deve ser 25' do
      calculadora = Calculadora.new(12.0, -13.0)
      expect( calculadora.subtrair ).to eq(25)
    end

    it 'o número -5 e -4, o resultado deve ser -1' do
      calculadora = Calculadora.new(-5.0, -4.0)
      expect( calculadora.subtrair ).to eq(-1)
    end
  end

  describe 'ao dividir' do
    it 'o número 12 por 6, o resultado deve ser 2' do
      calculadora = Calculadora.new(12.0, 6.0)
      expect(calculadora.dividir).to eq(2)
    end

    it 'o número 0 por 18, o resultado deve ser 0' do
      calculadora = Calculadora.new(0.0, 18.0)
      expect(calculadora.dividir).to eq(0)
    end

    it 'um número por 0, o resultado deve ser uma exceção' do
      expect do
        calculadora = Calculadora.new(18.0, 0.0)
        calculadora.dividir
      end.to raise_error(ZeroDivisionError, 'não é permitido dividir por zero, seu animal')
    end

    it 'o número 4 por -2, o resultado deve ser -2' do
      calculadora = Calculadora.new(4.0, -2.0)
      expect(calculadora.dividir).to eq(-2)
    end

    it 'o número -10 por 5, o resultado deve ser -2' do
      calculadora = Calculadora.new(-10.0, 5.0)
      expect(calculadora.dividir).to eq(-2)
    end

    it 'o número -36 por -18, o resultado deve ser 2' do
      calculadora = Calculadora.new(-36.0, -18.0)
      expect(calculadora.dividir).to eq(2)
    end
  end

  describe 'ao multiplicar' do
    it 'o número 5 e 3, o resultado deve ser 15' do
      calculadora = Calculadora.new(5.0, 3.0)
      expect( calculadora.multiplicar ).to eq(15)
    end

    it 'o número 2 e -2, o resultado deve ser negativo 4' do
      calculadora = Calculadora.new(2.0, -2.0)
      expect( calculadora.multiplicar ).to eq(-4)
    end

    it 'o número -2 e -2, o resultado deve ser positivo 4' do
      calculadora = Calculadora.new(-2.0, -2.0)
      expect( calculadora.multiplicar ).to eq(4)
    end

    it 'o número -2 e 2, o resultado deve ser negativo 4' do
      calculadora = Calculadora.new(-2.0, 2.0)
      expect( calculadora.multiplicar ).to eq(-4)
    end

    it 'o número 1000 e 0, o resultado deve ser 0' do
      calculadora = Calculadora.new(1000.0, 0.0)
      expect( calculadora.multiplicar ).to eq(0)
    end

    it 'o número 0 e 999999, o resultado deve ser 0' do
      calculadora = Calculadora.new(0.0, 999999.0)
      expect( calculadora.multiplicar ).to eq(0)
    end

    it 'o número 0 e 0, o resultado deve ser 0' do
      calculadora = Calculadora.new(0.0, 0.0)
      expect( calculadora.multiplicar ).to eq(0)
    end
  end


end