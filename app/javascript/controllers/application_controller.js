import { Controller } from '@hotwired/stimulus';

export default class extends Controller {

  handleFlashClick(event) {
    this.removeFlash(event.params?.id);
  }
  handleWorkLogAddClick(event) {
    window.location.href = `/work_log/new?date=${event.params?.date}`
  }
  removeFlash(id) {
    let elem = document.getElementById(id);
    elem.remove();
  }
}