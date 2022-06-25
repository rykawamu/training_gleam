# Training gleam

gleamの練習用

## dependenciesの追加について

`gleam run`した際に、以下のようなエラーメッセージが出る場合、必要なモジュールがない。

```cmd
$gleam run
  Compiling malti_threaded_hello_world
error: Unknown module
  ┌─ ./src/malti_threaded_hello_world.gleam:5:8
  │
5 │ import gleam/otp/process
  │        ^^^^^^^^^^^^^^^^^ Did you mean `list`?

No module has been found with the name `gleam/otp/process`.
```

この場合、以下のコマンド例のように、モジュールを`gleam add`コマンドで追加すると良い

```cmd
$gleam add gleam_otp
  Resolving versions
Downloading packages
 Downloaded 2 packages in 1.15s
      Added gleam_otp v0.4.0
```

その後、`gleam run`してエラーが発生しないことを確認しておく。

### 余談

`gleam_otp`については、以下を参照。

- <https://github.com/gleam-lang/otp/>
