import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["form", "restaurantsList", "searchInput"]

    connect() {}
    update() {
        const url = `${this.formTarget.action}?location=${this.searchInputTarget.value}`
        fetch(url, { headers: { 'Accept': 'text/plain' } })
            .then(response => response.text())
            .then((data) => {
                this.restaurantsListTarget.innerHTML = data;
            })
    }
}