.class public Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;
.super Ljava/lang/Object;
.source "AxT9Core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KdbInput"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;)V
    .locals 0
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->this$0:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetKdbNum([S[S)S
    .locals 1
    .parameter "pwFirstKdbNum"
    .parameter "pwSecondKdbNum"

    .prologue
    .line 850
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetKdbNum([S[S)S

    move-result v0

    return v0
.end method

.method public GetPageNum([S[S)S
    .locals 1
    .parameter "pwFirstPageNum"
    .parameter "pwSecondPageNum"

    .prologue
    .line 858
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v0

    return v0
.end method

.method public GetStateBits()I
    .locals 1

    .prologue
    .line 954
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetStateBits()I

    move-result v0

    return v0
.end method

.method public Init(SSSS)S
    .locals 4
    .parameter "wFirstKdbNum"
    .parameter "wFirstPageNum"
    .parameter "wSecondKdbNum"
    .parameter "wSecondPageNum"

    .prologue
    .line 815
    const/4 v0, 0x0

    .line 817
    .local v0, wStatus:S
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9WordSymbInit(B)S

    move-result v0

    .line 819
    if-eqz v0, :cond_0

    .line 820
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Xt9core.ET9WordSymbInit:wStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 823
    :goto_0
    return v1

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_Init(SSSS)S

    move-result v1

    goto :goto_0
.end method

.method public ProcessKey(SB[S)S
    .locals 1
    .parameter "wKeyIndex"
    .parameter "bCurrIndexInList"
    .parameter "sFunctionKey"

    .prologue
    .line 928
    invoke-static {p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_ProcessKey(SB[S)S

    move-result v0

    return v0
.end method

.method public ReselectWord([SS)S
    .locals 1
    .parameter "psWord"
    .parameter "wWordLen"

    .prologue
    .line 942
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_ReselectWord([SS)S

    move-result v0

    return v0
.end method

.method public SetAmbigMode()S
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 866
    new-array v0, v3, [S

    .line 867
    .local v0, pwFirstPageNum:[S
    new-array v1, v3, [S

    .line 868
    .local v1, pwSecondPageNum:[S
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v2

    .line 869
    .local v2, sStatus:S
    if-eqz v2, :cond_0

    .line 870
    const-string v3, "AxT9IME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Xt9core.ET9KDB_GetPageNum . sStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_0
    aget-short v3, v0, v6

    aget-short v4, v1, v6

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_SetAmbigMode(SS)S

    move-result v3

    return v3
.end method

.method public SetKdbNum(SSSS)S
    .locals 5
    .parameter "wFirstKdbNum"
    .parameter "wFirstPageNum"
    .parameter "wSecondKdbNum"
    .parameter "wSecondPageNum"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 838
    new-array v1, v3, [S

    .line 839
    .local v1, wCurrentFirstPage:[S
    new-array v2, v3, [S

    .line 840
    .local v2, wCurrentSecondPage:[S
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->GetPageNum([S[S)S

    .line 842
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_SetKdbNum(SSSS)S

    move-result v0

    .local v0, sStatus:S
    if-nez v0, :cond_0

    .line 844
    aget-short v3, v1, v4

    aget-short v4, v2, v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetPageNum(SS)S

    .line 846
    :cond_0
    return v0
.end method

.method public SetMultiTapMode()S
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 877
    new-array v0, v3, [S

    .line 878
    .local v0, pwFirstPageNum:[S
    new-array v1, v3, [S

    .line 879
    .local v1, pwSecondPageNum:[S
    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetPageNum([S[S)S

    move-result v2

    .line 880
    .local v2, sStatus:S
    if-eqz v2, :cond_0

    .line 881
    const-string v3, "AxT9IME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Xt9core.ET9KDB_GetPageNum . sStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_0
    aget-short v3, v0, v6

    aget-short v4, v1, v6

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_SetMultiTapMode(SS)S

    move-result v3

    return v3
.end method

.method public SetPageNum(SS)S
    .locals 1
    .parameter "wFirstPageNum"
    .parameter "wSecondPageNum"

    .prologue
    .line 854
    invoke-static {p1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_SetPageNum(SS)S

    move-result v0

    return v0
.end method

.method public SetRegionalCorrection(Z)S
    .locals 1
    .parameter "fSet"

    .prologue
    .line 917
    if-eqz p1, :cond_0

    .line 918
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_SetRegionalMode()S

    move-result v0

    .line 920
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_SetDiscreteMode()S

    move-result v0

    goto :goto_0
.end method

.method public SetShiftState(B)S
    .locals 2
    .parameter "bShiftState"

    .prologue
    .line 889
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 890
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9SetCapsLock()S

    move-result v0

    .line 896
    .local v0, sStatus:S
    :goto_0
    return v0

    .line 891
    .end local v0           #sStatus:S
    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 892
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9SetShift()S

    move-result v0

    .restart local v0       #sStatus:S
    goto :goto_0

    .line 894
    .end local v0           #sStatus:S
    :cond_1
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9SetUnShift()S

    move-result v0

    .restart local v0       #sStatus:S
    goto :goto_0
.end method

.method public TimeOut()S
    .locals 1

    .prologue
    .line 862
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_TimeOut()S

    move-result v0

    return v0
.end method

.method public Validate(S)S
    .locals 1
    .parameter "wKdbNum"

    .prologue
    .line 828
    invoke-static {p1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_Validate(S)S

    move-result v0

    .line 829
    .local v0, eStatus:S
    return v0
.end method

.method public getMultiTapSequence([SS[S[B)S
    .locals 1
    .parameter "psMultiTapSequenceBuf"
    .parameter "wBufSize"
    .parameter "pwTotalSymbs"
    .parameter "pbCurrentSelSymb"

    .prologue
    .line 949
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    move-result v0

    return v0
.end method
