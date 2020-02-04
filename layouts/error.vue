<template>
  <v-app dark>
    <div v-if="error.statusCode === 404">
      <h1>
        {{ $t("error.404.heading") }}
      </h1>
      <p>
        {{ $t("error.404.subheading") }}
      </p>
    </div>
    <div v-else>
      <h1>
        {{ otherError }}
      </h1>
    </div>
    <NuxtLink to="/">
      Home page
    </NuxtLink>
  </v-app>
</template>

<script>
export default {
  layout: 'empty',
  props: {
    error: {
      type: Object,
      default: null
    }
  },
  head () {
    const title =
      this.error.statusCode === 404 ? this.pageNotFound : this.otherError
    return {
      title
    }
  },
  data () {
    return {
      pageNotFound: '404 Not Found',
      otherError: 'An error occurred'
    }
  }
}
</script>