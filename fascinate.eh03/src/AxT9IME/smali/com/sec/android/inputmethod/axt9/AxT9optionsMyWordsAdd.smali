.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;
.super Landroid/app/Activity;
.source "AxT9optionsMyWordsAdd.java"


# instance fields
.field private final DEBUG:Z

.field private final INFO:Z

.field LengthOfWordsbuf:S

.field private final TAG:Ljava/lang/String;

.field private UDB_BUF:[B

.field private final UDB_SIZE:I

.field private edittingWord:Ljava/lang/String;

.field lengthbuf:[S

.field private mCancelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field mCount:[S

.field private mDoneSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

.field private mEditTitle:Landroid/widget/TextView;

.field private mEditable_addingMyWords:Landroid/text/Editable;

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field private mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field mRightBottomListener:Landroid/view/View$OnClickListener;

.field private mString_addingBuff:Ljava/lang/String;

.field private final ms_UDB_FILE_NAME:Ljava/lang/String;

.field private onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

.field private final useTwWidget:Z

.field wordsbuf:[S


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x5000

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->TAG:Ljava/lang/String;

    .line 59
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->DEBUG:Z

    .line 60
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->INFO:Z

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;

    .line 76
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->UDB_SIZE:I

    .line 77
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getUDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->UDB_BUF:[B

    .line 78
    const-string v0, "xT9UdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->ms_UDB_FILE_NAME:Ljava/lang/String;

    .line 82
    new-array v0, v4, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mCount:[S

    .line 83
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->wordsbuf:[S

    .line 84
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->lengthbuf:[S

    .line 85
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->wordsbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->LengthOfWordsbuf:S

    .line 87
    iput-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->useTwWidget:Z

    .line 88
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 89
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mDoneSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 90
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mCancelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 290
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 312
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mRightBottomListener:Landroid/view/View$OnClickListener;

    .line 414
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Landroid/text/Editable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditable_addingMyWords:Landroid/text/Editable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Landroid/text/Editable;)Landroid/text/Editable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditable_addingMyWords:Landroid/text/Editable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->readDBdataFromFile()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->UDB_BUF:[B

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->deleteMyWord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->addWordtoMyWords(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->writeDBdataToFile()V

    return-void
.end method

.method private addWordtoMyWords(Ljava/lang/String;)V
    .locals 5
    .parameter "string"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-short v4, v4

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBFindWord([SS)S

    move-result v1

    .line 219
    .local v1, errorcode:S
    if-nez v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 221
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f0a0095

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 222
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 229
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-short v4, v4

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBAddWord([SS)S

    move-result v1

    .line 225
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .locals 3
    .parameter "string"

    .prologue
    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 329
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_0
    return-object v1
.end method

.method private deleteMyWord(Ljava/lang/String;)V
    .locals 2
    .parameter "mywords"

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBDeleteWord([SS)S

    .line 323
    return-void
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 1
    .parameter "ResourceStringID"

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readDBdataFromFile()V
    .locals 10

    .prologue
    .line 338
    const-string v0, ""

    .line 342
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9UdbData.dat"

    .line 344
    const-string v8, "xT9DB"

    const/4 v9, 0x3

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 345
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    .local v6, mfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 347
    const/4 v4, 0x0

    .line 348
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 350
    .local v7, returnOfRead:I
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 351
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->UDB_BUF:[B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v7

    .line 358
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    .line 372
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_1
    :goto_0
    return-void

    .line 359
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catch_0
    move-exception v2

    .line 360
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 362
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .line 352
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 353
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

    .line 358
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 359
    :catch_2
    move-exception v2

    .line 360
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 354
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    move-object v2, v8

    .line 355
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 358
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 359
    :catch_4
    move-exception v2

    .line 360
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 358
    :goto_3
    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 361
    :cond_2
    :goto_4
    throw v8

    .line 359
    :catch_5
    move-exception v2

    .line 360
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 366
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 367
    :catch_6
    move-exception v3

    .line 368
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_3

    .line 354
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v2, v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 352
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
    .line 184
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mDoneSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mDoneSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mDoneSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 193
    :cond_0
    return-void
.end method

.method private setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "softKeyItem"
    .parameter "textColor"
    .parameter "gravity"
    .parameter "listener"

    .prologue
    .line 206
    if-eqz p1, :cond_1

    .line 207
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 208
    .local v1, child:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 209
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    check-cast v1, Landroid/widget/TextView;

    .end local v1           #child:Landroid/view/View;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 212
    :cond_0
    invoke-virtual {p1, p4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :cond_1
    return-void
.end method

.method private writeDBdataToFile()V
    .locals 10

    .prologue
    .line 376
    const-string v0, ""

    .line 380
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9UdbData.dat"

    .line 382
    const-string v7, "xT9DB"

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 383
    .local v1, dir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 384
    .local v4, mfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 386
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 392
    const/4 v5, 0x0

    .line 394
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 395
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->UDB_BUF:[B

    const/4 v8, 0x0

    const/16 v9, 0x5000

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 401
    if-eqz v6, :cond_3

    .line 403
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v6

    .line 412
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 387
    :catch_0
    move-exception v3

    .line 388
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 404
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 405
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 406
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 396
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 397
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 401
    if-eqz v5, :cond_1

    .line 403
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 404
    :catch_3
    move-exception v2

    .line 405
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 398
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    move-object v2, v7

    .line 399
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 401
    if-eqz v5, :cond_1

    .line 403
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 404
    :catch_5
    move-exception v2

    .line 405
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 401
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_2

    .line 403
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 406
    :cond_2
    :goto_5
    throw v7

    .line 404
    :catch_6
    move-exception v2

    .line 405
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 401
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 398
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v7

    move-object v2, v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 396
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
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x11

    const/high16 v6, -0x100

    const/4 v5, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CurrentMode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, CurrentMode:Ljava/lang/String;
    const v2, 0x7f030016

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setContentView(I)V

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 107
    const v2, 0x7f07004c

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    .line 108
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setInputType(I)V

    .line 109
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setPrivateCommandListener(Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;)V

    .line 110
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v2, v5}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setVisibility(I)V

    .line 111
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->requestFocus()Z

    .line 113
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$1;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    const v2, 0x7f07004b

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditTitle:Landroid/widget/TextView;

    .line 135
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    const-string v1, ""

    .line 138
    .local v1, editTitle:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 139
    const v2, 0x7f0a0021

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    const v2, 0x7f0a0079

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "edittingMyWords"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setSelection(II)V

    .line 155
    :cond_1
    const v2, 0x7f07003e

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 157
    const v2, 0x7f07003f

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mDoneSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 158
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mDoneSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v2, v6, v7, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V

    .line 161
    const v2, 0x7f070040

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mCancelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 162
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mCancelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mRightBottomListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v2, v6, v7, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V

    .line 165
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 175
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setButtonEnabled(Z)V

    .line 180
    return-void

    .line 142
    :cond_2
    const v2, 0x7f0a0024

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const v2, 0x7f0a007a

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 467
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 468
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 470
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 472
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 473
    return-void
.end method
