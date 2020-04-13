require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import { increaseService } from '../channels/infinite_services'
increaseService();