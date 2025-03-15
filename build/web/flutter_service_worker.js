'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "ad00f292feab838f7443896a689e06ec",
"version.json": "a6480d7b30e8c3d8b33254657c87cfd0",
"index.html": "15223c3209997050032628b52f42a188",
"/": "15223c3209997050032628b52f42a188",
"main.dart.js": "18d6df4c4bea4ff0f20d7459b2d9ba46",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "83924b37c800df2b5b452549c7fa4080",
"assets/AssetManifest.json": "98bad2eebc4a9a2814ec148ca18fcfa0",
"assets/NOTICES": "7a08bafe94daedfe078256d12fd44fd6",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "701595156ac100312478abb0d6296cc6",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "20e7ba09f4bc22c9fd95ae49781c2c74",
"assets/fonts/MaterialIcons-Regular.otf": "363d2e7ae8c02959d89d5320bb42dd62",
"assets/assets/images/event_annual_function.png": "119c320ddde070321ebb16c4c343c167",
"assets/assets/images/paper.png": "49b2133975e36f5ba0ba9e118a50460b",
"assets/assets/images/event_new_year.png": "2be59a3da1298330c7a84308d5500018",
"assets/assets/images/login.png": "3ce4f8fe3873628399c0d63a83d3b402",
"assets/assets/images/chatpdf.png": "654f56e6b7502bba55c79c68e44a4437",
"assets/assets/images/teacherimg.png": "08482db3a6431914681cef99313f0368",
"assets/assets/images/loginpage.png": "29bdaecbd4a81b64ca55815d47804c06",
"assets/assets/images/event_holi.png": "5f7486322c609f7bf70932b76509f628",
"assets/assets/images/chatlink.png": "54bf2a9c72f0f4e4639bd6e68deb1ac4",
"assets/assets/images/schoollogo.png": "b48f2d4589038ad35d99fa33fc8a183e",
"assets/assets/images/Historymat.png": "9e11203f9603463ed03d91a659a66add",
"assets/assets/images/medals3.png": "8dfbd42de37b6b026256acbac3446ec0",
"assets/assets/images/dashnoti.png": "95547e73496417df9ec86cf1745cc9bd",
"assets/assets/images/assignment2.png": "79935ab5138467318b66897c8756e09f",
"assets/assets/images/paperairplane.png": "8825ccca6db14e3afc498281d232cf86",
"assets/assets/images/roll8.png": "32e58ed4662dea1979c746e55f5784e5",
"assets/assets/images/roll9.png": "f82b03b37944b8056734292a0f6769e2",
"assets/assets/images/Matrices.png": "c3edd9f258ce14fcad424784c72e8a3e",
"assets/assets/images/medals2.png": "e735fd334ef5901664356fd27ab49e8d",
"assets/assets/images/quizeerror.png": "63a8b53eb304a8368e13ec4d1564d204",
"assets/assets/images/filemat.png": "a14419849be69ec9016bc74c2e698c0d",
"assets/assets/images/assignment1.png": "1c5eb6d7e090f9f9f552a8ac1f747628",
"assets/assets/images/viewcerti.png": "8c5a4051b0816c6daa7bdb2ddd21b3ed",
"assets/assets/images/scienceproject.png": "642e77f576798082beee836bf337210f",
"assets/assets/images/medals1.png": "07e551237770d61b9ef20fa006c604aa",
"assets/assets/images/medals5.png": "c2aadbc542a9553a7c0c7ed5e85b5ba7",
"assets/assets/images/today1.png": "c309001ad8b7a7b69b4be526321cab9a",
"assets/assets/images/person.png": "c55fcf7b03e6e557109cc5b52a18b22d",
"assets/assets/images/usersdia.png": "dc18918643468e476c8cc5a5f9910345",
"assets/assets/images/medals4.png": "4f57c0f9bc16d11d2b228bc4d717cf23",
"assets/assets/images/medals6.png": "ef0a0ed091a3124d1b81a7b2610d01a7",
"assets/assets/images/today2.png": "996a093f3d7ff24d447ebb5aabef58ac",
"assets/assets/images/parentimag.png": "3408b1f4e6f854afd358ecb0c1047beb",
"assets/assets/images/person3.png": "48d84ab60c4974dbfffcfa05a4fad894",
"assets/assets/images/like.png": "ef7f4b09e630c34b6b8880a784cf583d",
"assets/assets/images/today3.png": "f3982af227f543d3710baeb281a2e1cf",
"assets/assets/images/Background.png": "6800bfd4b325cbe5bb251a71ee09e082",
"assets/assets/images/medals7.png": "154289b031b4ce4d3a6c5fc8a15f49aa",
"assets/assets/images/search.png": "366acb10cdff73a1951f51f82d0ad152",
"assets/assets/images/roll1.png": "94a07bba4d54860778c28adde30338cc",
"assets/assets/images/descriptiondia.png": "855b923ba94470f5e15dae20030569d1",
"assets/assets/images/roll10.png": "cd9a587995ebc64f79119eee7db8f8e5",
"assets/assets/images/roll3.png": "51979210a0e834e152b85742a10da997",
"assets/assets/images/logo.png": "0c371c68c162e70cc062d25b4e2a089f",
"assets/assets/images/chartbardia.png": "616741db301b3d585079fdc2375af0ca",
"assets/assets/images/roll11.png": "60f18bcab04bb4c9d0fe4289f0955aed",
"assets/assets/images/delhischool.png": "c68ccd0e421f1825da81474d00ebdab3",
"assets/assets/images/quizeresult.png": "8a669df0743ec16f872c24301912acba",
"assets/assets/images/studentprinci.png": "65eae66ebf381c2400986f1759de5469",
"assets/assets/images/roll7.png": "bf7d2a466405bafa468ba849ac99b226",
"assets/assets/images/roll6.png": "6cee265a7e14fa21ee123403a2bab21c",
"assets/assets/images/chatphoto.png": "1bbd13c9fb90d386b27fe6e700d2ab8a",
"assets/assets/images/roll5.png": "1a43747a0d3676a4a7b55724de7cf27e",
"assets/assets/images/event_christmas.png": "0d0f9fb2bf772d5406ca67a48ea07dcb",
"assets/assets/images/delete.png": "cbee0a18d4c787bbc32d367f8a41ca59",
"assets/assets/images/Logologin.png": "eec6e68b2b8886b03adc78e3f2eb1320",
"assets/assets/images/chatedit.png": "3723b7b394dfb5f06991cd0f0de3e4f3",
"assets/assets/images/calendardia.png": "6c32ef35698d56a1b50480a8beb29252",
"assets/assets/images/event_makar_sankranti.png": "428b6e0275ea44c436519497fc85644e",
"assets/assets/images/more.png": "562f46cb240ae12ca8337f8ec2bae008",
"assets/assets/images/principle.png": "f3ed22a92a14bb8f422a3334bf17a015",
"assets/assets/images/chat.png": "cc0ccfd68ccd48566fc8496ae9cd569b",
"assets/assets/images/boy.png": "acff0d46f22d6e17fc4ff0560f406ac3",
"assets/assets/images/filterdia.png": "d09bfcb14ad3cc2928745fed962682a6",
"assets/assets/images/pdfassign.png": "12867d77d20cb500b25dba8849d21347",
"assets/assets/images/text.png": "a78151495f28e1b34da0032028961318",
"assets/assets/images/performancemrs.png": "51c6035b80ed8012194db40ea820e986",
"assets/assets/images/personthomas.png": "e4c9ef05c68d100440435bb175ce1e9a",
"assets/assets/images/mic.png": "2040dd6924e1299e20cc4a0b90fcfb90",
"assets/assets/icons/trophy.png": "7e0f69ca2070809073981b99cfff8947",
"assets/assets/icons/navhome.png": "cbac58c2ce2b22e453c07616b2ece3cc",
"assets/assets/icons/orchestra.png": "ccbb66f63c7feae457c1b033c931ec1c",
"assets/assets/icons/bell.png": "d659bfd3bdedb2f56721e4bed6db738e",
"assets/assets/icons/leadership.png": "9521ecc15d6df89b8006b399664d21a1",
"assets/assets/icons/login.png": "b71d5de97e74641b48b3aebcd27e6c66",
"assets/assets/icons/pdfrecent.png": "9c4d68accaac43d4ca7aee89f2829ed2",
"assets/assets/icons/time.png": "c8e7f558cefbe091ee7fcdc598248817",
"assets/assets/icons/navexamrecord.png": "9c8076b246021d8c47e87f09d5f6f4ad",
"assets/assets/icons/navmessage.png": "e15b365efa53c2fa8a83836fa74753f7",
"assets/assets/icons/link.png": "6a4cf85f9e1059bcab911dde178eeb0b",
"assets/assets/icons/question.png": "eb625098c200199e5635d9d9fa297244",
"assets/assets/icons/move.png": "0d635dbcceb5da891f67f0ca9a728a0c",
"assets/assets/icons/halfyearly.png": "4478aa04c67d2d00d6af1a6a6d67167d",
"assets/assets/icons/viewcerti.png": "d43cfbb687f55e32030b83da72e23713",
"assets/assets/icons/exam_schedule.png": "7b9b51d7a43bbf0a35b1fd9c6247a444",
"assets/assets/icons/Attendance.png": "85d10049242c50f9188a650b6b8a5998",
"assets/assets/icons/navphone.png": "a34838910c8c1288c64299214a939362",
"assets/assets/icons/quize.png": "47f72546e2de6abfd00b0ffe19c23d9a",
"assets/assets/icons/upcoming1.png": "0e4904d2547f442ae8b7c0a595a3cb7f",
"assets/assets/icons/annual.png": "4ba674bc6e2d0c14ac7afde3e8c97b0f",
"assets/assets/icons/divexam.png": "f7c38a224c537ae657f03b42760fcc97",
"assets/assets/icons/div.png": "11a4d37d82a8390a3322959f739899d6",
"assets/assets/icons/upcoming2.png": "6c06edcdd0838300f416c34dc5b83aee",
"assets/assets/icons/navprofile.png": "1b9dad0b9b7a5c5f92725da4d1ce1309",
"assets/assets/icons/upcoming3.png": "94560fb569f9b6c82e2bf2fef925741a",
"assets/assets/icons/sports.png": "2072be3808356ae3c152879814765de1",
"assets/assets/icons/navfee.png": "cab54514a24d93f0c0864f6cb900f576",
"assets/assets/icons/navclassroom.png": "f8f0099825c8c27190be0808f71ea984",
"assets/assets/icons/addlink.png": "32c3a88ebbf388b4642ef6e270b42e35",
"assets/assets/icons/cross-circle.png": "02786e4737bc389e34996af43c781b01",
"assets/assets/icons/class1.png": "07d2895d28d04286ebe7e9473ded55f9",
"assets/assets/icons/personchat.png": "e46c8f0c55532fc56cbfc24bc6449075",
"assets/assets/icons/div3.png": "7744f22faf56b5a1ac691a73b8219b7a",
"assets/assets/icons/termtest1.png": "d388c34e95a8a6d7c118fe254b2c72af",
"assets/assets/icons/calculator.png": "129482efbd20ec714d6307335df64ee9",
"assets/assets/icons/class3.png": "7d71607990f0528ef1bf028ba72a71a7",
"assets/assets/icons/class2.png": "8d57055328902d60d170ec98289a7c70",
"assets/assets/icons/navperformance.png": "627bee776f64a0ebc00560706b1ba65d",
"assets/assets/icons/filtericon.png": "13cb38d086279f112843548ab4ab5e29",
"assets/assets/icons/div2.png": "fff669933d913adc780161108e63e334",
"assets/assets/icons/recent1.png": "302483405e6758d2a5d52ea9828cdfa4",
"assets/assets/icons/yearly.png": "01272972827f76d96bedeac49e33ae03",
"assets/assets/icons/termtest.png": "c96266301c65ee0224bf4c3c58512e83",
"assets/assets/icons/buttondown.png": "4d7bac171f6b724dcff5a72c953098f0",
"assets/assets/icons/report_card.png": "d94e156b2a88bfc175430a8f5dbea3b8",
"assets/assets/icons/recent3.png": "6d9d047e5b8f58b5494f930963cf1a97",
"assets/assets/icons/errorreminder.png": "f254506e45d7cea1fdaa29264e1d50b1",
"assets/assets/icons/location.png": "7d7a3c454d3f12bf35d94d261f9bdf3f",
"assets/assets/icons/recent2.png": "0d744574fdcb78de98de321c4ef6ef97",
"assets/assets/icons/clock.png": "5bf652dcacbcddcdf3cd52e4abc03ea3",
"assets/assets/icons/navattendance.png": "c5f4ddbf11445053eeaf74140b22636a",
"assets/assets/icons/basketball.png": "07934d26e9099511cfc3519cc1148dbe",
"assets/assets/icons/div4.png": "8c7a978a3e0d4b362f2f8d1b8a9f51b4",
"assets/assets/icons/Frame.png": "589e7d08d53d1ce2ab59149cd17a211f",
"assets/assets/icons/alert-circle.png": "67b061cd2b6ef675863a2e02e82f574e",
"assets/assets/icons/academic.png": "2b43da6f2df69ad10c13699f70e0f617",
"assets/assets/icons/subject3.png": "6a7c60739f5e3ee8a66c87bb562a981e",
"assets/assets/icons/subject2.png": "805e0aa634608974386bf5b30813b6c9",
"assets/assets/icons/bus.png": "5ce09e4e9ffd32aa0eb86c93b94d9371",
"assets/assets/icons/notification.png": "224e0d60ebf9b708d632dece4afc2e40",
"assets/assets/icons/subject6.png": "6c98ab9b3cd90d24812db1f40b6122cd",
"assets/assets/icons/arrow_down.png": "fd0a3aaacc0242182ce157c155e58c7a",
"assets/assets/icons/check-circle.png": "10dde287ecae51efe75f90252880214d",
"assets/assets/icons/addfile.png": "ac1aed26683d24c6c425fe6ab3b64b8f",
"assets/assets/icons/subject5.png": "80a36bdd13f9218d7c99d165f4de483c",
"assets/assets/icons/buttonicon.png": "0865ff933d69bdc8e28572e8a0af3bf9",
"assets/assets/icons/subject4.png": "a5f637bc34dd08a562ec95132d29ba46",
"assets/assets/icons/navtrance.png": "1e7e7300510cc8b18d4cdc25e8216acf",
"assets/assets/icons/ExamRecord.png": "7ddbaf16fa17146117175aa37d79d8ae",
"assets/assets/icons/quarterly.png": "4eced42a2bc10de11db19859ccb6c9e3",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
