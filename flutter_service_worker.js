'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "1c4f5f2b2e134f483d0be9be35337937",
".git/config": "500368a48635748449460096eccd4c96",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "e55df116b43ef9f70df62e2612c6d1ad",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "722d02d09035bd1951366cbed5d9405f",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "89bd0d0980aafc75d1b69f9a590b5bfc",
".git/logs/refs/heads/testWeb": "89bd0d0980aafc75d1b69f9a590b5bfc",
".git/logs/refs/remotes/origin/testWeb": "14de1752c43f98a1ff74d575a00b71ca",
".git/objects/04/6aadc5935381b39781097f765443764afb33cc": "f5d30475dd067234fabd162d74852439",
".git/objects/05/e34a78d9b143ef265ebbc7efffb846b39bc84d": "adf1f6eb71d4085387ceb2f11647bed8",
".git/objects/0d/0df08f7c3e147a8ae36017cf81a96e35b73717": "106e868f28a72727fb6fb0fa71123633",
".git/objects/12/22937540d283df9e243dfc3de2110814d66e9c": "3847de33eb4e4ad8851f646ceffd4254",
".git/objects/14/a153f4259b6b0252dd04cf24294cd1c22f777f": "22e85075732d99fdae780d933d2ed15d",
".git/objects/24/b1f14dd348b07c9b8373758bde9ac14d16fd92": "dbf45d6c044044561758a334420e9569",
".git/objects/29/2214367c0af9a2eee8f873b2944224e2fe3f0c": "902d6cf3d5ea70392a74bfc9ded583bb",
".git/objects/2d/cf3542c874e33cd8ab86ceb6f0ec444228aa78": "66baad0ae5d874f09b6eee790095bc65",
".git/objects/2f/f174cb18cbe6f37b5c259c82866fa6a347dd6e": "f95af76a4499f4f39b688058a0191b91",
".git/objects/33/44aa59da5ca1fd68d035648a5c7a85ef207204": "317ffbce89706b559460b04b6118e9f4",
".git/objects/3c/a039e6ca69922bb4c049e0b08706fdc201d37e": "b7b8e8c33aece44930fb677d40fbed0a",
".git/objects/40/2507e76c4cc48ef0d3903ae1ab8aa10e16a709": "b56150e08a13f446cabff34dc94f3823",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/48/41a58d7ce75d9a694b0b385b3e7cce97da1f1f": "6b2a04292750d433eca2cec84c2acffe",
".git/objects/49/4709c560ead8a1677bc59fd03cd8c932bfb039": "a93a9026d52d3f0d8b6436922054fac3",
".git/objects/4a/95455e15a5d58051b25baf34f8defa9b9918d9": "bf3c77de57ce9631b8164eb04f228692",
".git/objects/4e/89617a3696bd10c155ec378f4a65a9f89e9e3a": "d8056e20bae90d092b619c895129e982",
".git/objects/76/8651b2e249c2517c7b37bdbeea0a5d8bfbb707": "495b1c4fefa633f6afe4dc5840ebe18f",
".git/objects/77/61801429117c613207313f723ea9c1b8b9fb8f": "0f415e3941136e4b237746f91c1b513c",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7e/4abdc7ea8723b74cdfd02b6e6c818d37b4587a": "338a90d0d8338f8f2576788092871e12",
".git/objects/7f/36bb4f4c26c3bb575c5e416b96874b3e5123c5": "1e84d08bddb4645cb418bce1eff31fdc",
".git/objects/85/786c20dcdddb4ceefdc07d21b50541163e5921": "655079fea4e37b9c3442a2d39182f007",
".git/objects/8c/ae08e9bce95737252080d998d3841b2acf22c7": "15d14a892d4a6c52c7da5db1fa716ea3",
".git/objects/8e/3c84e6218ebe02726eff4d170edcc9502850a8": "b6df5d239fb455e4da550ee298109f35",
".git/objects/93/f835dbef0c7c85a4108677009a23cee6dedf35": "dad2777926a74b6c0a31a4076e312262",
".git/objects/97/be9112ba9b4afd534893c34590d48462ed50aa": "3941f59a726aeb9ff329e4d975bb7ca2",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a4/89d006c2cddbd3149f5a2d0323d598e678fa70": "87f9715eaa64ab33303f50a1bdd55993",
".git/objects/a9/26e956080bd7ec84a1ee4092a22525f5f0bf09": "8ccf23ec9613db110f49de71f3393352",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/bb/a0f95890e83b77d1aae6360d5103929eef8c4c": "185d9e7af68c5423c7c6d9b1a63f5f89",
".git/objects/bd/8404306ee56556f2bc04dfa5878ed85657132a": "dc08b548299e3c603f4a39558b96bb72",
".git/objects/c1/4252cee165a7a4f4577f810bd830074b62f15f": "f19c18b31bd8875ea7009381f2d27cb8",
".git/objects/c4/aefb92cf5ce0e5a668485c732762a452645ad8": "60a1e5e29970ad0239f97c2ef9dc842a",
".git/objects/c8/d8f8f6b57ac575fa9e8b3385df4fac996c1a90": "50a9c5923bca140d777d12ad80d549a9",
".git/objects/cc/22a5a001fcb87d041db2fc2a11198ebaafb359": "8fd8d625d6908516b624edb9c94a5476",
".git/objects/cd/22076013ce8b84475eae9bb4cd6c60b5460fbe": "81c620e2d6cbe5638d6c90ee25886389",
".git/objects/ce/3a036c4cf4e52195b66b2b9461505c4f767b56": "4a6091c9c1bce852e4778f33fde3420d",
".git/objects/cf/ca6ae7120f2336bd3a13add54b94df41e3a342": "1268c70825db7358144bb9c38af1f037",
".git/objects/d4/0369223fab92e70700190aea0c7e8229b33ed9": "b8c456e8345bef9e3593c8500bdcb525",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e9/e575d0b36ebd696294496017834c26b62e1505": "8eca52e53d59927cc7c00a13888ea67b",
".git/objects/fa/665cf2e2596566b22787b8a8febb4729a7b2be": "2a21cc5c320af1b7b391c3aba5a4153d",
".git/objects/fb/1684767ff13afb7d6bdfcfd66808b1fdc6bc3b": "3cb9d8ebe21817f682319a0060275b6c",
".git/refs/heads/testWeb": "6acb7561d8c5e58cef6004b4ad51cb06",
".git/refs/remotes/origin/testWeb": "6acb7561d8c5e58cef6004b4ad51cb06",
"assets/AssetManifest.json": "ce82648b11a230e5e0ea083636a0fa96",
"assets/assets/image/Mervo.png": "27e040131ffcd1fafa2488c231f07bdb",
"assets/assets/image/mervoLogo.png": "487610479f0ae03c5e3ab15215910d85",
"assets/assets/image/profile.png": "9728ae7cb9076c1e6e65e40b729b2b3d",
"assets/assets/image/stand.png": "fcdadb0adbcbe44007201fb9ec63d10a",
"assets/assets/media/Emailing.png": "17ed762190d6003d5d4fc6ccef3d2c03",
"assets/assets/media/facebook.png": "f71c49588f9f3a873ba97ee2b8441cfd",
"assets/assets/media/FaceSocial.png": "28cf3c07140e9afebe117e48cdfd4c93",
"assets/assets/media/github.png": "5ef5c6600247211935b78a95181b1d1c",
"assets/assets/media/GitSocial.png": "d828de666d1652af4a4b238f3901b7f2",
"assets/assets/media/instagram.png": "c93811aa18d248405238536a7d009b14",
"assets/assets/media/InstaSocial.png": "b5ab2fc17fdba0428a817c08f1524115",
"assets/assets/media/linkedin.png": "caf132da31618b8e9308b5bc3aaa3a91",
"assets/assets/media/LinkSocial.png": "e22d230a3fb2d71d655892e445223790",
"assets/assets/media/mail.png": "e0ceccbdcd2907c10558f4158eaf399a",
"assets/assets/media/messenger.png": "540775a528b024b9f1efd1d69eb8c582",
"assets/assets/media/TweetSocial.png": "fbf3e12d956e530a005e8a72bbb80e15",
"assets/assets/media/twitter.png": "372edb279da2efb6582782f6ae9b6d09",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "7d70b9c17ebb36119c9561f3a988ea8e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"flutter.js": "eb2682e33f25cd8f1fc59011497c35f8",
"index.html": "2c7a10a67686ee22b037ccdc53258637",
"/": "2c7a10a67686ee22b037ccdc53258637",
"main.dart.js": "125ae0b0f29bb3cd68077ab5ad8622a6",
"manifest.json": "28bd58c10a85ed07ed60d417d2efca9d",
"Mervo.png": "27e040131ffcd1fafa2488c231f07bdb",
"mervoLogo.png": "487610479f0ae03c5e3ab15215910d85",
"version.json": "2f136f65476c870007432209928c7eab"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
