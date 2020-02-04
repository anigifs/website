<template>
  <v-app dark>
    <v-app-bar fixed app>
      <v-toolbar-title>{{ $t("pageTitle") }}</v-toolbar-title>
    </v-app-bar>
    <v-content>
      <v-container>
        <nuxt />
      </v-container>
    </v-content>
    <v-footer fixed app>
      <span>&copy; {{copyrightYear}} taiga, AniGifs</span>
    </v-footer>
  </v-app>
</template>

<script>
let startYear = "2020";
let currentYear = new Date().getFullYear();

export default {
  data () {
    return {
      copyrightYear: (startYear == currentYear) ? startYear : startYear + "-" + currentYear
    }
  }
}
</script>
