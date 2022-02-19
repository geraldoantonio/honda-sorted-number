document.addEventListener('DOMContentLoaded', function () {
  const form = document.getElementById('sorted_number');
  const fetchNumberSortedUrl = form.dataset.sortedNumberUrl

  form.addEventListener('submit', function (event) {
    event.preventDefault();

    const formData = new FormData(event.target);
    const data = [...formData.entries()];
    const asQueryString = data.map(([key, value]) => `${key}=${value}`).join('&');

    const url = `${fetchNumberSortedUrl}?${asQueryString}`;

    fetchNumberSorted(url).then(result =>
      printResult(result, '#result_quota_number')
    );
  });

  const fetchNumberSorted = async (url) => {
    const response = await fetch(url)
      .then(response => response.json())
      .then(json => json.sorted_number)

    return response;
  }

  const printResult = (result, element) => {
    const resultElement = document.querySelector(element);
    resultElement.getElementsByTagName('span')[0].innerHTML = `${result}`;
    resultElement.classList.remove('d-none');
  }
});
