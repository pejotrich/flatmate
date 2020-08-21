const rowColors = () => {
  const rows = document.querySelectorAll('tr')
  const table = document.querySelector('table')
  if (table) {
    table.style.border = "none";
  }

  rows.forEach((row, index) => {

    if (index % 2 == 0) {
      row.style.backgroundColor = '#f7f7f9';
    } else {
      row.style.backgroundColor = '#ebecf1';
    }
  })
}

export { rowColors };
