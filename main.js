document.addEventListener("DOMContentLoaded", function () {
    const searchForm = document.getElementById("search-form");
    const searchInput = document.getElementById("search-input");
    const resultsContainer = document.querySelector(".results");

    searchForm.addEventListener("submit", function (e) {
        e.preventDefault();
        performSearch();
    });

    searchInput.addEventListener("input", function () {
        if (searchInput.value.trim() !== "") {
            performSearch();
        } else {
            resultsContainer.innerHTML = "<p>Start typing to search...</p>";
        }
    });

    function performSearch() {
        const query = searchInput.value.trim();
        if (query === "") return;

        fetch("search.php", {
            method: "POST",
            headers: { "Content-Type": "application/x-www-form-urlencoded" },
            body: `query=${encodeURIComponent(query)}`
        })
        .then(response => response.json())
        .then(data => {
            resultsContainer.innerHTML = "";
            if (data.length === 0) {
                resultsContainer.innerHTML = "<p>No results found.</p>";
            } else {
                data.forEach(item => {
                    resultsContainer.innerHTML += `
                        <div class="search-result">
                            <img src="${item.image_url}" alt="${item.name}">
                            <p><strong>Name:</strong> ${item.name}</p>
                            <p><strong>Number:</strong> ${item.number}</p>
                        </div>
                    `;
                });
            }
        })
        .catch(error => console.error("Error:", error));
    }
});
