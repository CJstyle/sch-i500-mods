.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;
.super Landroid/app/Activity;
.source "AxT9optionsAutoSubs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$dataCompareator;,
        Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;,
        Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;
    }
.end annotation


# instance fields
.field private ASDB_BUF:[B

.field private final ASDB_SIZE:I

.field private final ASDB_WORD_SIZE:I

.field private CurrentLanguage:Ljava/lang/String;

.field private final DEBUG:Z

.field private GET_CODE:I

.field private final INFO:Z

.field LengthOfShortcutBuf:S

.field LengthOfSubstitutionBuf:S

.field private final OPTION_MENU_ADD:I

.field private final OPTION_MENU_DELETE:I

.field private final OPTION_MENU_EDIT:I

.field RowClickListener:Landroid/view/View$OnClickListener;

.field RowTouchListener:Landroid/view/View$OnTouchListener;

.field private TAG:Ljava/lang/String;

.field private final TOUCH_SCROLL_LIMIT:I

.field TextFocusListener:Landroid/view/View$OnFocusChangeListener;

.field forward:B

.field private mAddSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field mAddwordsViewClickListener:Landroid/view/View$OnClickListener;

.field mAddwordsViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

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

.field private mAutoSubsPopupMenuList:[Ljava/lang/String;

.field private mAutoSubs_empty:Landroid/widget/LinearLayout;

.field mCount:[S

.field private mCurrentFocusString:Ljava/lang/String;

.field private mIsEditMode:Z

.field private mItem:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mKeyArray:[Ljava/lang/String;

.field private mLastMotionY:I

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mMainListView:Landroid/widget/ListView;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mMenuSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field mRightBottomListener:Landroid/view/View$OnClickListener;

.field private mSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mTouchDownItem:Landroid/widget/LinearLayout;

.field private mTouchSlop:I

.field private final ms_ASDB_FILE_NAME:Ljava/lang/String;

.field shortcutbuf:[S

.field shortcutlengthbuf:[S

.field substitutionbuf:[S

.field substitutionlengthbuf:[S

.field private final useTwWidget:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x48

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->DEBUG:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->INFO:Z

    .line 79
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->TAG:Ljava/lang/String;

    .line 80
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->useTwWidget:Z

    .line 84
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->GET_CODE:I

    .line 94
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mIsEditMode:Z

    .line 97
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_WORD_SIZE:I

    .line 98
    const/16 v0, 0x2800

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_SIZE:I

    .line 101
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->forward:B

    .line 103
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCount:[S

    .line 105
    new-array v0, v4, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutbuf:[S

    .line 106
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutlengthbuf:[S

    .line 107
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->LengthOfShortcutBuf:S

    .line 108
    new-array v0, v4, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionbuf:[S

    .line 109
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionlengthbuf:[S

    .line 110
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->LengthOfSubstitutionBuf:S

    .line 112
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getASDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_BUF:[B

    .line 113
    const-string v0, "xT9ASdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ms_ASDB_FILE_NAME:Ljava/lang/String;

    .line 118
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 119
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAddSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 120
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMenuSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 126
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAutoSubSet:Ljava/util/Hashtable;

    .line 127
    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mKeyArray:[Ljava/lang/String;

    .line 129
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mLastMotionY:I

    .line 130
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mTouchSlop:I

    .line 134
    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->TOUCH_SCROLL_LIMIT:I

    .line 142
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->OPTION_MENU_ADD:I

    .line 143
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->OPTION_MENU_EDIT:I

    .line 144
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->OPTION_MENU_DELETE:I

    .line 271
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->RowClickListener:Landroid/view/View$OnClickListener;

    .line 286
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->RowTouchListener:Landroid/view/View$OnTouchListener;

    .line 297
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->TextFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 370
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 380
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mRightBottomListener:Landroid/view/View$OnClickListener;

    .line 707
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$7;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$7;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 725
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$8;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$8;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 843
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$9;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$9;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAddwordsViewClickListener:Landroid/view/View$OnClickListener;

    .line 853
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$10;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$10;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAddwordsViewTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private AutoSubsMenuHandler(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 497
    packed-switch p1, :pswitch_data_0

    .line 509
    :goto_0
    return-void

    .line 500
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->editEntry()V

    goto :goto_0

    .line 504
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->deleteEntry()V

    goto :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private PopupMenuOn()V
    .locals 6

    .prologue
    .line 388
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, Dialog:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 390
    const v4, 0x7f0a0014

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAutoSubsPopupMenuList:[Ljava/lang/String;

    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$6;

    invoke-direct {v5, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 404
    .local v1, MenuDlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 405
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 406
    .local v3, wlp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 407
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 408
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mIsEditMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mIsEditMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->GET_CODE:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mLastMotionY:I

    return p1
.end method

.method static synthetic access$402(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCurrentFocusString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->PopupMenuOn()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAutoSubsPopupMenuList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->AutoSubsMenuHandler(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    return-object v0
.end method

.method private addEntry()V
    .locals 3

    .prologue
    .line 511
    const v0, 0x7f0a0021

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 513
    const-class v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 514
    const-string v2, "CurrentMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->GET_CODE:I

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->startActivityForResult(Landroid/content/Intent;I)V

    .line 516
    return-void
.end method

.method private convertShortArrtoString([SS)Ljava/lang/String;
    .locals 3
    .parameter "shortarr"
    .parameter "length"

    .prologue
    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v1, string:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 349
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 350
    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .locals 3
    .parameter "string"

    .prologue
    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 339
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-object v1
.end method

.method private deleteEntry()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCurrentFocusString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 521
    const-class v1, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 523
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->startActivityForResult(Landroid/content/Intent;I)V

    .line 528
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCurrentFocusString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->deleteEntry(Ljava/lang/String;)V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCurrentFocusString:Ljava/lang/String;

    goto :goto_0
.end method

.method private deleteEntry(Ljava/lang/String;)V
    .locals 3
    .parameter "shortcut"

    .prologue
    .line 533
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_BUF:[B

    const/16 v2, 0x2800

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v0

    .line 534
    .local v0, errorcode:S
    if-eqz v0, :cond_0

    .line 538
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    .line 539
    if-eqz v0, :cond_1

    .line 542
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->writeDBdataToFile()V

    .line 543
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->displayAllEntries()V

    .line 544
    return-void
.end method

.method private displayAllEntries()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->readDataFromDB()V

    .line 240
    return-void
.end method

.method private editEntry()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 547
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCurrentFocusString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mIsEditMode:Z

    .line 549
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 550
    const v1, 0x7f0a0094

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 561
    :goto_0
    return-void

    .line 553
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mIsEditMode:Z

    .line 554
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 555
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 556
    const-class v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 557
    const-string v2, "CurrentMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v0, "shortcut"

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCurrentFocusString:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->GET_CODE:I

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private getEntryfromAutoSubs()Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 358
    new-instance v7, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    invoke-direct {v7}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;-><init>()V

    .line 360
    .local v7, entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutbuf:[S

    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->LengthOfShortcutBuf:S

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutlengthbuf:[S

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionbuf:[S

    iget-short v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->LengthOfSubstitutionBuf:S

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionlengthbuf:[S

    invoke-static/range {v0 .. v6}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBGetEntry([SS[S[SS[SB)S

    move-result v8

    .line 361
    .local v8, errorcode:S
    if-eqz v8, :cond_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutbuf:[S

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->shortcutlengthbuf:[S

    aget-short v1, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setShortcut(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionbuf:[S

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->substitutionlengthbuf:[S

    aget-short v1, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setSubstitution(Ljava/lang/String;)V

    .line 367
    return-object v7
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 1
    .parameter "ResourceStringID"

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readDBdataFromFile()V
    .locals 10

    .prologue
    .line 611
    const-string v0, ""

    .line 615
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9ASdbData.dat"

    .line 617
    const-string v8, "xT9DB"

    const/4 v9, 0x3

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 618
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 619
    .local v6, mfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 620
    const/4 v4, 0x0

    .line 621
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 623
    .local v7, returnOfRead:I
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 624
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_BUF:[B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v7

    .line 631
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    .line 645
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_1
    :goto_0
    return-void

    .line 632
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catch_0
    move-exception v2

    .line 633
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 635
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .line 625
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 626
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

    .line 631
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 632
    :catch_2
    move-exception v2

    .line 633
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 627
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    move-object v2, v8

    .line 628
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 631
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 632
    :catch_4
    move-exception v2

    .line 633
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 630
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 631
    :goto_3
    if-eqz v4, :cond_2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 634
    :cond_2
    :goto_4
    throw v8

    .line 632
    :catch_5
    move-exception v2

    .line 633
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 639
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 640
    :catch_6
    move-exception v3

    .line 641
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 630
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_3

    .line 627
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v2, v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 625
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
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 246
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;-><init>()V

    .line 248
    .local v0, entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCount:[S

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBGetEntryCount([S)S

    move-result v1

    .line 249
    .local v1, errorcode:S
    if-eqz v1, :cond_0

    .line 269
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCount:[S

    aget-short v3, v3, v6

    if-lez v3, :cond_2

    .line 255
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->clear()V

    .line 256
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mCount:[S

    aget-short v3, v3, v6

    if-ge v2, v3, :cond_1

    .line 257
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getEntryfromAutoSubs()Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    move-result-object v0

    .line 258
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getSubstitution()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mItem:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;

    .line 259
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mItem:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->add(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$Data;)V

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 261
    :cond_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAutoSubs_empty:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    new-instance v4, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$dataCompareator;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$dataCompareator;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->sort(Ljava/util/Comparator;)V

    goto :goto_0

    .line 265
    .end local v2           #idx:I
    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAutoSubs_empty:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "softKeyItem"
    .parameter "textColor"
    .parameter "gravity"
    .parameter "listener"

    .prologue
    .line 228
    if-eqz p1, :cond_1

    .line 229
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 230
    .local v1, child:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 231
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    check-cast v1, Landroid/widget/TextView;

    .end local v1           #child:Landroid/view/View;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 234
    :cond_0
    invoke-virtual {p1, p4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_1
    return-void
.end method

.method private writeDBdataToFile()V
    .locals 10

    .prologue
    .line 570
    const-string v0, ""

    .line 574
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9ASdbData.dat"

    .line 576
    const-string v7, "xT9DB"

    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 577
    .local v1, dir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 578
    .local v4, mfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 580
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 586
    const/4 v5, 0x0

    .line 588
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 589
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_BUF:[B

    const/4 v8, 0x0

    const/16 v9, 0x2800

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 595
    if-eqz v6, :cond_3

    .line 597
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v6

    .line 606
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 581
    :catch_0
    move-exception v3

    .line 582
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 598
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 599
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 600
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 590
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 591
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 595
    if-eqz v5, :cond_1

    .line 597
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 598
    :catch_3
    move-exception v2

    .line 599
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 592
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    move-object v2, v7

    .line 593
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 595
    if-eqz v5, :cond_1

    .line 597
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 598
    :catch_5
    move-exception v2

    .line 599
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 595
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_2

    .line 597
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 600
    :cond_2
    :goto_5
    throw v7

    .line 598
    :catch_6
    move-exception v2

    .line 599
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 595
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 592
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v7

    move-object v2, v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 590
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
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x11

    const/16 v5, 0x8

    const/high16 v4, -0x100

    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, AUTOSUBS_TITLE:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CurrentLanguage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->CurrentLanguage:Ljava/lang/String;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->CurrentLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    const v2, 0x7f030010

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->setContentView(I)V

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 168
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAutoSubs_empty:Landroid/widget/LinearLayout;

    .line 169
    const v2, 0x7f07002a

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainView:Landroid/widget/LinearLayout;

    .line 171
    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 172
    .local v1, addwordsView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 173
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAddwordsViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAddwordsViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    :cond_0
    const v2, 0x7f070032

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 180
    const v2, 0x7f070033

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAddSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 181
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAddSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v2, v4, v6, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V

    .line 184
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mAddSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setVisibility(I)V

    .line 186
    const v2, 0x7f070034

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMenuSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 187
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMenuSoftKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mRightBottomListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v2, v4, v6, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->setSoftKeyOption(Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;IILandroid/view/View$OnClickListener;)V

    .line 189
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mSoftKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mTouchSlop:I

    .line 205
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 650
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 651
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 484
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 486
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->setResult(I)V

    .line 487
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->finish()V

    .line 488
    const/4 v0, 0x1

    .line 490
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

    .line 434
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 445
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 436
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->addEntry()V

    move v0, v1

    .line 437
    goto :goto_0

    .line 439
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->editEntry()V

    move v0, v1

    .line 440
    goto :goto_0

    .line 442
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->deleteEntry()V

    move v0, v1

    .line 443
    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mIsEditMode:Z

    .line 656
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 657
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 419
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 420
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 421
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v4

    .line 428
    :goto_0
    return v0

    .line 426
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020021

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 428
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 426
    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 662
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 663
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "inSettings"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->sendBroadcast(Landroid/content/Intent;)V

    .line 666
    sget-boolean v6, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-eqz v6, :cond_0

    .line 667
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->readDBdataFromFile()V

    .line 670
    :cond_0
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->ASDB_BUF:[B

    const/16 v7, 0x2800

    invoke-static {v6, v7}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v3

    .line 671
    .local v3, errorcode:S
    if-eqz v3, :cond_1

    .line 675
    :cond_1
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v3

    .line 676
    if-eqz v3, :cond_2

    .line 679
    :cond_2
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v3

    .line 680
    if-eqz v3, :cond_3

    .line 684
    :cond_3
    const v6, 0x7f07002e

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainListView:Landroid/widget/ListView;

    .line 685
    new-instance v6, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    const v7, 0x7f030013

    invoke-direct {v6, p0, p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    .line 686
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 687
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 688
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mMainListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 690
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->displayAllEntries()V

    .line 692
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, AUTOSUBS_TITLE:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 694
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v6, "select_language"

    const-string v7, "-1"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 695
    .local v2, currentLang:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_4

    .line 696
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CurrentLanguage"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->CurrentLanguage:Ljava/lang/String;

    .line 702
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->CurrentLanguage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->setTitle(Ljava/lang/CharSequence;)V

    .line 704
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 705
    return-void

    .line 698
    :cond_4
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v1

    .line 699
    .local v1, T9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;
    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->CurrentLanguage:Ljava/lang/String;

    goto :goto_0
.end method
