.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;
.super Landroid/app/Activity;
.source "AxT9optionsAutoSubsDel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;,
        Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;,
        Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;
    }
.end annotation


# static fields
.field private static mSelectall:Z


# instance fields
.field private ASDB_BUF:[B

.field private final ASDB_SIZE:I

.field private final ASDB_WORD_SIZE:I

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

.field LengthOfShortcutBuf:S

.field LengthOfSubstitutionBuf:S

.field RowTouchListener:Landroid/view/View$OnTouchListener;

.field private final TAG:Ljava/lang/String;

.field private final TOUCH_SCROLL_LIMIT:I

.field forward:B

.field private mAutoSubSet:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoSubsItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/inputmethod/axt9/widget/DioListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCencelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mContext:Landroid/content/Context;

.field mCount:[S

.field mData:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;

.field private mDelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mDisplayView:Landroid/widget/ListView;

.field private mKeyArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionY:I

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field private mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

.field mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field mRightBottomListener:Landroid/view/View$OnClickListener;

.field private mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

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

.field private mSelectallView:Landroid/widget/ListView;

.field private mTouchDownItem:Landroid/widget/LinearLayout;

.field private mTouchSlop:I

.field private mUnCheckSelectAll:Z

.field private mWordlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;",
            ">;"
        }
    .end annotation
.end field

.field private final ms_ASDB_FILE_NAME:Ljava/lang/String;

.field shortcutTouchListener:Landroid/view/View$OnTouchListener;

.field shortcutbuf:[S

.field shortcutlengthbuf:[S

.field substitutionbuf:[S

.field substitutionlengthbuf:[S

.field private final useTwWidget:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectall:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x48

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DEBUG:Z

    .line 73
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->INFO:Z

    .line 74
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->TAG:Ljava/lang/String;

    .line 75
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->useTwWidget:Z

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DeletingWordsList:Ljava/util/ArrayList;

    .line 84
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ASDB_WORD_SIZE:I

    .line 85
    const/16 v0, 0x2800

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ASDB_SIZE:I

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mUnCheckSelectAll:Z

    .line 90
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->forward:B

    .line 92
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mCount:[S

    .line 94
    new-array v0, v4, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutbuf:[S

    .line 95
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutlengthbuf:[S

    .line 96
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->LengthOfShortcutBuf:S

    .line 97
    new-array v0, v4, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionbuf:[S

    .line 98
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionlengthbuf:[S

    .line 99
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->LengthOfSubstitutionBuf:S

    .line 101
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getASDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ASDB_BUF:[B

    .line 102
    const-string v0, "xT9ASdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ms_ASDB_FILE_NAME:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubsItems:Ljava/util/ArrayList;

    .line 106
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    .line 120
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 121
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 122
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mCencelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 124
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mLastMotionY:I

    .line 125
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mTouchSlop:I

    .line 129
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->TOUCH_SCROLL_LIMIT:I

    .line 332
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->RowTouchListener:Landroid/view/View$OnTouchListener;

    .line 352
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutTouchListener:Landroid/view/View$OnTouchListener;

    .line 416
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 457
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$7;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$7;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mRightBottomListener:Landroid/view/View$OnClickListener;

    .line 742
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$8;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$8;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectall:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput-boolean p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectall:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->deleteEntry()V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DeletingWordsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mWordlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mLastMotionY:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mLastMotionY:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    return-object v0
.end method

.method private convertShortArrtoString([SS)Ljava/lang/String;
    .locals 3
    .parameter "shortarr"
    .parameter "length"

    .prologue
    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v1, string:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 392
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 393
    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .locals 3
    .parameter "string"

    .prologue
    .line 378
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 380
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 381
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_0
    return-object v1
.end method

.method private deleteEntry()V
    .locals 5

    .prologue
    .line 466
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 467
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->deleteEntry(Ljava/lang/String;)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->writeDBdataToFile()V

    .line 470
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "Delete is Done"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setResult(ILandroid/content/Intent;)V

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->finish()V

    .line 472
    return-void
.end method

.method private deleteEntry(Ljava/lang/String;)V
    .locals 3
    .parameter "shortcut"

    .prologue
    .line 477
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    .line 478
    .local v0, errorcode:S
    if-eqz v0, :cond_0

    .line 482
    :cond_0
    return-void
.end method

.method private getEntryfromAutoSubs()Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 403
    new-instance v7, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    invoke-direct {v7}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;-><init>()V

    .line 405
    .local v7, entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutbuf:[S

    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->LengthOfShortcutBuf:S

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutlengthbuf:[S

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionbuf:[S

    iget-short v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->LengthOfSubstitutionBuf:S

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionlengthbuf:[S

    invoke-static/range {v0 .. v6}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBGetEntry([SS[S[SS[SB)S

    move-result v8

    .line 406
    .local v8, errorcode:S
    if-eqz v8, :cond_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutbuf:[S

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->shortcutlengthbuf:[S

    aget-short v1, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setShortcut(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionbuf:[S

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->substitutionlengthbuf:[S

    aget-short v1, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setSubstitution(Ljava/lang/String;)V

    .line 413
    return-object v7
.end method

.method private readDBdataFromFile()V
    .locals 10

    .prologue
    .line 527
    const-string v0, ""

    .line 531
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9ASdbData.dat"

    .line 533
    const-string v8, "xT9DB"

    const/4 v9, 0x3

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 534
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 535
    .local v6, mfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 536
    const/4 v4, 0x0

    .line 537
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 539
    .local v7, returnOfRead:I
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 540
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ASDB_BUF:[B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v7

    .line 547
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    .line 561
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_1
    :goto_0
    return-void

    .line 548
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catch_0
    move-exception v2

    .line 549
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 551
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .line 541
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 542
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

    .line 547
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 548
    :catch_2
    move-exception v2

    .line 549
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 543
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    move-object v2, v8

    .line 544
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 547
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 548
    :catch_4
    move-exception v2

    .line 549
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 546
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 547
    :goto_3
    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 550
    :cond_2
    :goto_4
    throw v8

    .line 548
    :catch_5
    move-exception v2

    .line 549
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 555
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 556
    :catch_6
    move-exception v3

    .line 557
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 546
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_3

    .line 543
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v2, v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 541
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
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 296
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;-><init>()V

    .line 298
    .local v0, entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mCount:[S

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBGetEntryCount([S)S

    move-result v1

    .line 299
    .local v1, errorcode:S
    if-eqz v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 304
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mCount:[S

    aget-short v3, v3, v6

    if-lez v3, :cond_0

    .line 305
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    if-nez v3, :cond_2

    .line 306
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    .line 311
    :goto_1
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mCount:[S

    aget-short v3, v3, v6

    if-ge v2, v3, :cond_3

    .line 312
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getEntryfromAutoSubs()Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    move-result-object v0

    .line 313
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getSubstitution()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 308
    .end local v2           #idx:I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    goto :goto_1

    .line 316
    .restart local v2       #idx:I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method private setButtonEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 267
    return-void
.end method

.method private setEntry()V
    .locals 5

    .prologue
    .line 611
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    .line 612
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->readDataFromDB()V

    .line 613
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mWordlist:Ljava/util/ArrayList;

    .line 614
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 615
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mData:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;

    .line 616
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mWordlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mData:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$Data;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
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
    .line 280
    if-eqz p1, :cond_1

    .line 281
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 282
    .local v1, child:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 283
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    check-cast v1, Landroid/widget/TextView;

    .end local v1           #child:Landroid/view/View;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 286
    :cond_0
    invoke-virtual {p1, p4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    :cond_1
    return-void
.end method

.method private writeDBdataToFile()V
    .locals 10

    .prologue
    .line 486
    const-string v0, ""

    .line 490
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9ASdbData.dat"

    .line 492
    const-string v7, "xT9DB"

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 493
    .local v1, dir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 494
    .local v4, mfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 496
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 502
    const/4 v5, 0x0

    .line 504
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 505
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ASDB_BUF:[B

    const/4 v8, 0x0

    const/16 v9, 0x2800

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 511
    if-eqz v6, :cond_3

    .line 513
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v6

    .line 522
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 497
    :catch_0
    move-exception v3

    .line 498
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 514
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 515
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 516
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 506
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 507
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 511
    if-eqz v5, :cond_1

    .line 513
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 514
    :catch_3
    move-exception v2

    .line 515
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 508
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    move-object v2, v7

    .line 509
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 511
    if-eqz v5, :cond_1

    .line 513
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 514
    :catch_5
    move-exception v2

    .line 515
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 511
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_2

    .line 513
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 516
    :cond_2
    :goto_5
    throw v7

    .line 514
    :catch_6
    move-exception v2

    .line 515
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 511
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 508
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v7

    move-object v2, v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 506
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

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    iput-object p0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, AUTOSUBS_TITLE:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    const v2, 0x7f030012

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setContentView(I)V

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 147
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mTouchSlop:I

    .line 150
    const v2, 0x7f07003e

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 152
    const v2, 0x7f070043

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 153
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v2, v6, v7, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V

    .line 156
    const v2, 0x7f070044

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mCencelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 157
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mCencelSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mRightBottomListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v2, v6, v7, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V

    .line 160
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mMyWordSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 170
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mAutoSubSet:Ljava/util/Hashtable;

    .line 171
    sput-boolean v5, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectall:Z

    .line 172
    const v2, 0x7f070041

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallView:Landroid/widget/ListView;

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, selectallString:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallArray:Ljava/util/ArrayList;

    .line 175
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

    const v3, 0x7f03001a

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallArray:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

    .line 177
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallAdpter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallView:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$1;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mSelectallView:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setEntry()V

    .line 218
    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

    const v3, 0x7f030013

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

    .line 219
    const v2, 0x7f070042

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    .line 220
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 222
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 223
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setButtonEnabled(Z)V

    .line 256
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 566
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 567
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 322
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 324
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setResult(I)V

    .line 325
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->finish()V

    .line 326
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 572
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 573
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "inSettings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->sendBroadcast(Landroid/content/Intent;)V

    .line 575
    sget-boolean v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v2, :cond_0

    .line 576
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->readDBdataFromFile()V

    .line 578
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->ASDB_BUF:[B

    const/16 v3, 0x2800

    invoke-static {v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v0

    .line 579
    .local v0, errorcode:S
    if-eqz v0, :cond_1

    .line 584
    :cond_1
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v0

    .line 585
    if-eqz v0, :cond_2

    .line 588
    :cond_2
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v0

    .line 589
    if-eqz v0, :cond_3

    .line 592
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setEntry()V

    .line 594
    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

    const v3, 0x7f030013

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mWordlist:Ljava/util/ArrayList;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

    .line 595
    const v2, 0x7f070042

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    .line 596
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 597
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mDisplayView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 599
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->notifyDataSetChanged()V

    .line 600
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->mListAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->notifyDataSetInvalidated()V

    .line 601
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->DeletingWordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 602
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setButtonEnabled(Z)V

    .line 606
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 607
    return-void

    .line 604
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->setButtonEnabled(Z)V

    goto :goto_0
.end method
