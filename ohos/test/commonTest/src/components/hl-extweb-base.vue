<template>
    <BaseSameLayer ref="webElement" :hosSameLayerArgs="hosSameLayerArgs" embedType="extWeb"></BaseSameLayer>
</template>

<script>
import BaseSameLayer from "./baseSameLayer.vue";

export default {
    name: "HlExtweb",
    components: {
        BaseSameLayer,
    },
    props: {
        url: {
            type: String,
            required: true,
        },
        asMixWeb: {
            type: Boolean,
            required: false,
        },
    },

    computed: {
        hosSameLayerArgs() {
            return {
                url: this.url,
                asMixWeb: this.asMixWeb,
            };
        },
    },
    methods: {
      
    },
};
</script>

<style scoped></style>