.class public Lcom/sec/android/inputmethod/axt9/AxT9AddWord;
.super Landroid/app/Activity;
.source "AxT9AddWord.java"


# instance fields
.field private final AxT9IMEAction:Ljava/lang/String;

.field private final DEBUG:Z

.field private final INFO:Z

.field LengthOfWordsbuf:S

.field private final TAG:Ljava/lang/String;

.field private UDB_BUF:[B

.field private final UDB_SIZE:I

.field private final UDB_WORD_SIZE:I

.field private editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

.field lengthbuf:[S

.field private mAddWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field mCount:[S

.field private mIsDone:Z

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field mRightBottomListener:Landroid/view/View$OnClickListener;

.field private mSoftkeyCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mSoftkeyDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private final ms_UDB_FILE_NAME:Ljava/lang/String;

.field onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

.field private final useTwWidget:Z

.field wordsbuf:[S


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x5000

    const/16 v4, 0x40

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->TAG:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->DEBUG:Z

    .line 59
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->INFO:Z

    .line 60
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->useTwWidget:Z

    .line 68
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mAddWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 69
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mSoftkeyDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 70
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mSoftkeyCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mIsDone:Z

    .line 76
    const-string v0, "com.samsung.sec.android.inputmethod.axt9.AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->AxT9IMEAction:Ljava/lang/String;

    .line 79
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->UDB_SIZE:I

    .line 81
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->UDB_WORD_SIZE:I

    .line 82
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mCount:[S

    .line 83
    new-array v0, v4, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->wordsbuf:[S

    .line 84
    new-array v0, v5, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->lengthbuf:[S

    .line 85
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->wordsbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->LengthOfWordsbuf:S

    .line 89
    const-string v0, "xT9UdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->ms_UDB_FILE_NAME:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getUDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->UDB_BUF:[B

    .line 242
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 273
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mRightBottomListener:Landroid/view/View$OnClickListener;

    .line 396
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    return-void
.end method

.method private AddWordtoUDB(Ljava/lang/String;)V
    .locals 3
    .parameter "addingword"

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBAddWord([SS)S

    move-result v0

    .line 284
    .local v0, errorcode:S
    if-eqz v0, :cond_0

    .line 288
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBFindWord([SS)S

    move-result v0

    .line 289
    if-eqz v0, :cond_1

    .line 292
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->UDB_BUF:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;Ljava/lang/String;)[S
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->AddWordtoUDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->writeDBdataToFile()V

    return-void
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .locals 3
    .parameter "string"

    .prologue
    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 297
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-object v1
.end method

.method private initTwUI()V
    .locals 4

    .prologue
    const/16 v3, 0x11

    const/high16 v2, -0x100

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 144
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    .line 145
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setInputType(I)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setPrivateCommandListener(Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;)V

    .line 148
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mAddWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 149
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mAddWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 152
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mSoftkeyDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 153
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mSoftkeyCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 155
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mSoftkeyDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mSoftkeyCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mRightBottomListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method private setButtonEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mSoftkeyDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mSoftkeyDone:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 207
    return-void
.end method

.method private setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "softKeyItem"
    .parameter "textColor"
    .parameter "gravity"
    .parameter "listener"

    .prologue
    .line 188
    if-eqz p1, :cond_1

    .line 189
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, child:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 191
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    check-cast v1, Landroid/widget/TextView;

    .end local v1           #child:Landroid/view/View;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
    :cond_0
    invoke-virtual {p1, p4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_1
    return-void
.end method

.method private writeDBdataToFile()V
    .locals 10

    .prologue
    .line 307
    const-string v0, ""

    .line 311
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9UdbData.dat"

    .line 313
    const-string v7, "xT9DB"

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 314
    .local v1, dir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    .local v4, mfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 317
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 323
    const/4 v5, 0x0

    .line 325
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 326
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->UDB_BUF:[B

    const/4 v8, 0x0

    const/16 v9, 0x5000

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 332
    if-eqz v6, :cond_3

    .line 334
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v6

    .line 343
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 318
    :catch_0
    move-exception v3

    .line 319
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 335
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 336
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 337
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 327
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 328
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    if-eqz v5, :cond_1

    .line 334
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 335
    :catch_3
    move-exception v2

    .line 336
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 329
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    move-object v2, v7

    .line 330
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 332
    if-eqz v5, :cond_1

    .line 334
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 335
    :catch_5
    move-exception v2

    .line 336
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 332
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_2

    .line 334
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 337
    :cond_2
    :goto_5
    throw v7

    .line 335
    :catch_6
    move-exception v2

    .line 336
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 332
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 329
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v7

    move-object v2, v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 327
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
.method public getFlagIsDone()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mIsDone:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, ADDWORD_TITLE:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setContentView(I)V

    .line 102
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->initTwUI()V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "AddingWord"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, selectedWord:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 111
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v3, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setSelection(II)V

    .line 113
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$1;

    invoke-direct {v4, p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, targetString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 135
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setButtonEnabled(Z)V

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setVisibility(I)V

    .line 140
    .end local v2           #targetString:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.samsung.sec.android.inputmethod.axt9.AxT9IME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "sendingActivity"

    const-string v2, "AxT9AddWord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getFlagIsDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "AddingWord"

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setFlagIsDone(Z)V

    .line 218
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 221
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 425
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 426
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 428
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 430
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 431
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 231
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 236
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setResult(ILandroid/content/Intent;)V

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->finish()V

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 240
    return-void
.end method

.method public setFlagIsDone(Z)V
    .locals 0
    .parameter "isDone"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mIsDone:Z

    .line 394
    return-void
.end method
