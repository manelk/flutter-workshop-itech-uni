//// Translation of json to dart
/// original JSON:
/// {
//   "copyright": "Haythem Hamdi",
//   "date": "2026-04-14",
//   "explanation": "Why does Comet R3 (PanSTARRS) have a wispy tail?  The newest bright member of the inner Solar System, Comet C/2025 R3 (PanSTARRS) is already extending an impressive stream of glowing gas. This tail starts from an unseen central nucleus of dirty ice that is likely a few kilometers across. The nucleus is warmed by the Sun and emits a cloud of neutral gas into a coma that glows light green. Nuclear gas ionized by energetic sunlight is pushed away from the Sun by the solar wind into an ion tail that glows light blue.  The wispy nature of the ion tail is caused by the constantly changing structure of the solar wind.  Pictured from Rhode Island, USA two days ago, Comet R3 (PanSTARRS) shows off a many-degree ion tail.  Comet R3 (PanSTARRS) is best seen before dawn from northern skies for another 10 days, after which it will be best visible from southern skies.    Growing Gallery: Comet R3 in 2026",
//   "hdurl": "https://apod.nasa.gov/apod/image/2604/CometR3_Hamdi_2710.jpg",
//   "media_type": "image",
//   "service_version": "v1",
//   "title": "The Long Wispy Tail of Comet R3 (PanSTARRS)",
//   "url": "https://apod.nasa.gov/apod/image/2604/CometR3_Hamdi_960.jpg"
// }
///
/// LINK USED: https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY
///
/// This file uses unamed constrctor

import 'package:application_test/model/apod_model.dart';

List<ApodModel> listItems = [
  ApodModel(
    "Haythem Hamdi",
    "2026-04-14",
    "explanation",
    "The Long Wispy Tail of Comet R3 (PanSTARRS)",
    "https://apod.nasa.gov/apod/image/2604/CometR3_Hamdi_960.jpg",
  ),

  ApodModel(
    "2025-01-02",
    "Betul Turksoy",
    "Solar Analemma 2024",
    "Recorded during 2024, this year-spanning series of images reveals a pattern in the seasonal drift of the Sun's daily motion through planet Earth's sky...",
    "https://apod.nasa.gov/apod/image/2501/solaranalemma2024-4-5BetulT1024.jpeg",
  ),
  ApodModel(
    "2025-01-03",
    "Josh Dury",
    "Eclipse Pair",
    "Eclipses tend to come in pairs. Twice a year, during an eclipse season that lasts about 34 days, Sun, Moon, and Earth can nearly align...",
    "https://apod.nasa.gov/apod/image/2501/APODEclipsePair1024.jpg",
  ),
];
