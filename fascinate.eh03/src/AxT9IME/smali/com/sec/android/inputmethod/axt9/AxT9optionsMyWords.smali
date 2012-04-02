.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;
.super Landroid/app/Activity;
.source "AxT9optionsMyWords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private GET_CODE:I

.field private final INFO:Z

.field LengthOfWordsbuf:S

.field private final OPTION_MENU_ADD:I

.field private final OPTION_MENU_DELETE:I

.field private final OPTION_MENU_DELETE_ALL:I

.field private final OPTION_MENU_EDIT:I

.field private final TAG:Ljava/lang/String;

.field TextClickListener:Landroid/view/View$OnClickListener;

.field TextFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private UDB_BUF:[B

.field private final UDB_SIZE:I

.field private final UDB_WORD_SIZE:I

.field forward:B

.field lengthbuf:[S

.field private mAddSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field mAddwordsViewClickListener:Landroid/view/View$OnClickListener;

.field mAddwordsViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

.field mCount:[S

.field private mCurrentFocusString:Ljava/lang/String;

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mMainListView:Landroid/widget/ListView;

.field private mMenuSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mMyWords_empty:Landroid/widget/LinearLayout;

.field private mTouchDownItem:Landroid/widget/LinearLayout;

.field private mWordlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWordsinUDB:[Ljava/lang/String;

.field private misEditMode:Z

.field private final ms_UDB_FILE_NAME:Ljava/lang/String;

.field private final useTwWidget:Z

.field wordsbuf:[S


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x48

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->TAG:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->DEBUG:Z

    .line 70
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->INFO:Z

    .line 74
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->GET_CODE:I

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->misEditMode:Z

    .line 87
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->UDB_WORD_SIZE:I

    .line 89
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->forward:B

    .line 91
    const/16 v0, 0x5000

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->UDB_SIZE:I

    .line 92
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getUDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->UDB_BUF:[B

    .line 93
    const-string v0, "xT9UdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->ms_UDB_FILE_NAME:Ljava/lang/String;

    .line 95
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mCount:[S

    .line 97
    new-array v0, v4, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->wordsbuf:[S

    .line 98
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->lengthbuf:[S

    .line 99
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->wordsbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->LengthOfWordsbuf:S

    .line 103
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->useTwWidget:Z

    .line 104
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 105
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mAddSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 106
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMenuSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 111
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->OPTION_MENU_ADD:I

    .line 112
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->OPTION_MENU_EDIT:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->OPTION_MENU_DELETE:I

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->OPTION_MENU_DELETE_ALL:I

    .line 117
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    .line 326
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->TextFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 336
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->TextClickListener:Landroid/view/View$OnClickListener;

    .line 354
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 713
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 731
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mAddwordsViewClickListener:Landroid/view/View$OnClickListener;

    .line 742
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$6;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mAddwordsViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 801
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$7;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$7;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mCurrentFocusString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->misEditMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->misEditMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->GET_CODE:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method private addMyWord()V
    .locals 3

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 517
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 518
    const-class v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 519
    const-string v2, "CurrentMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->GET_CODE:I

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->startActivityForResult(Landroid/content/Intent;I)V

    .line 521
    return-void
.end method

.method private convertShortArrtoString([SS)Ljava/lang/String;
    .locals 3
    .parameter "shortarr"
    .parameter "length"

    .prologue
    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v1, string:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 304
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 305
    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteMyWord()V
    .locals 2

    .prologue
    .line 564
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 565
    const-class v1, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 566
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->GET_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->startActivityForResult(Landroid/content/Intent;I)V

    .line 567
    return-void
.end method

.method private getWordfromMyWords()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 315
    const-string v1, ""

    .line 317
    .local v1, getWordString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->wordsbuf:[S

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->LengthOfWordsbuf:S

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->lengthbuf:[S

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBGetWord([SS[SB)S

    move-result v0

    .line 318
    .local v0, errorcode:S
    if-eqz v0, :cond_0

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->wordsbuf:[S

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->lengthbuf:[S

    aget-short v3, v3, v5

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v1

    .line 323
    return-object v1
.end method

.method private readDBdataFromFile()V
    .locals 10

    .prologue
    .line 636
    const-string v0, ""

    .line 640
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9UdbData.dat"

    .line 642
    const-string v8, "xT9DB"

    const/4 v9, 0x3

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 643
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 644
    .local v6, mfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 645
    const/4 v4, 0x0

    .line 646
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 648
    .local v7, returnOfRead:I
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 649
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->UDB_BUF:[B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v7

    .line 656
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    .line 670
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_1
    :goto_0
    return-void

    .line 657
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catch_0
    move-exception v2

    .line 658
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 660
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .line 650
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 651
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

    .line 656
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 657
    :catch_2
    move-exception v2

    .line 658
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 652
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    move-object v2, v8

    .line 653
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 656
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 657
    :catch_4
    move-exception v2

    .line 658
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 655
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 656
    :goto_3
    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 659
    :cond_2
    :goto_4
    throw v8

    .line 657
    :catch_5
    move-exception v2

    .line 658
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 664
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 665
    :catch_6
    move-exception v3

    .line 666
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 655
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_3

    .line 652
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v2, v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 650
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

.method private readDataFromDB()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 267
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mCount:[S

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBGetWordCount([S)S

    move-result v0

    .line 268
    .local v0, errorcode:S
    if-eqz v0, :cond_0

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mCount:[S

    aget-short v2, v2, v4

    if-lez v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mCount:[S

    aget-short v2, v2, v4

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    .line 275
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getWordfromMyWords()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMyWords_empty:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 282
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 288
    .end local v1           #idx:I
    :goto_1
    return-void

    .line 284
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    .line 285
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMyWords_empty:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "softKeyItem"
    .parameter "textColor"
    .parameter "gravity"
    .parameter "listener"

    .prologue
    .line 174
    if-eqz p1, :cond_1

    .line 175
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 176
    .local v1, child:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 177
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    check-cast v1, Landroid/widget/TextView;

    .end local v1           #child:Landroid/view/View;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 180
    :cond_0
    invoke-virtual {p1, p4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x8

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->setContentView(I)V

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 127
    const v1, 0x7f070049

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMyWords_empty:Landroid/widget/LinearLayout;

    .line 128
    const v1, 0x7f07004a

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMainListView:Landroid/widget/ListView;

    .line 130
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 131
    .local v0, addwordsView:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mAddwordsViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mAddwordsViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    :cond_0
    const v1, 0x7f07003e

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 139
    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mAddSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 140
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mAddSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    const/high16 v2, -0x100

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V

    .line 142
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mAddSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setVisibility(I)V

    .line 144
    const v1, 0x7f070034

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMenuSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 147
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 161
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 680
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 681
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 487
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 489
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->setResult(I)V

    .line 490
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->finish()V

    .line 491
    const/4 v0, 0x1

    .line 493
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 426
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 443
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 428
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->addMyWord()V

    move v0, v1

    .line 429
    goto :goto_0

    .line 435
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->deleteMyWord()V

    :cond_0
    move v0, v1

    .line 437
    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->misEditMode:Z

    .line 686
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 687
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 410
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 411
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 412
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v4

    .line 420
    :goto_0
    return v0

    .line 417
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020021

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move v0, v4

    .line 420
    goto :goto_0

    :cond_2
    move v1, v3

    .line 417
    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 691
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 692
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "inSettings"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->sendBroadcast(Landroid/content/Intent;)V

    .line 694
    sget-boolean v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v3, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->readDBdataFromFile()V

    .line 697
    :cond_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->UDB_BUF:[B

    const/16 v4, 0x5000

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWRUDBInit([BS)S

    move-result v0

    .line 699
    .local v0, errorcode:S
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->readDataFromDB()V

    .line 700
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordlist:Ljava/util/ArrayList;

    .line 701
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 702
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordlist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    array-length v3, v3

    goto :goto_1

    .line 705
    :cond_2
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    const v4, 0x7f030019

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordlist:Ljava/util/ArrayList;

    invoke-direct {v3, p0, p0, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    .line 706
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMainListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 707
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMainListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 708
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMainListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 710
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 711
    return-void
.end method
