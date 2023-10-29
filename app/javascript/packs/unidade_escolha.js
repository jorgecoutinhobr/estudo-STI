$(document).ready(function() {
    $('#unidade_tipo').change(function() {
      var escolha = $(this).val();
      if (escolha === 'partida') {
        $('#partida_select').show();
        $('#partida_input').hide();
        $('#destino_select').hide();
        $('#destino_input').show();
      } else if (escolha === 'destino') {
        $('#partida_select').hide();
        $('#partida_input').show();
        $('#destino_select').show();
        $('#destino_input').hide();
      }
    });
  
    $('#unidade_tipo').trigger('change');
  });
  
  