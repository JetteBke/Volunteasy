import 'daterangepicker';

const initializePickers = () => {
  $('input[name="date"]').daterangepicker({
    showDropdowns: true,
    minDate: new Date(),
    maxYear: 2020,
    locale: {
      format: 'YYYY/MM/DD'
    }
  });
}

export { initializePickers };

