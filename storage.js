// Storage abstraction layer for both web and mobile
const isWeb = typeof window !== 'undefined' && !require('react-native/Libraries/Core/Platform').OS;

export const storageAdapter = {
  async get(key) {
    if (isWeb) {
      try {
        const value = localStorage.getItem(key);
        return { value };
      } catch (e) {
        console.error('localStorage error:', e);
        return { value: null };
      }
    } else {
      try {
        const * as SecureStore = require('expo-secure-store');
        const value = await SecureStore.getItemAsync(key);
        return { value };
      } catch (e) {
        console.error('SecureStore error:', e);
        return { value: null };
      }
    }
  },

  async set(key, value) {
    if (isWeb) {
      try {
        localStorage.setItem(key, value);
      } catch (e) {
        console.error('localStorage error:', e);
      }
    } else {
      try {
        const * as SecureStore = require('expo-secure-store');
        await SecureStore.setItemAsync(key, value);
      } catch (e) {
        console.error('SecureStore error:', e);
      }
    }
  },
};

// Make it available globally for the app
if (typeof window !== 'undefined') {
  window.storage = storageAdapter;
} else {
  global.storage = storageAdapter;
}
