.class public Lcom/android/server/sec/InternalClipboardExService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/InternalClipboardExService$1;,
        Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;
    }
.end annotation


# instance fields
.field private mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

.field private mClipboardFormatList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardFormatListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardManager:Landroid/text/ClipboardManager;

.field private mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mContext:Landroid/content/Context;

.field private mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    .line 36
    iput-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    .line 39
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 42
    iput-object v2, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 44
    new-instance v0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {v0, p0, v2}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/InternalClipboardExService$1;)V

    iput-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    .line 167
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    .line 168
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HTMLFlagment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method private AddCheckPossible(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 6
    .parameter "data"

    .prologue
    .line 335
    const/4 v1, 0x0

    .line 336
    .local v1, Result:Z
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .line 338
    .local v3, iCount:I
    if-gez v3, :cond_0

    move v2, v1

    .line 348
    .end local v1           #Result:Z
    .local v2, Result:I
    :goto_0
    return v2

    .line 341
    .end local v2           #Result:I
    .restart local v1       #Result:Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 343
    .local v0, LastData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    if-eq v4, v5, :cond_1

    move v2, v1

    .line 344
    .restart local v2       #Result:I
    goto :goto_0

    .line 346
    .end local v2           #Result:I
    :cond_1
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v2, v1

    .line 348
    .restart local v2       #Result:I
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 265
    .local v0, Result:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    return v0

    .line 264
    .end local v0           #Result:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 7
    .parameter "format"

    .prologue
    const/4 v6, 0x1

    .line 298
    monitor-enter p0

    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, Result:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    .line 302
    .local v4, iClipboardDataCount:I
    if-ge v4, v6, :cond_2

    .line 305
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardManager:Landroid/text/ClipboardManager;

    if-nez v5, :cond_0

    .line 306
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/ClipboardManager;

    iput-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 309
    :cond_0
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardManager:Landroid/text/ClipboardManager;

    if-eqz v5, :cond_1

    .line 310
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .end local v1           #Result:Landroid/sec/clipboard/data/ClipboardData;
    .local v2, Result:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_1
    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v5, v0

    iget-object v6, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v6}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 317
    .end local v2           #Result:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v1       #Result:Landroid/sec/clipboard/data/ClipboardData;
    :goto_0
    :try_start_2
    monitor-exit p0

    move-object v2, v1

    .line 330
    .end local v1           #Result:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2       #Result:Landroid/sec/clipboard/data/ClipboardData;
    :goto_1
    return-object v2

    .line 314
    .end local v2           #Result:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v1       #Result:Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    const-string v5, "ClipboardServiceEx"

    const-string v6, "The Clipboard services has failed to create."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    .end local v4           #iClipboardDataCount:I
    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 320
    .restart local v4       #iClipboardDataCount:I
    :cond_2
    const/4 v3, 0x0

    .line 321
    .local v3, cbData:Landroid/sec/clipboard/data/ClipboardData;
    :try_start_3
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    sub-int v6, v4, v6

    invoke-virtual {v5, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .line 324
    if-eqz v3, :cond_3

    .line 325
    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    if-eq v5, p1, :cond_4

    .line 326
    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 330
    :cond_3
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v1

    .end local v1           #Result:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_1

    .line 328
    .end local v2           #Result:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v1       #Result:Landroid/sec/clipboard/data/ClipboardData;
    :cond_4
    move-object v1, v3

    goto :goto_3

    .line 331
    .end local v1           #Result:Landroid/sec/clipboard/data/ClipboardData;
    .end local v3           #cbData:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2       #Result:Landroid/sec/clipboard/data/ClipboardData;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #Result:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v1       #Result:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_2
.end method

.method public GetClipboardFormatName(I)Ljava/lang/String;
    .locals 3
    .parameter "format"

    .prologue
    .line 242
    const-string v0, ""

    .line 244
    .local v0, Result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #Result:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 247
    .restart local v0       #Result:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V
    .locals 4
    .parameter "format"
    .parameter "data"

    .prologue
    .line 184
    iget-object v3, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/IClipboardFormatListener;

    .line 186
    .local v0, Item:Landroid/sec/clipboard/IClipboardFormatListener;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/sec/clipboard/IClipboardFormatListener;->onNewClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v0           #Item:Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .locals 2
    .parameter "iRegInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 433
    monitor-enter p0

    .line 434
    :try_start_0
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 436
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    .line 438
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-interface {v0, v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    .line 443
    :goto_0
    monitor-exit p0

    .line 444
    return-void

    .line 441
    :cond_0
    const-string v0, "ClipboardServiceEx"

    const-string v1, "RegistClipboardWorkingFormUiInterface is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public RegisterClipboardFormat(Ljava/lang/String;)I
    .locals 7
    .parameter "formatName"

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 217
    .local v1, Result:I
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 218
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, 0x2

    .line 219
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 222
    .local v0, Keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 223
    .local v3, iVal:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 224
    .local v4, sValue:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 225
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 226
    goto :goto_0
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 282
    .local v0, Result:Z
    if-eqz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 287
    :goto_0
    return v0

    .line 285
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 11
    .parameter "format"
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    const-string v7, "ClipboardServiceEx"

    .line 359
    monitor-enter p0

    .line 360
    :try_start_0
    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SetClipboardData - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v2, 0x0

    .line 364
    .local v2, Result:Z
    const/4 v1, 0x0

    .line 367
    .local v1, Res:Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {p0, p2}, Lcom/android/server/sec/InternalClipboardExService;->AddCheckPossible(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 368
    const-string v7, "ClipboardServiceEx"

    const-string v8, "The data are the same."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    monitor-exit p0

    move v3, v2

    .line 415
    .end local v2           #Result:Z
    .local v3, Result:I
    :goto_0
    return v3

    .line 372
    .end local v3           #Result:I
    .restart local v2       #Result:Z
    :cond_0
    invoke-virtual {p2, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    .line 382
    .local v4, addItem:Landroid/sec/clipboard/data/ClipboardData;
    iget-object v7, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->addData(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 383
    iget-object v7, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v8, p0, Lcom/android/server/sec/InternalClipboardExService;->mDataList:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 384
    if-eqz v1, :cond_4

    move v2, v10

    .line 389
    :goto_1
    iget-object v7, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    if-eqz v2, :cond_1

    .line 391
    :try_start_1
    iget-object v7, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardWorkingFormUiInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v7}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    :cond_1
    :goto_2
    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    .line 399
    :try_start_2
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 400
    iget-object v7, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardManager:Landroid/text/ClipboardManager;

    if-nez v7, :cond_2

    .line 401
    iget-object v7, p0, Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;

    const-string v8, "clipboard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/ClipboardManager;

    iput-object v7, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 404
    :cond_2
    iget-object v7, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardManager:Landroid/text/ClipboardManager;

    if-eqz v7, :cond_6

    .line 405
    move-object v0, p2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v6, v0

    .line 406
    .local v6, txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v7, p0, Lcom/android/server/sec/InternalClipboardExService;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 407
    const-string v7, "ClipboardServiceEx"

    const-string v8, "String was copied."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v6           #txt:Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_3
    :goto_3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/sec/InternalClipboardExService;->ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 415
    monitor-exit p0

    move v3, v2

    .restart local v3       #Result:I
    goto :goto_0

    .line 384
    .end local v3           #Result:I
    :cond_4
    const/4 v7, 0x0

    move v2, v7

    goto :goto_1

    .line 386
    :cond_5
    const-string v7, "ClipboardServiceEx"

    const-string v8, "Failed to add data."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 416
    .end local v1           #Res:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #Result:Z
    .end local v4           #addItem:Landroid/sec/clipboard/data/ClipboardData;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 393
    .restart local v1       #Res:Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2       #Result:Z
    .restart local v4       #addItem:Landroid/sec/clipboard/data/ClipboardData;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 394
    .local v5, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "ClipboardServiceEx"

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 410
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_6
    const-string v7, "ClipboardServiceEx"

    const-string v8, "The Clipboard services has failed to create."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method
