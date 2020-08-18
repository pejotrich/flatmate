const rowColors = () => {
  const rows = document.querySelectorAll('tr')
  const table = document.querySelector('table')
  table.style.border = "none";
  rows.forEach((row, index) => {

    if (index % 2 == 0) {
      row.style.backgroundColor = 'rgba(3, 11, 82, 0.03)';
    } else {
      row.style.backgroundColor = 'rgba(3, 11, 82, 0.06)';
    }
  })
}

export { rowColors };
