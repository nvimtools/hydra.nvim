# Changelog

## [1.0.4](https://github.com/nvimtools/hydra.nvim/compare/v1.0.3...v1.0.4) (2025-05-03)


### Bug Fixes

* allow layers to have names and trigger status line active function ([#65](https://github.com/nvimtools/hydra.nvim/issues/65)) ([8c4a9f6](https://github.com/nvimtools/hydra.nvim/commit/8c4a9f621ec7cdc30411a1f3b6d5eebb12b469dc))

## [1.0.3](https://github.com/nvimtools/hydra.nvim/compare/v1.0.2...v1.0.3) (2025-03-28)


### Bug Fixes

* tbl_deep_extend error in 0.11 ([#47](https://github.com/nvimtools/hydra.nvim/issues/47)) ([394744a](https://github.com/nvimtools/hydra.nvim/commit/394744ac7a5e3449044e368006f49e823c2d6908))
* tbl_deep_extend error in other places ([#62](https://github.com/nvimtools/hydra.nvim/issues/62)) ([f4ad21b](https://github.com/nvimtools/hydra.nvim/commit/f4ad21b530f4bd4c561e45bec4b53c07c8082dc3))

## [1.0.2](https://github.com/nvimtools/hydra.nvim/compare/v1.0.1...v1.0.2) (2024-03-14)


### Bug Fixes

* check `config.hint` first ([#31](https://github.com/nvimtools/hydra.nvim/issues/31)) ([1ce9ee3](https://github.com/nvimtools/hydra.nvim/commit/1ce9ee35d2b869241091c0c7496c3cf0f3be981e))

## [1.0.1](https://github.com/nvimtools/hydra.nvim/compare/v1.0.0...v1.0.1) (2024-01-21)


### Bug Fixes

* remove print statments ([#26](https://github.com/nvimtools/hydra.nvim/issues/26)) ([93e121b](https://github.com/nvimtools/hydra.nvim/commit/93e121b4098e2cc59975b4fa0951ebab34e82e9f))

## 1.0.0 (2024-01-11)


### ⚠ BREAKING CHANGES

* Megre "keymap-layer.nvim" into "hydra.nvim"
* Rename config.hint.functions -> config.hint.funcs

### merge

* Megre "keymap-layer.nvim" into "hydra.nvim" ([3ce9336](https://github.com/nvimtools/hydra.nvim/commit/3ce9336d9a57003bf2614e05520abe3fde87d0a3))


### Features

* Add .gitignore ([b763432](https://github.com/nvimtools/hydra.nvim/commit/b763432e6f0b8f45313fda5733c25f33b939c82a))
* Add 'mode' option for pink hydra heads ([bc21171](https://github.com/nvimtools/hydra.nvim/commit/bc2117176e1d00ce8e834ab9bd29ab04b7e1cd9f))
* Add `exit = 'after'` flag for all hydras ([f8374bd](https://github.com/nvimtools/hydra.nvim/commit/f8374bdf148a6d2758fca86b275027f6dd8822f9))
* Add `HydraBorder` highlight group ([#50](https://github.com/nvimtools/hydra.nvim/issues/50)) ([3134356](https://github.com/nvimtools/hydra.nvim/commit/31343564df10b11b5f52f3e311ba706d70bf813e))
* Add `keymap_util` module ([eee57bf](https://github.com/nvimtools/hydra.nvim/commit/eee57bfb06b41e4251a5f2372615c5d10e93c9af))
* Add `offset` option ([3cc745d](https://github.com/nvimtools/hydra.nvim/commit/3cc745df051bb03c91e5309ddbecc060f0087e1a))
* Add `on_key` option ([5665d8c](https://github.com/nvimtools/hydra.nvim/commit/5665d8c0fb6f6e7b1058c719ff5dca09b25a1c1e))
* Add built-in hint functions for vim options ([640dbe8](https://github.com/nvimtools/hydra.nvim/commit/640dbe821cdd3b4211b1627646a9f61604f6b4e4))
* Add exit = "after" option ([173cba7](https://github.com/nvimtools/hydra.nvim/commit/173cba7ca045b66089a3aead2ce7116c06c24429))
* Add Hydra:activate() method ([a82bc53](https://github.com/nvimtools/hydra.nvim/commit/a82bc53873c77adce6549a5434e429eda47e4447))
* Add meta-accessors ([4111288](https://github.com/nvimtools/hydra.nvim/commit/411128895c0d29cc8b4a92e1da2d040fcc1e3dbc))
* Add new "api-wrappers" module ([44f6d29](https://github.com/nvimtools/hydra.nvim/commit/44f6d29bd4892d66f003557052ef12421ca8e551))
* Add option to disable hint generation for head ([1e0af4f](https://github.com/nvimtools/hydra.nvim/commit/1e0af4f806f6c79f3c6a52b2e0a85a9f1c376437))
* Add pink hyda support ([64e625d](https://github.com/nvimtools/hydra.nvim/commit/64e625df09080471baeb08db88f83522e82c9814))
* Add self:_debug() method ([c5f394f](https://github.com/nvimtools/hydra.nvim/commit/c5f394f42b9eacf351a8345f757c69eaa724e773))
* Add show hint in statusline option ([632dc7f](https://github.com/nvimtools/hydra.nvim/commit/632dc7f999716e180a5efba574f677bfe4931b47))
* Allow choose hint position ([6982fba](https://github.com/nvimtools/hydra.nvim/commit/6982fba84939b6c7d32c2b54244c711a996aac89))
* Auto generate blue &lt;Esc&gt; head if none found ([ba4998d](https://github.com/nvimtools/hydra.nvim/commit/ba4998dca8d6dab5cd1f28a06872cb991df16014))
* custom status line hints ([#21](https://github.com/nvimtools/hydra.nvim/issues/21)) ([56cf39c](https://github.com/nvimtools/hydra.nvim/commit/56cf39cdf81db712c242f081306de35bb6fc34ec))
* default configurations ([#19](https://github.com/nvimtools/hydra.nvim/issues/19)) ([4507a00](https://github.com/nvimtools/hydra.nvim/commit/4507a00103e8a5e0c18d2b64a3fbacb369c2b74d))
* Executable code inside hint ([ca82cf5](https://github.com/nvimtools/hydra.nvim/commit/ca82cf517cc7135cc0eb29530b22a4546f7a5e13))
* **hint:** Add `hint.show_name` option ([75d4ad4](https://github.com/nvimtools/hydra.nvim/commit/75d4ad400f34b2fe0e231eb7845d950ba5267d07))
* **hint:** Add new `cmdline` hint ([0d00edd](https://github.com/nvimtools/hydra.nvim/commit/0d00edd1b18aff52ba92975d4a08ad60d7ad8016))
* **hint:** Take into account `offset` option in `auto` window ([6a07048](https://github.com/nvimtools/hydra.nvim/commit/6a07048c5d532707855675a0773a102e8b56c25c))
* **hydra:** Add new `cmdline` hint type ([1233c51](https://github.com/nvimtools/hydra.nvim/commit/1233c51ca462a1281b7c50422218922655033b09))
* **hydra:** Emit pressed keys leaving multikey head on the halfway ([1ec4b18](https://github.com/nvimtools/hydra.nvim/commit/1ec4b18049a3736ad8e872b72574ad0a70a10006))
* Make `body` optional ([3c455f7](https://github.com/nvimtools/hydra.nvim/commit/3c455f7cc8eccec91f548ce46bbce9b79b08586d))
* Make `exit = 'after'` behavior the default ([3454cfa](https://github.com/nvimtools/hydra.nvim/commit/3454cfa9bc97aa501c9a497c53fa6d0c97a02d6e))
* New 'buffer' option ([c9c7a85](https://github.com/nvimtools/hydra.nvim/commit/c9c7a85becd737113d7a15f8188a1092f9641255))
* new `exit_before` option ([420aaf5](https://github.com/nvimtools/hydra.nvim/commit/420aaf5af601e3cb12796970cd8a183b886f36db))
* new body 'desc' option ([5c07f9e](https://github.com/nvimtools/hydra.nvim/commit/5c07f9e1f1507e202faf98fc62c9e7c17510ff58)), closes [#57](https://github.com/nvimtools/hydra.nvim/issues/57)
* set any nvim_open_win option on hint window ([#6](https://github.com/nvimtools/hydra.nvim/issues/6)) ([893708f](https://github.com/nvimtools/hydra.nvim/commit/893708fa4b823026846bb4004df6b5a1f0fe6217))


### Bug Fixes

* [#10](https://github.com/nvimtools/hydra.nvim/issues/10) ([249a19a](https://github.com/nvimtools/hydra.nvim/commit/249a19a4c95b9d0602918623a476196bf6956d5f))
* [#8](https://github.com/nvimtools/hydra.nvim/issues/8) ([68f3296](https://github.com/nvimtools/hydra.nvim/commit/68f3296c7c1c9fb4abbe892d5191883082b74369))
* Avoid grabbing invalid highlight keys ([#18](https://github.com/nvimtools/hydra.nvim/issues/18)) ([ababa9d](https://github.com/nvimtools/hydra.nvim/commit/ababa9d412a20d9a6479167fe15508b8099fc91d))
* Bug on exiting previous hydra while activating new ([862557e](https://github.com/nvimtools/hydra.nvim/commit/862557e6ffb9ec40c941177e93b1d2685c6ade93))
* Bug with heads 'mode' option handling ([af602f3](https://github.com/nvimtools/hydra.nvim/commit/af602f38d853c2988196f370da0be72ad7a105f4))
* Correctly calculate width of multibyte characters ([a760251](https://github.com/nvimtools/hydra.nvim/commit/a760251a90d022a412458663fbd3591fdb38d662))
* Disable wrap for hint window ([81a2ab5](https://github.com/nvimtools/hydra.nvim/commit/81a2ab542c020b46c25dc4ff1ebfa4d191e2b286))
* Exit method was renamed ([e407015](https://github.com/nvimtools/hydra.nvim/commit/e407015d77e339b4c7d298f9e9dd50b4a934aa07))
* Fix bug with multikey heads ([e44ad01](https://github.com/nvimtools/hydra.nvim/commit/e44ad01cb4138234e509d8bcae5e96fdfacf37b0))
* Get out from loop code that shouldn't be looped ([5168e3c](https://github.com/nvimtools/hydra.nvim/commit/5168e3c650f86b12dd473866da0cbadcc94ecc51))
* **health:** remove deprecated API warnings ([3adb342](https://github.com/nvimtools/hydra.nvim/commit/3adb342b610654f6719c77bd319765ccbe0184ad))
* **highlight:** Add the `default` property to `HidraHint` group ([d95910e](https://github.com/nvimtools/hydra.nvim/commit/d95910ea18d4f0be838de958de9d14ee42e0d2f5))
* **hint.statusline:** outdated path in require function ([8a8130a](https://github.com/nvimtools/hydra.nvim/commit/8a8130af17b154d3b37669204bdae5ce4b991159))
* **hint.windows:** Empty hints after deleting all buffers. [#41](https://github.com/nvimtools/hydra.nvim/issues/41) ([a815ce7](https://github.com/nvimtools/hydra.nvim/commit/a815ce78805a5667e81cdb53d2bc7e0371042a7a))
* **hint.window:** Update hint window position on VimResized ([96119af](https://github.com/nvimtools/hydra.nvim/commit/96119af8ebaf0f55567108638c662784d612eb97))
* **hint:** Correctly handle resizing Neovim ([b882135](https://github.com/nvimtools/hydra.nvim/commit/b882135a72243211a93106bd8e3edd835d767e6a))
* **hint:** Not handling `desc = false` option ([c70facc](https://github.com/nvimtools/hydra.nvim/commit/c70facc87141f64162aca519acfd18aa85e06329))
* **hint:** Reopen window on tab change ([034a0bb](https://github.com/nvimtools/hydra.nvim/commit/034a0bbbb0e1215b98ee114cfc0f367241ae49ef))
* **hint:** Update position on change `cmdheight` ([da0c2e5](https://github.com/nvimtools/hydra.nvim/commit/da0c2e515133c4b8a9ba3ad5308db596610329bd))
* **Hydra:** [#19](https://github.com/nvimtools/hydra.nvim/issues/19) and [#45](https://github.com/nvimtools/hydra.nvim/issues/45) ([58e7e7a](https://github.com/nvimtools/hydra.nvim/commit/58e7e7ae1c9cc8d587fb6beda4e90a8147069a30))
* **hydra:** Bug with `vim.tbl_deep_extend` function ([67377e6](https://github.com/nvimtools/hydra.nvim/commit/67377e69c7c9f5b4e5d122a0f36236baba1a8881))
* **hydra:** not pass heads `expr` flag to layer ([7c67353](https://github.com/nvimtools/hydra.nvim/commit/7c67353cbbf0f1d3e3abb4fa2733df1e23bcea93))
* **hydra:** Telescope enters in normal mode on opening ([fa814c4](https://github.com/nvimtools/hydra.nvim/commit/fa814c478a69d0bc05c3e2cdda34336b7484ea05))
* **hydra:** Wrong request for stored option value ([64434db](https://github.com/nvimtools/hydra.nvim/commit/64434db0dc8a3dce9b30fef78aef267fceff4472))
* Improve handle heads with `desc = false` ([bfc59f0](https://github.com/nvimtools/hydra.nvim/commit/bfc59f068d911023de3524fe7421107ec64f9664))
* Layer has renamed method: enter -&gt; activate ([115744e](https://github.com/nvimtools/hydra.nvim/commit/115744e8b2c74c0a4dd265c25359b33832fece57))
* **layer:** Add check the existe of the table ([d58a992](https://github.com/nvimtools/hydra.nvim/commit/d58a992ae52fe19bc77e3fdf304a2c5e1b74e187))
* **layer:** Exit previous active layer ([9e45b51](https://github.com/nvimtools/hydra.nvim/commit/9e45b51d41ab4a528f91d954c0e481b24d122647))
* **layer:** use Alt key chords ([23e81bf](https://github.com/nvimtools/hydra.nvim/commit/23e81bf774cfd00c0b5309a4a223b0b908732c56)), closes [#51](https://github.com/nvimtools/hydra.nvim/issues/51)
* **meta-accessor:** Save only initial value into `original` table ([2edce40](https://github.com/nvimtools/hydra.nvim/commit/2edce40e7fc5c7cdb9fd009d1a14d6e5316b3232))
* Not pass `debug` option to Layer ([3b4c200](https://github.com/nvimtools/hydra.nvim/commit/3b4c2002a025d111158b7801b7a84bf52531922f))
* pink hydra with no body throws an error ([#60](https://github.com/nvimtools/hydra.nvim/issues/60)) ([7e2aa29](https://github.com/nvimtools/hydra.nvim/commit/7e2aa29f88d534371c6b0263d3abbfac7c2376ce))
* Remove redundant print() ([ba20724](https://github.com/nvimtools/hydra.nvim/commit/ba20724a07babc9feec8f0095b24d16c84a5e920))
* Setup pink hydra when it has no body ([805bebd](https://github.com/nvimtools/hydra.nvim/commit/805bebdbc2307cdee799665be557812d9af5a120))
* Wrong hint statusline type ([6be74b4](https://github.com/nvimtools/hydra.nvim/commit/6be74b419ea9fd615f79a0445bd6c96dc68229fa))


### Performance Improvements

* **lib/highlight:** Code improve ([c22a75d](https://github.com/nvimtools/hydra.nvim/commit/c22a75d6b035cf06a80aad25f36ee099e779b63b))


### Code Refactoring

* Rename config.hint.functions -&gt; config.hint.funcs ([045a091](https://github.com/nvimtools/hydra.nvim/commit/045a091a022feae74b9edfacb808e49dfbf6f8d5))
