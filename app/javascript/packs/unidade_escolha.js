document.addEventListener('turbolinks:load', function() {
  $('#unidade_tipo').change(function() {
    var escolha = $(this).val();
    if (escolha === 'partida') {
      $('#partida_select').prop('disabled', false).prop('hidden', false);
      $('#partida_input').prop('disabled', true).prop('hidden', true);
      $('#destino_select').prop('disabled', true).prop('hidden', true);
      $('#destino_input').prop('disabled', false).prop('hidden', false);
    } else if (escolha === 'destino') {
      $('#partida_select').prop('disabled', true).prop('hidden', true);
      $('#partida_input').prop('disabled', false).prop('hidden', false);
      $('#destino_select').prop('disabled', false).prop('hidden', false);
      $('#destino_input').prop('disabled', true).prop('hidden', true);
    }
  });
});
