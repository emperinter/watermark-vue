import { createApp } from 'vue'
import App from './App.vue'
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import { createI18n } from 'vue-i18n'


const i18n = new createI18n({
    locale: navigator.language, // set the default locale
    fallbackLocale: 'en', // set the fallback locale
    messages: {
        en: require('./locales/en.json'),
        ja: require('./locales/ja.json'),
        cn: require('./locales/cn.json'),
        zh: require('./locales/cn.json'),
        "zh-CN": require('./locales/cn.json'),
        fr: require('./locales/fr.json'),
        de: require('./locales/de.json'),
        it: require('./locales/it.json'),
        es: require('./locales/es.json'),
    }
})


createApp(App).use(i18n).use(ElementPlus).mount('#app')