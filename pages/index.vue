<template>
  <div id="indexContainer">
    <v-container fluid>
      <img src="/assets/logo.png" width="100" height="100" />
      <h1>AniGifs</h1>
      <h2>{{ $t("subheading") }}</h2>
      <p>{{ $t("description") }}</p>
      <v-btn href="https://api.taigabot.net/docs/#/anigifs%2Finteractions">{{ $t("api") }}</v-btn>
      <v-btn href="https://github.com/anigifs/interactions">{{ $t("repo") }}</v-btn>
      <h3>Examples</h3>
      <v-btn to="examples/hug">{{ $t("example.hug") }}</v-btn>
    </v-container>

    <!--
    <h1>{{ $t("heading") }}</h1>
    <p>{{ $t("paragraph") }}</p>

    <nuxt-link :to="switchLocalePath('en')">English</nuxt-link>
    <nuxt-link :to="switchLocalePath('de')">Deutsch</nuxt-link>
    -->
  </div>
</template>

<style lang="sass" scoped>
  #indexContainer
    text-align: center
</style>

<script>
// import Component from '~/components/Component.vue'

export default {
  components: {
    
  }
}
</script>
