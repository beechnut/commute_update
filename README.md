# Commute Update
_We'll text you when your train is ready to board._

[![Build Status](https://travis-ci.org/beechnut/commute_update.svg?branch=develop)](https://travis-ci.org/beechnut/commute_update)
[![Code Climate](https://codeclimate.com/github/beechnut/commute_update/badges/gpa.svg)](https://codeclimate.com/github/beechnut/commute_update)
[![Test Coverage](https://codeclimate.com/github/beechnut/commute_update/badges/coverage.svg)](https://codeclimate.com/github/beechnut/commute_update/coverage)

### The Problem

Knowing the moment your commuter rail train is ready to board can be a challenge. Either you have to stand in the giant crowd in the center of South Station, watching the sign, or you have to stand outside by the tracks -- which can be uncomfortable during cold Boston winters. In addition, the audio announcements can be difficult to hear.

### The Solution

Text your trip ID to XXX-XXX-XXXX (number coming soon) to receive text message (SMS) updates on your train, from boarding to departure.

Now, you can comfortably walk around, visit the food trucks in Dewey Square, or use the restroom without fearing you'll miss a boarding or delay announcement.

### Roadmap

- Allow users to stop receiving notifications for a trip.
- Let users say the name of the line, and use fuzzy text search and a confirmation dialogue to look up trips.
- After their first trip has departed the station, ask if they want to get recurring updates, if this is a common commute for them.
- Set up a worker to poll the data more frequently.
- Support multiple languages.



