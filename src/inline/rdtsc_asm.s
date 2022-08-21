# 8.3
# IA-32アーキテクチャのCPUが持つRDTSCPという特殊命令を実行し、CPUの現在のクロックカウンタを取得する
# CPUのリセット時にゼロに初期化され、CPUのクロックに合わせて1つずつ増加する
# CPUが複数のコアを持つ場合、それぞれのコアごとにTSCを持つ。
# RDTSCPはこの命令を実行したCPUコアのTSCを取得できる
# TSCは64ビットカウンタで、TSCの上位32ビットがレジスタEDX, 下位がレジスタEAXに保存される

    .global rdtsc # シンボルsum_asmを外部から参照可能に
    .text # .textセクション開始

rdtsc:
    rdtscp # CPUのTSCを取得すrう(EDX:EAXに格納される)
    ret # 下位32ビットを返り値として返す
