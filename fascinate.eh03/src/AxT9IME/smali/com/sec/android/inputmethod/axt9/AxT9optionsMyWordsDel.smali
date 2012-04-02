.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;
.super Landroid/app/Activity;
.source "AxT9optionsMyWordsDel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;
    }
.end annotation


# static fields
.field private static mSelectall:Z


# instance fields
.field private final DEBUG:Z

.field private DeletingWordsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final INFO:Z

.field LengthOfWordsbuf:S

.field private final TAG:Ljava/lang/String;

.field private final TOUCH_SCROLL_LIMIT:I

.field private UDB_BUF:[B

.field private final UDB_SIZE:I

.field private final UDB_WORD_SIZE:I

.field forward:B

.field lengthbuf:[S

.field private mCencelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field mCount:[S

.field private mDelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mDisplayView:Landroid/widget/ListView;

.field private mLastMotionY:I

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field private mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

.field mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field mRightBottomListener:Landroid/view/View$OnClickListener;

.field private mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

.field private mSelectallArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectallview:Landroid/widget/ListView;

.field private mTouchDownItem:Landroid/widget/LinearLayout;

.field private mTouchSlop:I

.field private mUnCheckSelectAll:Z

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

.field private final ms_UDB_FILE_NAME:Ljava/lang/String;

.field private final useTwWidget:Z

.field wordsbuf:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectall:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x48

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DEBUG:Z

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->INFO:Z

    .line 70
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->useTwWidget:Z

    .line 71
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;

    .line 88
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->UDB_WORD_SIZE:I

    .line 90
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->forward:B

    .line 92
    const/16 v0, 0x5000

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->UDB_SIZE:I

    .line 93
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getUDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->UDB_BUF:[B

    .line 94
    const-string v0, "xT9UdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->ms_UDB_FILE_NAME:Ljava/lang/String;

    .line 96
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mCount:[S

    .line 98
    new-array v0, v4, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->wordsbuf:[S

    .line 99
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->lengthbuf:[S

    .line 100
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->wordsbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->LengthOfWordsbuf:S

    .line 102
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 103
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 104
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mCencelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 106
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    .line 108
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mLastMotionY:I

    .line 109
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mTouchSlop:I

    .line 113
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->TOUCH_SCROLL_LIMIT:I

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mUnCheckSelectAll:Z

    .line 540
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mClickListener:Landroid/view/View$OnClickListener;

    .line 608
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$6;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 614
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$7;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$7;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mRightBottomListener:Landroid/view/View$OnClickListener;

    .line 851
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$8;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$8;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectall:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-boolean p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectall:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->deleteMyWord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->writeDBdataToFile()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method private convertShortArrtoString([SS)Ljava/lang/String;
    .locals 3
    .parameter "shortarr"
    .parameter "length"

    .prologue
    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .local v1, string:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 586
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 587
    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .locals 3
    .parameter "string"

    .prologue
    .line 572
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 574
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 575
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_0
    return-object v1
.end method

.method private deleteMyWord(Ljava/lang/String;)V
    .locals 3
    .parameter "mywords"

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBDeleteWord([SS)S

    move-result v0

    .line 634
    .local v0, errorcode:S
    return-void
.end method

.method private getWordfromMyWords()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 597
    const-string v1, ""

    .line 599
    .local v1, getWordString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->wordsbuf:[S

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->LengthOfWordsbuf:S

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->lengthbuf:[S

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBGetWord([SS[SB)S

    move-result v0

    .line 600
    .local v0, errorcode:S
    if-eqz v0, :cond_0

    .line 603
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->wordsbuf:[S

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->lengthbuf:[S

    aget-short v3, v3, v5

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v1

    .line 605
    return-object v1
.end method

.method private readDBdataFromFile()V
    .locals 10

    .prologue
    .line 679
    const-string v0, ""

    .line 683
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9UdbData.dat"

    .line 685
    const-string v8, "xT9DB"

    const/4 v9, 0x3

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 686
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 687
    .local v6, mfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 688
    const/4 v4, 0x0

    .line 689
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 691
    .local v7, returnOfRead:I
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 692
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->UDB_BUF:[B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v7

    .line 699
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    .line 713
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_1
    :goto_0
    return-void

    .line 700
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catch_0
    move-exception v2

    .line 701
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 703
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .line 693
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 694
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

    .line 699
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 700
    :catch_2
    move-exception v2

    .line 701
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 695
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    move-object v2, v8

    .line 696
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 699
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 700
    :catch_4
    move-exception v2

    .line 701
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 698
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 699
    :goto_3
    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 702
    :cond_2
    :goto_4
    throw v8

    .line 700
    :catch_5
    move-exception v2

    .line 701
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 707
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 708
    :catch_6
    move-exception v3

    .line 709
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 698
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_3

    .line 695
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v2, v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 693
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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 549
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mCount:[S

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBGetWordCount([S)S

    move-result v0

    .line 550
    .local v0, errorcode:S
    if-eqz v0, :cond_0

    .line 554
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mCount:[S

    aget-short v2, v2, v3

    if-lez v2, :cond_2

    .line 555
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mCount:[S

    aget-short v2, v2, v3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    .line 557
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 558
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getWordfromMyWords()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 566
    .end local v1           #idx:I
    :goto_1
    return-void

    .line 564
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    goto :goto_1
.end method

.method private setButtonEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 293
    return-void
.end method

.method private setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "softKeyItem"
    .parameter "textColor"
    .parameter "gravity"
    .parameter "listener"

    .prologue
    .line 306
    if-eqz p1, :cond_1

    .line 307
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 308
    .local v1, child:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 309
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    check-cast v1, Landroid/widget/TextView;

    .end local v1           #child:Landroid/view/View;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 312
    :cond_0
    invoke-virtual {p1, p4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    :cond_1
    return-void
.end method

.method private writeDBdataToFile()V
    .locals 10

    .prologue
    .line 638
    const-string v0, ""

    .line 642
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9UdbData.dat"

    .line 644
    const-string v7, "xT9DB"

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 645
    .local v1, dir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 646
    .local v4, mfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 648
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 654
    const/4 v5, 0x0

    .line 656
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 657
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->UDB_BUF:[B

    const/4 v8, 0x0

    const/16 v9, 0x5000

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 663
    if-eqz v6, :cond_3

    .line 665
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v6

    .line 674
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 649
    :catch_0
    move-exception v3

    .line 650
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 666
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 667
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 668
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 658
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 659
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 663
    if-eqz v5, :cond_1

    .line 665
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 666
    :catch_3
    move-exception v2

    .line 667
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 660
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    move-object v2, v7

    .line 661
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 663
    if-eqz v5, :cond_1

    .line 665
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 666
    :catch_5
    move-exception v2

    .line 667
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 663
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_2

    .line 665
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 668
    :cond_2
    :goto_5
    throw v7

    .line 666
    :catch_6
    move-exception v2

    .line 667
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 663
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 660
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v7

    move-object v2, v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 658
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
.method makeDeletePopup()V
    .locals 7

    .prologue
    const v6, 0x7f0a0025

    const/4 v5, 0x1

    .line 253
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v1, Dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 255
    const v3, 0x7f0a0014

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$4;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 268
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 269
    const v3, 0x7f0a00f2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 277
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 278
    .local v0, DeleteDlg:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 281
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 282
    return-void

    .line 270
    .end local v0           #DeleteDlg:Landroid/app/AlertDialog;
    .end local v2           #win:Landroid/view/Window;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 271
    const v3, 0x7f0a00f0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 273
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x11

    const/high16 v4, -0x100

    const/4 v5, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    iput-object p0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mContext:Landroid/content/Context;

    .line 123
    const v2, 0x7f030017

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setContentView(I)V

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 128
    const v2, 0x7f07003e

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 130
    const v2, 0x7f070043

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 131
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v2, v4, v6, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V

    .line 134
    const v2, 0x7f070044

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mCencelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 135
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mCencelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mRightBottomListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v2, v4, v6, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V

    .line 138
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 148
    sput-boolean v5, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectall:Z

    .line 149
    const v2, 0x7f07004e

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallview:Landroid/widget/ListView;

    .line 150
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, selectallString:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallArray:Ljava/util/ArrayList;

    .line 152
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    const v3, 0x7f03001a

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallArray:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    .line 154
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallview:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$1;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mSelectallview:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->readDataFromDB()V

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;

    .line 194
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v5

    :goto_1
    if-ge v0, v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordsinUDB:[Ljava/lang/String;

    array-length v2, v2

    goto :goto_1

    .line 197
    :cond_1
    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    const v3, 0x7f030018

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    .line 198
    const v2, 0x7f07004f

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    .line 199
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$CheckboxArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 201
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 202
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 228
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mDisplayView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 243
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setButtonEnabled(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->mTouchSlop:I

    .line 250
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 780
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 782
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setResult(I)V

    .line 783
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->finish()V

    .line 784
    const/4 v0, 0x1

    .line 786
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 717
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 718
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "inSettings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->sendBroadcast(Landroid/content/Intent;)V

    .line 720
    sget-boolean v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v2, :cond_0

    .line 721
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->readDBdataFromFile()V

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->UDB_BUF:[B

    const/16 v3, 0x5000

    invoke-static {v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWRUDBInit([BS)S

    move-result v0

    .line 730
    .local v0, errorcode:S
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 731
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setButtonEnabled(Z)V

    .line 735
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 736
    return-void

    .line 733
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setButtonEnabled(Z)V

    goto :goto_0
.end method
