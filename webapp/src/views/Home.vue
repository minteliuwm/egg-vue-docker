<template>
  <div class="home">
    <div>{{desc}}</div>
  </div>
</template>

<script>

export default {
  name: 'home',
  data() {
    return {
      desc: ''
    };
  },
  mounted() {
    this.$request('getAppDesc').then(re => this.desc = re);
  }
};
</script>
