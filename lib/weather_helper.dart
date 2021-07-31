String weatherIcon(String main) {
  switch (main) {
    case "rain":
      return "https://imgur.com/GW4kfYo.png";
    case "thunderstorm":
      return "https://imgur.com/OrOACYl.png";
    case "drizzle":
      return "https://imgur.com/FQagiDK.png";
    default:
      return "https://imgur.com/innJNWA.png";
  }
}
