.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;
.super Landroid/app/Activity;
.source "AxT9optionsAutoSubsAdd.java"


# instance fields
.field private ASDB_BUF:[B

.field private final ASDB_SIZE:I

.field private final ASDB_WORD_SIZE:I

.field private CurrentMode:Ljava/lang/String;

.field private final DEBUG:Z

.field private EdittingShortcut:Ljava/lang/String;

.field private EdittingSubstitution:Ljava/lang/String;

.field private final INFO:Z

.field private final TAG:Ljava/lang/String;

.field private mCancelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mDoneSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

.field private mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

.field private mEditable_addingShortcut:Landroid/text/Editable;

.field private mEditable_addingSubstitution:Landroid/text/Editable;

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field mRightBottomListener:Landroid/view/View$OnClickListener;

.field private mSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mTextView:Landroid/widget/TextView;

.field private final ms_ASDB_FILE_NAME:Ljava/lang/String;

.field onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

.field private final useTwWidget:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->TAG:Ljava/lang/String;

    .line 57
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->DEBUG:Z

    .line 58
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->INFO:Z

    .line 66
    const-string v0, ""

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->CurrentMode:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingSubstitution:Ljava/lang/String;

    .line 77
    const/16 v0, 0x40

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ASDB_WORD_SIZE:I

    .line 78
    const/16 v0, 0x2800

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ASDB_SIZE:I

    .line 79
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getASDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ASDB_BUF:[B

    .line 80
    const-string v0, "xT9ASdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ms_ASDB_FILE_NAME:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->useTwWidget:Z

    .line 83
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 84
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mDoneSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 85
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mCancelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 248
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 278
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mRightBottomListener:Landroid/view/View$OnClickListener;

    .line 422
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingSubstitution:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Landroid/text/Editable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingShortcut:Landroid/text/Editable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Landroid/text/Editable;)Landroid/text/Editable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingShortcut:Landroid/text/Editable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Landroid/text/Editable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingSubstitution:Landroid/text/Editable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Landroid/text/Editable;)Landroid/text/Editable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingSubstitution:Landroid/text/Editable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->deleteEntry(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->addEntrytoAutoSubs(Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->writeDBdataToFile()V

    return-void
.end method

.method private addEntrytoAutoSubs(Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;)V
    .locals 9
    .parameter "entryset"

    .prologue
    .line 292
    const/4 v5, 0x1

    new-array v2, v5, [S

    .line 293
    .local v2, subslength:[S
    const/16 v5, 0x40

    new-array v3, v5, [S

    .line 294
    .local v3, substitutionbuf:[S
    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-short v6, v6

    array-length v7, v3

    int-to-short v7, v7

    invoke-static {v5, v6, v3, v7, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBFindEntry([SS[SS[S)S

    move-result v1

    .line 295
    .local v1, errorcode:S
    if-nez v1, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 297
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f0a0095

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 298
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 305
    .end local v0           #context:Landroid/content/Context;
    .end local v4           #toast:Landroid/widget/Toast;
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getSubstitution()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    int-to-short v7, v7

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getSubstitution()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    int-to-short v8, v8

    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBAddEntry([S[SSS)S

    move-result v1

    .line 301
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private convertShortArrtoString([SS)Ljava/lang/String;
    .locals 3
    .parameter "shortarr"
    .parameter "length"

    .prologue
    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v1, string:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 337
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 338
    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .locals 3
    .parameter "string"

    .prologue
    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 325
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 326
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    return-object v1
.end method

.method private deleteEntry(Ljava/lang/String;)V
    .locals 3
    .parameter "shortcut"

    .prologue
    .line 311
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v0

    .line 313
    .local v0, errorcode:S
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v0

    .line 315
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    .line 317
    return-void
.end method

.method private readDBdataFromFile()V
    .locals 10

    .prologue
    .line 386
    const-string v0, ""

    .line 390
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9ASdbData.dat"

    .line 392
    const-string v8, "xT9DB"

    const/4 v9, 0x3

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 393
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 394
    .local v6, mfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 395
    const/4 v4, 0x0

    .line 396
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 398
    .local v7, returnOfRead:I
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 399
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ASDB_BUF:[B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v7

    .line 406
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    .line 420
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_1
    :goto_0
    return-void

    .line 407
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catch_0
    move-exception v2

    .line 408
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 410
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .line 400
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 401
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File was removed durning test"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 406
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 407
    :catch_2
    move-exception v2

    .line 408
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 402
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    move-object v2, v8

    .line 403
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 406
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 407
    :catch_4
    move-exception v2

    .line 408
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 405
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 406
    :goto_3
    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 409
    :cond_2
    :goto_4
    throw v8

    .line 407
    :catch_5
    move-exception v2

    .line 408
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 414
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 415
    :catch_6
    move-exception v3

    .line 416
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 405
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_3

    .line 402
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v2, v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 400
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    move-object v2, v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private setButtonEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mDoneSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mDoneSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 225
    return-void
.end method

.method private setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "softKeyItem"
    .parameter "textColor"
    .parameter "gravity"
    .parameter "listener"

    .prologue
    .line 238
    if-eqz p1, :cond_1

    .line 239
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 240
    .local v1, child:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 241
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    check-cast v1, Landroid/widget/TextView;

    .end local v1           #child:Landroid/view/View;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 244
    :cond_0
    invoke-virtual {p1, p4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :cond_1
    return-void
.end method

.method private writeDBdataToFile()V
    .locals 10

    .prologue
    .line 345
    const-string v0, ""

    .line 349
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9ASdbData.dat"

    .line 351
    const-string v7, "xT9DB"

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 352
    .local v1, dir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    .local v4, mfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 355
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 361
    const/4 v5, 0x0

    .line 363
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 364
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ASDB_BUF:[B

    const/4 v8, 0x0

    const/16 v9, 0x2800

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 370
    if-eqz v6, :cond_3

    .line 372
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v6

    .line 381
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 356
    :catch_0
    move-exception v3

    .line 357
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 373
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 374
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 375
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 365
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 366
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    if-eqz v5, :cond_1

    .line 372
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 373
    :catch_3
    move-exception v2

    .line 374
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 367
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    move-object v2, v7

    .line 368
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 370
    if-eqz v5, :cond_1

    .line 372
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 373
    :catch_5
    move-exception v2

    .line 374
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 370
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_2

    .line 372
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 375
    :cond_2
    :goto_5
    throw v7

    .line 373
    :catch_6
    move-exception v2

    .line 374
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 370
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 367
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v7

    move-object v2, v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 365
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v7

    move-object v2, v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_3
    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/high16 v11, 0x100

    const/16 v10, 0x11

    const/high16 v8, -0x100

    const/4 v9, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, AUTOSUBS_TITLE:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CurrentMode"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->CurrentMode:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "shortcut"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->CurrentMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    const v6, 0x7f030011

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 112
    sget-boolean v6, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v6, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->readDBdataFromFile()V

    .line 116
    :cond_0
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ASDB_BUF:[B

    const/16 v7, 0x2800

    invoke-static {v6, v7}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v2

    .line 117
    .local v2, errorcode:S
    if-eqz v2, :cond_1

    .line 121
    :cond_1
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v2

    .line 122
    if-eqz v2, :cond_2

    .line 125
    :cond_2
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v2

    .line 126
    if-eqz v2, :cond_3

    .line 130
    :cond_3
    const v6, 0x7f070038

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    .line 131
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6, v11}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setInputType(I)V

    .line 132
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setPrivateCommandListener(Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;)V

    .line 133
    const v6, 0x7f07003c

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    .line 134
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6, v11}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setInputType(I)V

    .line 135
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setPrivateCommandListener(Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;)V

    .line 136
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6, v9}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setVisibility(I)V

    .line 137
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->requestFocus()Z

    .line 138
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6, v9}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setVisibility(I)V

    .line 140
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$1;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V

    .line 165
    .local v3, onChangeListener:Landroid/text/TextWatcher;
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    const v6, 0x7f070036

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mTextView:Landroid/widget/TextView;

    .line 169
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    const v6, 0x7f07003a

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mTextView:Landroid/widget/TextView;

    .line 171
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    const v6, 0x7f07003e

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 176
    const v6, 0x7f07003f

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mDoneSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 177
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mDoneSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v6, v8, v10, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V

    .line 180
    const v6, 0x7f070040

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mCancelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 181
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mCancelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mRightBottomListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v6, v8, v10, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V

    .line 184
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v6, v9}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 194
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 195
    const/16 v6, 0x40

    new-array v4, v6, [S

    .line 196
    .local v4, substitutionbuf:[S
    const/4 v6, 0x2

    new-array v5, v6, [S

    .line 197
    .local v5, substitutionlengthbuf:[S
    array-length v6, v4

    int-to-short v1, v6

    .line 199
    .local v1, LengthOfSubstitutionBuf:S
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    int-to-short v7, v7

    invoke-static {v6, v7, v4, v1, v5}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBFindEntry([SS[SS[S)S

    move-result v2

    .line 202
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setSelection(II)V

    .line 204
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    aget-short v7, v5, v9

    invoke-direct {p0, v4, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    aget-short v6, v5, v9

    invoke-direct {p0, v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingSubstitution:Ljava/lang/String;

    .line 206
    invoke-direct {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setButtonEnabled(Z)V

    .line 214
    .end local v1           #LengthOfSubstitutionBuf:S
    .end local v4           #substitutionbuf:[S
    .end local v5           #substitutionlengthbuf:[S
    :goto_0
    return-void

    .line 208
    :cond_4
    invoke-direct {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setButtonEnabled(Z)V

    goto :goto_0
.end method
