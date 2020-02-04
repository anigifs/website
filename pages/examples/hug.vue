<template>
  <div id="indexContainer">
    <v-container fluid>
      <img src="/assets/logo.png" width="100" height="100" />
      <h1>AniGifs</h1>
      <h2>{{ $t("examples") }} - {{ $t("example.hug") }}</h2>
      <img :src="image" max-height="500" max-width="700" /><br>
      <v-btn to="/">{{ $t("home") }}</v-btn>
    </v-container>
  </div>
</template>

<style lang="sass" scoped>
  #indexContainer
    text-align: center
</style>

<script>
import axios from "axios";

export default {
  async asyncData() {
    let image = (await axios.get("https://api.taigabot.net/v2/anigifs/hug")).data.image
    return { image };
  }
}
</script>
