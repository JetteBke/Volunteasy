import 'daterangepicker';

const initializePickers = () => {
  $('input[name="date"]').daterangepicker({
    showDropdowns: true,
    minYear: 2019,
    maxYear: 2020,
    locale: {
      format: 'YYYY/MM/DD'
    }
  });
}

export { initializePickers };
