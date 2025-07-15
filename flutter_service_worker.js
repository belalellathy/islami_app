'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "7df142b2b370880df82afd72be3b43d6",
"version.json": "fc593bb86cf47d6479f77bbec352c431",
"index.html": "35de4f228b8781d5213c1951f926d018",
"/": "35de4f228b8781d5213c1951f926d018",
"main.dart.js": "92105e91823a6e6f08464400bef3d41e",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"favicon.png": "56e814bd65398b80b37a90d76d1ee0b1",
"icons/Icon-192.png": "a0ba606acb0b51b511aff07dcfe8c62e",
"icons/Icon-maskable-192.png": "a0ba606acb0b51b511aff07dcfe8c62e",
"icons/Icon-maskable-512.png": "a047973b666d211c9a420a2d8cc81489",
"icons/Icon-512.png": "a047973b666d211c9a420a2d8cc81489",
"manifest.json": "bcb8a1ebf50c2e68c9fcbf38cbf983d6",
"assets/AssetManifest.json": "84c2c931ac95d3f6987c322602ec2255",
"assets/NOTICES": "ce09a7dcaaf1db7af1bdf6d1f321648b",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "de1ca66081c62e09123c1e1346c24c22",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "825e75415ebd366b740bb49659d7a5c6",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "54ff66296687067ffb144bcc47b92897",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/assets/images/Mask%2520group.png": "8e0fa1c321b495617ca2c881c9cd8f67",
"assets/assets/images/Mask%2520group%2520(1).png": "982ce83db0eec98ff6b7d327c8af240e",
"assets/assets/images/Background%2520(1).png": "61502297ee41e9dbccd04e07d718b365",
"assets/assets/images/Mosque-02.png": "15f65bd4930630ba9e9d484c290a979a",
"assets/assets/images/taj-mahal-agra-india.jpg": "72fc9c64841d0cfcf5044e4c3e53eb72",
"assets/assets/images/HadithCardBackGroundWhite.png": "e8638cb1fac095ccda918ff46ea212bd",
"assets/assets/images/praytime.png": "f20fc400cc6ba0dd3790f2fa4c81d524",
"assets/assets/images/Logo%2520(1).png": "4b0141338eb95ca84cb44d998d08fdc3",
"assets/assets/images/%25D8%25B3%25D9%258E%25D8%25A8%25D9%2590%25D9%2591%25D8%25AD%25D9%2590%2520%25D8%25A7%25D8%25B3%25D9%2592%25D9%2585%25D9%258E%2520%25D8%25B1%25D9%258E%25D8%25A8%25D9%2590%25D9%2591%25D9%2583%25D9%258E%2520%25D8%25A7%25D9%2584%25D8%25A3%25D8%25B9%25D9%2584%25D9%2589.png": "8c51dddd14e5b931ae068d98d202b932",
"assets/assets/images/Sebha.png": "bccaffcb7d5d7739494c01ecc5f5b2a0",
"assets/assets/images/silhouette-woman-reading-quran.jpg": "4ea8cf000b9cb88efbfa55038af05fcd",
"assets/assets/images/Mask%2520group%2520(2).png": "f67df9b67db76e00a23acd7894d08b54",
"assets/assets/images/Mosque-01%25201.png": "c0a4c648332349c05cd7f8c743b318c1",
"assets/assets/images/splash_screens/Frame%25201.png": "446ff22a5efbda98bf64b03f5f4f43b7",
"assets/assets/images/splash_screens/Group%252029.png": "6a92a5c6c07d510de4a85176e2da5acf",
"assets/assets/images/splash_screens/OBJECTS.png": "a049cc59154cfe0b7aea2947c44f34a5",
"assets/assets/images/Rectangle%2520124.png": "75d6cbbb9d21e671162a7c58d9f38d28",
"assets/assets/images/image.png": "ee2d30533cd3c756adc77ffa5345979c",
"assets/assets/images/arabic-art-svgrepo-com%25201.png": "ac0c4b6fa4949400754aff03bb1d0d0b",
"assets/assets/icons/Polygon%25202.svg": "1daadaab1ebc2c24891c7444d98dbb48",
"assets/assets/icons/Vector.svg": "572fca27062bcb134384c942547f1253",
"assets/assets/icons/Vector-1.svg": "00d9bf7d2106195832cf979c39f51eb1",
"assets/assets/icons/necklace-islam-svgrepo-com%25201.svg": "e58e9e0da390092beafe82561df05bfe",
"assets/assets/icons/radio-svgrepo-com%25201.svg": "7135890cd1d3f2cd2e6f9fd326540aeb",
"assets/assets/icons/book-album-svgrepo-com%25201.svg": "8adab261c0d17db38eeb16e53776a0ff",
"assets/assets/icons/Volume%2520High.svg": "8b406aeb69cad200eaa5099f5bd6d344",
"assets/assets/icons/Pause.svg": "69410052a30f2061c5890c5f7e0e7e6e",
"assets/assets/icons/Volume%2520Cross.svg": "e3f515767dfc7078c3062dd6185e0376",
"assets/assets/text/Suras/29.txt": "1c9fd416789c57b424462ca55400d70a",
"assets/assets/text/Suras/15.txt": "9fc20e2a2172ea908f99bc9c2f9da8c7",
"assets/assets/text/Suras/114.txt": "6a5e500fcf0e6acf375cd6a35a109dd2",
"assets/assets/text/Suras/100.txt": "3c87b709fc32fe64d3f7aa76bc523aef",
"assets/assets/text/Suras/101.txt": "3fb0194fbf9c02f04b7a103835812b0c",
"assets/assets/text/Suras/14.txt": "d8a34629ee2ad122e1c1799af129383b",
"assets/assets/text/Suras/28.txt": "6fe791dd50aeb72ada433d429f17e7a8",
"assets/assets/text/Suras/16.txt": "e4b0caed8c36edb5fb2c9d8493ca828f",
"assets/assets/text/Suras/103.txt": "4ee9fe63231c3392a566d45a6c4cbc6b",
"assets/assets/text/Suras/102.txt": "09cdbf50c5bdd79302ab787d04cfeb1b",
"assets/assets/text/Suras/17.txt": "00ba22491b93431815ffb47fa359b537",
"assets/assets/text/Suras/13.txt": "3d0978db81040e10db3d95908f729889",
"assets/assets/text/Suras/106.txt": "270e51aaa77df805e7b2676275f631e6",
"assets/assets/text/Suras/112.txt": "c1cbb8b138e277d4648ede2730c659a7",
"assets/assets/text/Suras/113.txt": "ef1aa678dda8ac1776abe822cc341ed9",
"assets/assets/text/Suras/107.txt": "4b6b2b651cd7dc1b01bcf1ccf473326f",
"assets/assets/text/Suras/12.txt": "3c2c59d32f30e182db8ae7645d7896f9",
"assets/assets/text/Suras/10.txt": "b449c5caeeb83164956b4b0a4eaba92b",
"assets/assets/text/Suras/38.txt": "900add600e6f95da95905e91e1be76b8",
"assets/assets/text/Suras/111.txt": "8d4e18fc15dc34edba50576594912703",
"assets/assets/text/Suras/105.txt": "3d9e12db64efea5704aa325a779cf194",
"assets/assets/text/Suras/104.txt": "9c1f0b6c327cd1c847f9c9784bac0739",
"assets/assets/text/Suras/110.txt": "541f71b55eb4fea6b1bf079590f5bac5",
"assets/assets/text/Suras/39.txt": "8065f85724c5c73dafe0dbeb0f74cb76",
"assets/assets/text/Suras/11.txt": "6451d03f3c54753d90def3f116de2593",
"assets/assets/text/Suras/76.txt": "61d58be188a4bcc5b6f77cc605134dcb",
"assets/assets/text/Suras/62.txt": "2ac396ffbb0a5ae2017b633c5947c5a7",
"assets/assets/text/Suras/89.txt": "6ee99dd2491b19d718fdb9cab421601a",
"assets/assets/text/Suras/88.txt": "385882c7c8bc317e07946dd4ef87e451",
"assets/assets/text/Suras/63.txt": "cf7428846e28be45546a218728c46909",
"assets/assets/text/Suras/77.txt": "e3d46c45feb1ede2c2562eef0266edef",
"assets/assets/text/Suras/49.txt": "50a3d352a56a31d19918f04c574f9fd5",
"assets/assets/text/Suras/61.txt": "7efe0e67bf4695bacefc844c67ea5ae9",
"assets/assets/text/Suras/75.txt": "bc15d4dab9c34dbe9a96f453bc7dd63e",
"assets/assets/text/Suras/74.txt": "13c16b3c9a39fe150b3f53d2d7b5dab5",
"assets/assets/text/Suras/60.txt": "218baaa38913186f85cd738ac68be08d",
"assets/assets/text/Suras/48.txt": "5484bf825bfc18de040f1cc5b8cc620b",
"assets/assets/text/Suras/64.txt": "0db493603204c39eae8a36718e0f0598",
"assets/assets/text/Suras/70.txt": "3092e5d74990bb3d024896b97f00eebf",
"assets/assets/text/Suras/58.txt": "4c4d905424c0367b964051bfc396fde8",
"assets/assets/text/Suras/59.txt": "afbbe7e97b4d43737fd1b68c9d7202f1",
"assets/assets/text/Suras/71.txt": "463056cecc5ffe738408679254c76cee",
"assets/assets/text/Suras/65.txt": "5aa17863182eb8f2c087e6d903724078",
"assets/assets/text/Suras/73.txt": "78f39809715cabff9af626616c53c4d0",
"assets/assets/text/Suras/67.txt": "b71d86c7abe714a0190708980e915a36",
"assets/assets/text/Suras/9.txt": "4f3136c2f8835a853334150f6595fcd0",
"assets/assets/text/Suras/98.txt": "c752e1ffa86dc0ea95d1f25e96f09054",
"assets/assets/text/Suras/99.txt": "5a98d230fab6ca073bb4f3e992482722",
"assets/assets/text/Suras/8.txt": "dfb73f6a60fe5689a03a47d4000449c6",
"assets/assets/text/Suras/66.txt": "784c024044e8eb50196ffff89054fba8",
"assets/assets/text/Suras/72.txt": "1a66cf093cb4215e00ccef4d61724aa3",
"assets/assets/text/Suras/57.txt": "3d00d7e462a60a69f3db96c8838d4478",
"assets/assets/text/Suras/5.txt": "af357fa6d9048f28f02490047129697c",
"assets/assets/text/Suras/43.txt": "4ce4310de74074ee948317168a1592d2",
"assets/assets/text/Suras/94.txt": "c79f98724cb3e27f6a4337527a21e1a3",
"assets/assets/text/Suras/80.txt": "39376de7abd041f6412849b6e6632f96",
"assets/assets/text/Suras/81.txt": "d35e9f7ee5bc67cf226ad7b013be7ad5",
"assets/assets/text/Suras/95.txt": "4e905b17da881743cc4e454628d8d706",
"assets/assets/text/Suras/42.txt": "f7f0c6f1b1109cebcd9aab0b32f8af23",
"assets/assets/text/Suras/56.txt": "68649f72585784d2b321216fd0a99c37",
"assets/assets/text/Suras/4.txt": "486421523f812e79fcac3223782cdf81",
"assets/assets/text/Suras/68.txt": "e969467a48c8339e432f531fea731e2b",
"assets/assets/text/Suras/40.txt": "03e7031e2c8be0773d2addf63a5f65a4",
"assets/assets/text/Suras/6.txt": "b72927eb1f5ad389faa18e1313b73961",
"assets/assets/text/Suras/54.txt": "93e122591890869f57d539c2fcdcf20d",
"assets/assets/text/Suras/83.txt": "c76fb5d9f50c0db72ebeb310ef49d77a",
"assets/assets/text/Suras/97.txt": "115b21140b0c354affc57022a361f0a5",
"assets/assets/text/Suras/96.txt": "8d7c51a87b0940360ad865f1f25a4b6a",
"assets/assets/text/Suras/82.txt": "f5d52027fb39d3322f459ca0fa7bfde5",
"assets/assets/text/Suras/7.txt": "6b15faeb1dba90323710dc36562149b0",
"assets/assets/text/Suras/55.txt": "4eb92ccc51c08d5a334d9794001d301e",
"assets/assets/text/Suras/41.txt": "37e9114cb45db8335a79fd8c3f89e8e7",
"assets/assets/text/Suras/69.txt": "f3d1fe5f0760d3cc1a277525957c8cfa",
"assets/assets/text/Suras/45.txt": "8f8c56cc922d19a6b04f36f047f54541",
"assets/assets/text/Suras/51.txt": "cbfebdfa2614424a2c4e5ad64c5124cc",
"assets/assets/text/Suras/3.txt": "086b417bafb29caf6596d4bd66c95605",
"assets/assets/text/Suras/79.txt": "eb8197c0866f450c7b82e9bd9807556a",
"assets/assets/text/Suras/86.txt": "bd494b41369dcfaa305a2ae5742c4fd1",
"assets/assets/text/Suras/92.txt": "071e782bd17c0cefe0aede11b597cd46",
"assets/assets/text/Suras/93.txt": "52b5270135d0ad4c7994c5f9a77a74fe",
"assets/assets/text/Suras/87.txt": "997e1f3249c8875460882f25519351a7",
"assets/assets/text/Suras/78.txt": "537404bb12aafb9afd40a2d4b6b1ff11",
"assets/assets/text/Suras/50.txt": "9b08c1a3e78b0f496d317a9c27134178",
"assets/assets/text/Suras/2.txt": "9b8b9f9d3e0e84f1eec50b0ecd4b4962",
"assets/assets/text/Suras/44.txt": "99838f27496cc5dd555c0898a822c79c",
"assets/assets/text/Suras/52.txt": "504669350ab8aa355dda36ce0dc92b1e",
"assets/assets/text/Suras/46.txt": "91c9dca6aa1885cf91619783b54cc892",
"assets/assets/text/Suras/91.txt": "23195261409ea86c28d3a77f09ace832",
"assets/assets/text/Suras/85.txt": "7bd9c5060977fc1e0595dead53b26522",
"assets/assets/text/Suras/84.txt": "e8a1d07926b9511b2f70526061c1acba",
"assets/assets/text/Suras/90.txt": "2d00c172ffad40d6da3f646a4d68259e",
"assets/assets/text/Suras/47.txt": "1876cc6af58f860a51e2bf6f9e6fe815",
"assets/assets/text/Suras/1.txt": "ed96a2ef23ac7eb75d1d760bdec1e345",
"assets/assets/text/Suras/53.txt": "323fb86df48d6e59cfcbea2623635110",
"assets/assets/text/Suras/34.txt": "56b3830b4e4dfe93fa7a7e82d7b8a75a",
"assets/assets/text/Suras/20.txt": "ba32280f52350badca24d8c990a8012f",
"assets/assets/text/Suras/109.txt": "a586b913a9df3b4394b74850ecf728a2",
"assets/assets/text/Suras/108.txt": "bce96d90b9534a54c22fcc90e3b037f8",
"assets/assets/text/Suras/21.txt": "6fa44d0b0303a34faaecd8c9196cdfdf",
"assets/assets/text/Suras/35.txt": "2f9dc63f1b9083ff4abaca0678c4532e",
"assets/assets/text/Suras/23.txt": "4202d434cec84755224feeb31cc5bd23",
"assets/assets/text/Suras/37.txt": "868b81ea4195aaf1bd4e2df45e658831",
"assets/assets/text/Suras/36.txt": "94cdcf940fcfa55eb3a06f5f9e43e6da",
"assets/assets/text/Suras/22.txt": "de7f4e127bdd0e4de6b0c132a33ce37a",
"assets/assets/text/Suras/26.txt": "a54480d87fb3f16aa9e34fab1e90ce93",
"assets/assets/text/Suras/32.txt": "89114530e009402a2fa60d594824c092",
"assets/assets/text/Suras/33.txt": "2d065e528704b023bc2561d1b11dbb0d",
"assets/assets/text/Suras/27.txt": "265d024a796b9d5034b98b8c556bb4ef",
"assets/assets/text/Suras/31.txt": "e18ccdba85c2df3793c54d11231b5dbc",
"assets/assets/text/Suras/25.txt": "8e20dc40d62448b8c70423f1246ad1ea",
"assets/assets/text/Suras/19.txt": "e1baf9cc2123001adb707ff28e2a4341",
"assets/assets/text/Suras/18.txt": "1e926f60456ba2e8e84a8f5f3f64b17e",
"assets/assets/text/Suras/24.txt": "de5ede7d8218ad96c68b4c701add974d",
"assets/assets/text/Suras/30.txt": "6a5f081744d6ba4fca95b96a30e83a93",
"assets/assets/text/Hadeeth/h12.txt": "f4c38d84612f6ca70cefae742127cac4",
"assets/assets/text/Hadeeth/h13.txt": "b355df39121c03d867510960e3ce44dd",
"assets/assets/text/Hadeeth/h11.txt": "92849f644a4c2a70a72471b62b1f14c4",
"assets/assets/text/Hadeeth/h39.txt": "2db1448b9e44d8f8e656c5c136cdf706",
"assets/assets/text/Hadeeth/h38.txt": "bfc4cb673965e75a4df928aefe7eee21",
"assets/assets/text/Hadeeth/h10.txt": "de0add86f5a0ad9b151b248f38d5979e",
"assets/assets/text/Hadeeth/h28.txt": "5e2c034f436a1da6323f55cd51e87500",
"assets/assets/text/Hadeeth/h14.txt": "1868c592677026ab70f2fcad4541c232",
"assets/assets/text/Hadeeth/h15.txt": "ec162069f8033cb012a76de3f46c9352",
"assets/assets/text/Hadeeth/h29.txt": "65b0cb3226643d3b24c69862ad3653e6",
"assets/assets/text/Hadeeth/h8.txt": "2bb095d64a7b9b5c884c2df0fa5c54a9",
"assets/assets/text/Hadeeth/h17.txt": "40d6434335c900104c8e4a24059fe14e",
"assets/assets/text/Hadeeth/h16.txt": "a812afbc72b3139580310b5f2befbe6b",
"assets/assets/text/Hadeeth/h9.txt": "e31a40e65bf1e9778c1ec663d9763d94",
"assets/assets/text/Hadeeth/h48.txt": "979ad2f25da2ae6824962657968bb8f7",
"assets/assets/text/Hadeeth/h49.txt": "5bbf5808c73ff2c27608d5c334f42925",
"assets/assets/text/Hadeeth/h50.txt": "bc90f47a2dbfe137c576c17e18274ea9",
"assets/assets/text/Hadeeth/h44.txt": "eaa7c75b359ffa94e977afa6a5f3e28f",
"assets/assets/text/Hadeeth/h45.txt": "347decbb3310c9313de5e2b23395b020",
"assets/assets/text/Hadeeth/h47.txt": "ae645a8a45457072d7c218b34af4fe88",
"assets/assets/text/Hadeeth/h46.txt": "5a4b09efa84f80c4bf9eee09ce78a92d",
"assets/assets/text/Hadeeth/h42.txt": "8a1aef18f61982ce46c448c5af36afbc",
"assets/assets/text/Hadeeth/h43.txt": "487258153d22bceaca422c7491a8ff6c",
"assets/assets/text/Hadeeth/h41.txt": "81260dd4f21f8cc7aa3bb713df828a9f",
"assets/assets/text/Hadeeth/h40.txt": "15a5d36d7b15326ee60c22a7df0a4df8",
"assets/assets/text/Hadeeth/h33.txt": "d712ddd18439b4104d048c4d55fff5ee",
"assets/assets/text/Hadeeth/h4.txt": "2bda94cfe6a468595d25c94e75d77e23",
"assets/assets/text/Hadeeth/h27.txt": "b845830f37577756ef578c48b44c0dcc",
"assets/assets/text/Hadeeth/h26.txt": "58fad9eff7de36178a7580b6c7b4e531",
"assets/assets/text/Hadeeth/h5.txt": "1e11db811692bb2ceeb87ff275a26efa",
"assets/assets/text/Hadeeth/h32.txt": "d2dc1c7fa920c40239bc36920afdc17f",
"assets/assets/text/Hadeeth/h7.txt": "f9a3ea3994214e937a7f443c3254e2f3",
"assets/assets/text/Hadeeth/h24.txt": "71f8c9b7483baca45dbfa9166b6a0a6f",
"assets/assets/text/Hadeeth/h30.txt": "aee3d446a08f185ebd98793b0e0af3b8",
"assets/assets/text/Hadeeth/h18.txt": "a326b4ef2dd0174695f3b2e6addb5649",
"assets/assets/text/Hadeeth/h19.txt": "6a8016f061a18aba4f8e44207df250fb",
"assets/assets/text/Hadeeth/h31.txt": "2c117c21ff60e2bd0f6ecadb3115b5af",
"assets/assets/text/Hadeeth/h25.txt": "6167b2e5776902b8ede3d4dc8df5197b",
"assets/assets/text/Hadeeth/h6.txt": "cc62759eabfeaed35b23f44ddcacb695",
"assets/assets/text/Hadeeth/h2.txt": "bf65d57334c358b34078635f9f80638c",
"assets/assets/text/Hadeeth/h21.txt": "0b183b637b695caf2490340db1c43086",
"assets/assets/text/Hadeeth/h35.txt": "b762bd5937925a2b9e7f3de8b9f6ed6c",
"assets/assets/text/Hadeeth/h34.txt": "b14af980f4406b384699ad134d509fa2",
"assets/assets/text/Hadeeth/h20.txt": "dfb49a93a26b8cb13ba99255e8a6bebb",
"assets/assets/text/Hadeeth/h3.txt": "38bc22aa7fbfac889cc23202125eaf31",
"assets/assets/text/Hadeeth/h36.txt": "05f44ae4cabff56611e974ef8913be0d",
"assets/assets/text/Hadeeth/h1.txt": "b62057fee5d310846324d4a579966b7f",
"assets/assets/text/Hadeeth/h22.txt": "04c945fa47de9389147c8c319b2e844b",
"assets/assets/text/Hadeeth/h23.txt": "b028e6e35e35047225b5334e828fc845",
"assets/assets/text/Hadeeth/h37.txt": "157f5b6f79869a2c5e902dae7768c041",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "9fe690d47b904d72c7d020bd303adf16",
"canvaskit/canvaskit.js.symbols": "27361387bc24144b46a745f1afe92b50",
"canvaskit/skwasm.wasm": "1c93738510f202d9ff44d36a4760126b",
"canvaskit/chromium/canvaskit.js.symbols": "f7c5e5502d577306fb6d530b1864ff86",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.wasm": "c054c2c892172308ca5a0bd1d7a7754b",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.wasm": "a37f2b0af4995714de856e21e882325c"};
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
