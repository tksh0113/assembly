## assembly

アセンブリをNASM

### システムコールを実行する手順
- システムコール番号の指定
- システムコールに引数を渡す設定
- システムコールの実行

#### システムコール番号の指定
- raxレジスタにシステムコール番号を設定

  
[システムコール番号](https://github.com/torvalds/linux/blob/cd6c84d8f0cdc911df435bb075ba22ce3c605b07/arch/x86/entry/syscalls/syscall_64.tbl#L9-L357) 0がreadで1がwriteなど。

#### システムコールに引数を渡す設定
- rdiレジスタにファイルディスクリプタを設定
- rsiレジスタにバイト列の先頭アドレスを設定
- rdxレジスタに書き込むバイト数を設定

※ 渡すことができる引数は6つで rdi、rsi、rdx、r10、r9、r8

#### システムコールの実行
- syscall命令を実行

※ 64bit版であり32bit版では異なる。
