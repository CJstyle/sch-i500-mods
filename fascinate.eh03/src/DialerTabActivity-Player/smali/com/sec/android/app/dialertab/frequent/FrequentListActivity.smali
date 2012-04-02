.class public Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;
.super Landroid/app/Activity;
.source "FrequentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;,
        Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;,
        Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String; = null

.field public static final FAVORITE_TAG:I = 0x1

.field public static final FERQUENT_PREF_NAME:Ljava/lang/String; = "frequent_pref"

.field public static final FREQUENT_TAG:I = 0x2

.field public static final KEY_IS_FIRST_VIEW:Ljava/lang/String; = "isFrequent"

.field public static final MAKE_LIST_FINISH:I = 0x1

.field public static final NO_ITEM:I = -0x64

.field public static final PREF_KEY_ISFIRST:Ljava/lang/String; = "isfirst"

.field public static final PREF_KEY_VIEW_STATUS:Ljava/lang/String; = "view_status"

.field private static final QUERY_TOKEN:I = 0x35

.field public static final SEP_FAVORITE:I = -0xa

.field public static final SEP_FREQUENT:I = -0xf

.field private static final TAG:Ljava/lang/String; = "FrequentListActivity"


# instance fields
.field private final ACTION_CALL:I

.field private final ACTION_NONE:I

.field private final ACTION_SMS:I

.field private final CONTEXTMENU_BLOCKCONTACT:I

.field private final CONTEXTMENU_CALL:I

.field private final CONTEXTMENU_EDITNUMBER:I

.field private final CONTEXTMENU_REMOVELOG:I

.field private final CONTEXTMENU_SAVECONTACT:I

.field private final CONTEXTMENU_SENDMSG:I

.field private final CONTEXTMENU_UNBLOCKCONTACT:I

.field private final CONTEXTMENU_VIEWCONTACT:I

.field private final IDX_CREATE:I

.field private final IDX_UPDATE:I

.field private ROW_HEIGHT:I

.field private bResumeFromBackKey:Z

.field private bSweep:Z

.field private gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

.field private gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

.field private mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

.field private mCenterFlag:I

.field private mCenterSepPos:I

.field private volatile mDone:Z

.field private mFavoCursor:Landroid/database/Cursor;

.field private mFavoriteCnt:I

.field private mFavoriteListCnt:I

.field private mFreqCursor:Landroid/database/Cursor;

.field private mFrequentCnt:I

.field private mFrequentListCnt:I

.field mGridViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mGridViewOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mGridViewSeparator:I

.field private mGridlayout:Landroid/widget/LinearLayout;

.field public mHandler:Landroid/os/Handler;

.field private mIsFirstFrequent:Z

.field private mIsFrequentView:Z

.field private mIsGrid:Z

.field private mIsSend:Z

.field mItemContactId:Ljava/lang/Integer;

.field protected mItemIndex:I

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mListViewOnItemLongClickListenter:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mMCursor:Landroid/database/MergeCursor;

.field private mMainListView:Landroid/widget/ListView;

.field private mMaximumVelocity:I

.field private mPhoneNumber:Ljava/lang/String;

.field private mQueryHandler:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;

.field private mStrNumber:Ljava/lang/String;

.field private mTouchXPosition:F

.field private mTouchYPosition:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVoiceMailNumber:Ljava/lang/String;

.field private mstrName:Ljava/lang/String;

.field private tvFirstNoitem:Landroid/widget/TextView;

.field private tvFirstSeparator:Landroid/widget/TextView;

.field private tvSecondNoitem:Landroid/widget/TextView;

.field private tvSecondSeparator:Landroid/widget/TextView;

.field viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "_id"

    .line 174
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 179
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "starred"

    aput-object v1, v0, v4

    const-string v1, "lookup"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name_reverse"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->IDX_CREATE:I

    .line 93
    iput v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->IDX_UPDATE:I

    .line 94
    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    .line 95
    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    .line 96
    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentListCnt:I

    .line 97
    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteListCnt:I

    .line 103
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFirstFrequent:Z

    .line 104
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    .line 107
    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->ACTION_NONE:I

    .line 108
    iput v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->ACTION_CALL:I

    .line 109
    iput v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->ACTION_SMS:I

    .line 118
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvFirstSeparator:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvSecondSeparator:Landroid/widget/TextView;

    .line 120
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvFirstNoitem:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvSecondNoitem:Landroid/widget/TextView;

    .line 122
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    .line 126
    const/16 v0, 0xa0

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->ROW_HEIGHT:I

    .line 131
    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridViewSeparator:I

    .line 132
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->bResumeFromBackKey:Z

    .line 150
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    .line 160
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    .line 161
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridlayout:Landroid/widget/LinearLayout;

    .line 162
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    .line 163
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    .line 164
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    .line 165
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->bSweep:Z

    .line 169
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    .line 314
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsSend:Z

    .line 467
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridViewOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 516
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$2;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1050
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mListViewOnItemLongClickListenter:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1203
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1246
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$5;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mHandler:Landroid/os/Handler;

    .line 1299
    iput v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTEXTMENU_CALL:I

    .line 1300
    iput v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTEXTMENU_SENDMSG:I

    .line 1301
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTEXTMENU_EDITNUMBER:I

    .line 1302
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTEXTMENU_VIEWCONTACT:I

    .line 1303
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTEXTMENU_SAVECONTACT:I

    .line 1304
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTEXTMENU_BLOCKCONTACT:I

    .line 1305
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTEXTMENU_UNBLOCKCONTACT:I

    .line 1306
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTEXTMENU_REMOVELOG:I

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mCenterSepPos:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFrequentView:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFrequentView:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mCenterFlag:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Landroid/database/MergeCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->bSweep:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mDone:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->loadPref()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsSend:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mstrName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridViewSeparator:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    return-object v0
.end method

.method private callOrSmsContact(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v7, "data1"

    const-string v6, "FrequentListActivty"

    .line 1499
    const/4 v0, 0x0

    .line 1503
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1556
    :goto_0
    return-void

    .line 1508
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->contact_id:I

    if-eqz v1, :cond_2

    .line 1509
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->contact_id:I

    .line 1519
    :goto_1
    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->queryPhoneNumbers(J)Landroid/database/Cursor;

    move-result-object v1

    .line 1521
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 1523
    :cond_1
    const-string v0, "FrequentListActivty"

    const-string v0, "phonesCursor == null || phonesCursor.getCount() == 0"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1512
    :cond_2
    if-ne p1, v3, :cond_3

    .line 1513
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v5

    goto :goto_1

    .line 1514
    :cond_3
    if-ne p1, v4, :cond_4

    .line 1515
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    move v1, v5

    goto :goto_1

    .line 1525
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 1527
    const-string v0, "data1"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1540
    :cond_6
    :goto_2
    if-nez v0, :cond_a

    .line 1541
    if-ne p1, v4, :cond_9

    move v0, v3

    .line 1544
    :goto_3
    new-instance v2, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;

    invoke-direct {v2, p0, v1, v0}, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1546
    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->show()V

    goto :goto_0

    .line 1529
    :cond_7
    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1530
    :cond_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1531
    const-string v2, "is_super_primary"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 1533
    const-string v0, "data1"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    move v0, v5

    .line 1541
    goto :goto_3

    .line 1548
    :cond_a
    if-ne p1, v3, :cond_b

    .line 1549
    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1550
    :cond_b
    if-ne p1, v4, :cond_c

    .line 1551
    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1553
    :cond_c
    const-string v0, "FrequentListActivty"

    const-string v0, "ACTION_NONE"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getGridRowCount(I)I
    .locals 2
    .parameter "cursorCount"

    .prologue
    .line 1041
    const/4 v0, 0x0

    .line 1042
    .local v0, rowCount:I
    rem-int/lit8 v1, p0, 0x3

    if-eqz v1, :cond_0

    .line 1043
    div-int/lit8 v1, p0, 0x3

    add-int/lit8 v0, v1, 0x1

    .line 1047
    :goto_0
    return v0

    .line 1045
    :cond_0
    div-int/lit8 v0, p0, 0x3

    goto :goto_0
.end method

.method public static getIsFrequentView(III)Z
    .locals 1
    .parameter "position"
    .parameter "centerSepPos"
    .parameter "centerFlag"

    .prologue
    .line 587
    sparse-switch p2, :sswitch_data_0

    .line 603
    const/4 v0, 0x1

    .line 605
    .local v0, isFrequentView:Z
    :goto_0
    return v0

    .line 589
    .end local v0           #isFrequentView:Z
    :sswitch_0
    if-ge p1, p0, :cond_0

    .line 590
    const/4 v0, 0x0

    .restart local v0       #isFrequentView:Z
    goto :goto_0

    .line 592
    .end local v0           #isFrequentView:Z
    :cond_0
    const/4 v0, 0x1

    .line 594
    .restart local v0       #isFrequentView:Z
    goto :goto_0

    .line 596
    .end local v0           #isFrequentView:Z
    :sswitch_1
    if-ge p1, p0, :cond_1

    .line 597
    const/4 v0, 0x1

    .restart local v0       #isFrequentView:Z
    goto :goto_0

    .line 599
    .end local v0           #isFrequentView:Z
    :cond_1
    const/4 v0, 0x0

    .line 601
    .restart local v0       #isFrequentView:Z
    goto :goto_0

    .line 587
    nop

    :sswitch_data_0
    .sparse-switch
        -0xf -> :sswitch_1
        -0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static getSortOrder([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "projectionType"

    .prologue
    .line 817
    const-string v0, "display_name COLLATE LOCALIZED ASC"

    return-object v0
.end method

.method private loadPref()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    const-string v1, "frequent_pref"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 407
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "isfirst"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFirstFrequent:Z

    .line 408
    const-string v1, "view_status"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    .line 409
    return-void
.end method

.method private openSaveToDialog()V
    .locals 3

    .prologue
    .line 1278
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050001

    new-instance v2, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$7;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1295
    return-void
.end method

.method private queryPhoneNumbers(J)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1486
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1487
    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1489
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "data1"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const-string v3, "mimetype=?"

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "vnd.android.cursor.item/phone_v2"

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1492
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1495
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v5

    goto :goto_0
.end method

.method private saveViewStatusPreference()V
    .locals 4

    .prologue
    .line 398
    const-string v2, "frequent_pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 399
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 400
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "view_status"

    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 401
    const-string v2, "isfirst"

    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFirstFrequent:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 402
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 403
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x35

    const/4 v2, 0x0

    .line 807
    const-string v0, "FreqTAG"

    const-string v3, "startQuery()"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->setLoading(Z)V

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mQueryHandler:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;->cancelOperation(I)V

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mQueryHandler:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$Frequent;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-void
.end method


# virtual methods
.method public clickHandler(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1027
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1039
    :goto_0
    return-void

    .line 1029
    :pswitch_0
    const-string v0, "clickhandler"

    const-string v1, "click"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1027
    :pswitch_data_0
    .packed-switch 0x7f0600a8
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    .line 611
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-eqz v7, :cond_0

    .line 612
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 646
    :goto_0
    return v7

    .line 615
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_1

    .line 616
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 618
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 621
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 622
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 624
    .local v6, y:F
    packed-switch v0, :pswitch_data_0

    .line 646
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 626
    :pswitch_1
    iput v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mTouchXPosition:F

    .line 627
    iput v6, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mTouchYPosition:F

    goto :goto_1

    .line 634
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 635
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v7, 0x3e8

    iget v8, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v3, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 636
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    float-to-int v1, v7

    .line 637
    .local v1, initialXVelocity:I
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    float-to-int v2, v7

    .line 638
    .local v2, initialYVelocity:I
    iget v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mTouchXPosition:F

    sub-float v5, v7, v4

    .line 642
    .local v5, xMove:F
    iget-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 643
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 644
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1561
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 1565
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-eqz v0, :cond_0

    .line 1566
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridViewSeparator:I

    if-ne v0, v1, :cond_2

    .line 1567
    iput-boolean v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFrequentView:Z

    .line 1572
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1683
    :cond_1
    :goto_1
    return v7

    .line 1569
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFrequentView:Z

    goto :goto_0

    .line 1576
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->callOrSmsContact(I)V

    goto :goto_1

    .line 1580
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->editCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1584
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->openSaveToDialog()V

    goto :goto_1

    .line 1588
    :pswitch_3
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFrequentView:Z

    if-eqz v0, :cond_4

    .line 1589
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-nez v0, :cond_3

    .line 1590
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemIndex:I

    invoke-virtual {v0, v1}, Landroid/database/MergeCursor;->moveToPosition(I)Z

    .line 1591
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    const-string v1, "contactid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1592
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {v1, v0}, Landroid/database/MergeCursor;->getInt(I)I

    move-result v0

    .line 1599
    :goto_2
    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->viewContact(Landroid/content/Context;I)V

    goto :goto_1

    .line 1594
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1595
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    const-string v1, "contactid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1596
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_2

    .line 1601
    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-nez v0, :cond_5

    .line 1602
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemIndex:I

    invoke-virtual {v0, v1}, Landroid/database/MergeCursor;->moveToPosition(I)Z

    .line 1603
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1604
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {v1, v0}, Landroid/database/MergeCursor;->getInt(I)I

    move-result v0

    .line 1609
    :goto_3
    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->viewContact(Landroid/content/Context;I)V

    goto :goto_1

    .line 1606
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1607
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_3

    .line 1617
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->callOrSmsContact(I)V

    goto :goto_1

    .line 1622
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1626
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1630
    :pswitch_7
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFrequentView:Z

    if-eqz v0, :cond_9

    .line 1632
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1633
    const-string v1, "frequent"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1635
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1636
    const-string v1, "-1"

    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    .line 1645
    :cond_6
    :goto_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1646
    const-string v2, "number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1647
    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1648
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1649
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1650
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1651
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->setAdapter()V

    .line 1652
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->onResume()V

    .line 1653
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-nez v0, :cond_1

    .line 1654
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    goto/16 :goto_1

    .line 1637
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1638
    const-string v1, "-2"

    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    goto :goto_4

    .line 1639
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1640
    const-string v1, "-3"

    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    goto :goto_4

    .line 1657
    :cond_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1658
    const-string v1, "starred"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1661
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-nez v1, :cond_a

    .line 1662
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    iget v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemIndex:I

    invoke-virtual {v1, v2}, Landroid/database/MergeCursor;->moveToPosition(I)Z

    .line 1664
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {v1, v3}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v1

    .line 1665
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {v3, v4}, Landroid/database/MergeCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    move-wide v10, v1

    move-wide v2, v10

    move-object v1, v9

    .line 1673
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v2, v3, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1, v0, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1674
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->setAdapter()V

    .line 1675
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->onResume()V

    .line 1676
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-nez v0, :cond_1

    .line 1677
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    goto/16 :goto_1

    .line 1667
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1668
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1669
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1670
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===> index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", contactId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lookupkey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v3

    move-wide v10, v1

    move-wide v2, v10

    move-object v1, v9

    goto :goto_5

    .line 1572
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 769
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 770
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->requestWindowFeature(I)Z

    .line 771
    const v2, 0x7f030019

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->setContentView(I)V

    .line 772
    const v2, 0x7f0600c5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridlayout:Landroid/widget/LinearLayout;

    .line 774
    const v2, 0x7f0600c6

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvFirstSeparator:Landroid/widget/TextView;

    .line 775
    const v2, 0x7f0600c9

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvSecondSeparator:Landroid/widget/TextView;

    .line 776
    const v2, 0x7f0600c7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvFirstNoitem:Landroid/widget/TextView;

    .line 777
    const v2, 0x7f0600ca

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvSecondNoitem:Landroid/widget/TextView;

    .line 778
    const v2, 0x7f0600c8

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    .line 779
    const v2, 0x7f0600cb

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    .line 780
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 781
    .local v1, draw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->ROW_HEIGHT:I

    .line 783
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    if-nez v2, :cond_0

    .line 784
    const v2, 0x7f0600d0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    .line 787
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridlayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    .line 790
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->loadPref()V

    .line 791
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-eqz v2, :cond_2

    .line 792
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 793
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 799
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 800
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMaximumVelocity:I

    .line 802
    new-instance v2, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mQueryHandler:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;

    .line 803
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVoiceMailNumber:Ljava/lang/String;

    .line 804
    return-void

    .line 795
    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 796
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f090037

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v3, ""

    .line 1318
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1321
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    if-ne p2, v0, :cond_14

    .line 1322
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemIndex:I

    if-nez v0, :cond_1

    .line 1481
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemIndex:I

    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mCenterSepPos:I

    if-eq v0, v1, :cond_0

    .line 1328
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemIndex:I

    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mCenterSepPos:I

    iget v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mCenterFlag:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getIsFrequentView(III)Z

    move-result v0

    .line 1330
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    if-ne p2, v1, :cond_4

    .line 1331
    :cond_2
    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridViewSeparator:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1333
    const-string v0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====> mGridViewSeparator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridViewSeparator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const-string v0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====> isFirstFrequent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 1336
    :cond_3
    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridViewSeparator:I

    if-ne v1, v4, :cond_4

    .line 1338
    const-string v0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====> mGridViewSeparator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridViewSeparator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const-string v0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====> isFirstFrequent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1344
    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->bSweep:Z

    if-nez v1, :cond_0

    .line 1346
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->bSweep:Z

    .line 1347
    if-eqz v0, :cond_e

    .line 1348
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mstrName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 1349
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1354
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mstrName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mstrName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mstrName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1358
    :cond_5
    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1352
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mstrName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_2

    .line 1363
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCheckInvalidNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1364
    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1368
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1369
    invoke-interface {p1, v6, v4, v6, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1379
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCustomerServiceNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1382
    const/4 v0, 0x2

    const v1, 0x7f09001a

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1383
    const/4 v0, 0x3

    const v1, 0x7f090016

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1386
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemContactId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_c

    .line 1388
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1389
    const/4 v0, 0x5

    const v1, 0x7f090018

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1400
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1402
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1403
    const-string v0, "reject_number=?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1404
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v6

    .line 1405
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.callsetting.allcalls/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1407
    if-eqz v0, :cond_d

    .line 1414
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1420
    :cond_b
    :goto_4
    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1394
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1395
    const/4 v0, 0x4

    const v1, 0x7f090017

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_3

    .line 1416
    :cond_d
    const-string v0, "FrequentListActivty"

    const-string v1, "reject cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1424
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mstrName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1426
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 1431
    const v0, 0x7f09005c

    invoke-interface {p1, v6, v4, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1435
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1436
    const/4 v0, 0x2

    const v1, 0x7f09001a

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1437
    const/4 v0, 0x3

    const v1, 0x7f090016

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1440
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mstrName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    .line 1442
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1443
    const/4 v0, 0x5

    const v1, 0x7f090018

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1456
    :cond_10
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1458
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1459
    const-string v0, "reject_number=?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1460
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v6

    .line 1461
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.callsetting.allcalls/reject_num"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1463
    if-eqz v0, :cond_11

    .line 1470
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1473
    :cond_11
    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1450
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mStrNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1451
    const/4 v0, 0x4

    const v1, 0x7f090017

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_5

    .line 1477
    :cond_13
    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->bSweep:Z

    goto/16 :goto_0

    :cond_14
    move v0, v6

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 1100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1101
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1102
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1103
    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    if-nez v1, :cond_0

    .line 1104
    const v1, 0x7f0600e2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1107
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 581
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 582
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 414
    packed-switch p1, :pswitch_data_0

    .line 420
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 416
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->bResumeFromBackKey:Z

    .line 417
    const/4 v0, 0x0

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x1

    const-string v5, "isFrequent"

    .line 1151
    .line 1152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 1200
    :goto_0
    return v0

    .line 1154
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-eqz v0, :cond_0

    .line 1155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1156
    const-string v1, "isFrequent"

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFirstFrequent:Z

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1157
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 1158
    goto :goto_0

    .line 1160
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1161
    const-string v1, "isFrequent"

    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFirstFrequent:Z

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1162
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 1163
    goto :goto_0

    .line 1167
    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFirstFrequent:Z

    if-eqz v0, :cond_1

    .line 1168
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFirstFrequent:Z

    .line 1169
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->saveViewStatusPreference()V

    .line 1174
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1175
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->setAdapter()V

    .line 1176
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->onResume()V

    move v0, v3

    .line 1177
    goto :goto_0

    .line 1171
    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFirstFrequent:Z

    .line 1172
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->saveViewStatusPreference()V

    goto :goto_1

    .line 1179
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    const-string v1, "additional"

    const-string v2, "favorite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 1182
    goto :goto_0

    .line 1184
    :pswitch_3
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-eqz v0, :cond_2

    .line 1185
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    .line 1186
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->saveViewStatusPreference()V

    .line 1187
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1188
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1195
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1196
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->setAdapter()V

    .line 1197
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->onResume()V

    move v0, v3

    .line 1198
    goto :goto_0

    .line 1190
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    .line 1191
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->saveViewStatusPreference()V

    .line 1192
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1152
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600e1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 364
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->stopRequestProcessing()V

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;

    .line 372
    .local v0, adapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;
    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->stopRequestProcessing()V

    .line 376
    .end local v0           #adapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    if-eqz v1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;

    .line 378
    .restart local v0       #adapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;
    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->stopRequestProcessing()V

    .line 382
    .end local v0           #adapter:Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->closeOptionsMenu()V

    .line 395
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f0600e2

    const/4 v5, 0x1

    .line 1112
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1115
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-eqz v3, :cond_0

    .line 1116
    iget v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    iget v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    add-int v1, v3, v4

    .line 1120
    .local v1, nCount:I
    :goto_0
    if-eqz v1, :cond_1

    .line 1121
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200d8

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1126
    :goto_1
    const v3, 0x7f0600e4

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200d7

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1127
    .local v0, isFrequent:Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFirstFrequent:Z

    if-eqz v3, :cond_2

    .line 1128
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1132
    :goto_2
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1134
    const v3, 0x7f0600e1

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200d5

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1136
    const v3, 0x7f0600e3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1137
    .local v2, viewChange:Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-nez v3, :cond_3

    .line 1138
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1139
    const v3, 0x7f0200dc

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1144
    :goto_3
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1146
    return v5

    .line 1118
    .end local v0           #isFrequent:Landroid/view/MenuItem;
    .end local v1           #nCount:I
    .end local v2           #viewChange:Landroid/view/MenuItem;
    :cond_0
    iget v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentListCnt:I

    iget v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteListCnt:I

    add-int v1, v3, v4

    .restart local v1       #nCount:I
    goto :goto_0

    .line 1123
    :cond_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1130
    .restart local v0       #isFrequent:Landroid/view/MenuItem;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    .line 1141
    .restart local v2       #viewChange:Landroid/view/MenuItem;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1142
    const v3, 0x7f0200dd

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 447
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 448
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-nez v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->bringToFront()V

    .line 456
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->setAdapter()V

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->bSweep:Z

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->clearCache()V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 465
    :cond_0
    return-void

    .line 453
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startScrollProcessing()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 425
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mListViewOnItemLongClickListenter:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setFocusable(Z)V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridViewOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setFocusable(Z)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mGridViewOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->setAdapter()V

    .line 442
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 1312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->bSweep:Z

    .line 1313
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1314
    return-void
.end method

.method protected setAdapter()V
    .locals 13

    .prologue
    .line 822
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$Frequent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 834
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v3, "starred=1"

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 839
    new-instance v10, Landroid/database/MatrixCursor;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    invoke-direct {v10, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 840
    .local v10, frequentZeroCursor:Landroid/database/MatrixCursor;
    new-instance v8, Landroid/database/MatrixCursor;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 842
    .local v8, favoriteZeroCursor:Landroid/database/MatrixCursor;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    .line 844
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentListCnt:I

    .line 851
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    .line 853
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteListCnt:I

    .line 860
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsGrid:Z

    if-nez v0, :cond_e

    .line 861
    new-instance v9, Landroid/database/MatrixCursor;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    invoke-direct {v9, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 862
    .local v9, frequentSep:Landroid/database/MatrixCursor;
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-15"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 863
    new-instance v7, Landroid/database/MatrixCursor;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    invoke-direct {v7, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 864
    .local v7, favoriteSep:Landroid/database/MatrixCursor;
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-10"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    invoke-virtual {v7, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 867
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    if-nez v0, :cond_3

    .line 868
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    .line 869
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-100"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    invoke-virtual {v10, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 875
    :cond_2
    iput-object v10, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 879
    :cond_3
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    if-nez v0, :cond_5

    .line 880
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    .line 881
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-100"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 882
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 887
    :cond_4
    iput-object v8, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    .line 888
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 893
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFirstFrequent:Z

    if-eqz v0, :cond_b

    .line 894
    const/4 v0, 0x4

    new-array v6, v0, [Landroid/database/Cursor;

    const/4 v0, 0x0

    aput-object v9, v6, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v7, v6, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    aput-object v1, v6, v0

    .line 898
    .local v6, cs:[Landroid/database/Cursor;
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {v0}, Landroid/database/MergeCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {v0}, Landroid/database/MergeCursor;->close()V

    .line 903
    :cond_6
    new-instance v0, Landroid/database/MergeCursor;

    invoke-direct {v0, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 907
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFirstFrequent:Z

    if-eqz v0, :cond_c

    .line 908
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mCenterSepPos:I

    .line 909
    const/16 v0, -0xa

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mCenterFlag:I

    .line 915
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    if-eqz v0, :cond_d

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->setLoading(Z)V

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mCenterFlag:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->setCenterSepFlag(I)V

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    iget v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mCenterSepPos:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->setCenterSepPos(I)V

    .line 919
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->setLoading(Z)V

    .line 929
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 1025
    .end local v6           #cs:[Landroid/database/Cursor;
    .end local v7           #favoriteSep:Landroid/database/MatrixCursor;
    .end local v9           #frequentSep:Landroid/database/MatrixCursor;
    :cond_8
    :goto_5
    return-void

    .line 846
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    .line 847
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentListCnt:I

    goto/16 :goto_0

    .line 855
    :cond_a
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    .line 856
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteListCnt:I

    goto/16 :goto_1

    .line 896
    .restart local v7       #favoriteSep:Landroid/database/MatrixCursor;
    .restart local v9       #frequentSep:Landroid/database/MatrixCursor;
    :cond_b
    const/4 v0, 0x4

    new-array v6, v0, [Landroid/database/Cursor;

    const/4 v0, 0x0

    aput-object v7, v6, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v9, v6, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    aput-object v1, v6, v0

    .restart local v6       #cs:[Landroid/database/Cursor;
    goto/16 :goto_2

    .line 911
    :cond_c
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mCenterSepPos:I

    .line 912
    const/16 v0, -0xf

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mCenterFlag:I

    goto :goto_3

    .line 922
    :cond_d
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    iget v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mCenterSepPos:I

    iget v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mCenterFlag:I

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;II)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    if-eqz v0, :cond_7

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mAdapter:Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    goto :goto_4

    .line 932
    .end local v6           #cs:[Landroid/database/Cursor;
    .end local v7           #favoriteSep:Landroid/database/MatrixCursor;
    .end local v9           #frequentSep:Landroid/database/MatrixCursor;
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    if-eqz v0, :cond_f

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mMCursor:Landroid/database/MergeCursor;

    invoke-virtual {v0}, Landroid/database/MergeCursor;->close()V

    .line 935
    :cond_f
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->bResumeFromBackKey:Z

    if-eqz v0, :cond_10

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->bResumeFromBackKey:Z

    .line 940
    :cond_10
    const/4 v12, 0x0

    .line 941
    .local v12, rowCount:I
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mIsFirstFrequent:Z

    if-eqz v0, :cond_16

    .line 942
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvFirstSeparator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvSecondSeparator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    if-eqz v0, :cond_11

    .line 946
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getGridRowCount(I)I

    move-result v12

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 948
    .local v11, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->ROW_HEIGHT:I

    mul-int/2addr v0, v12

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {v0, v11}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 952
    .end local v11           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_11
    const/4 v12, 0x0

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    if-eqz v0, :cond_12

    .line 954
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getGridRowCount(I)I

    move-result v12

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 956
    .restart local v11       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->ROW_HEIGHT:I

    mul-int/2addr v0, v12

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {v0, v11}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    .end local v11           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    if-eqz v0, :cond_13

    .line 960
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    if-lez v0, :cond_14

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    new-instance v1, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvFirstNoitem:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 970
    :cond_13
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    if-eqz v0, :cond_8

    .line 971
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    if-lez v0, :cond_15

    .line 972
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    new-instance v1, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 973
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setVisibility(I)V

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvSecondNoitem:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 965
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvFirstNoitem:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvFirstNoitem:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setVisibility(I)V

    goto :goto_6

    .line 976
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvSecondNoitem:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvSecondNoitem:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setVisibility(I)V

    goto/16 :goto_5

    .line 983
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvFirstSeparator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvSecondSeparator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    if-eqz v0, :cond_17

    .line 987
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getGridRowCount(I)I

    move-result v12

    .line 988
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 989
    .restart local v11       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->ROW_HEIGHT:I

    mul-int/2addr v0, v12

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 990
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {v0, v11}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 994
    .end local v11           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_17
    const/4 v12, 0x0

    .line 995
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    if-eqz v0, :cond_18

    .line 996
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getGridRowCount(I)I

    move-result v12

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 998
    .restart local v11       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->ROW_HEIGHT:I

    mul-int/2addr v0, v12

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 999
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    invoke-virtual {v0, v11}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    .end local v11           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    if-eqz v0, :cond_19

    .line 1002
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoriteCnt:I

    if-lez v0, :cond_1a

    .line 1003
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    new-instance v1, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFavoCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1004
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setVisibility(I)V

    .line 1005
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvFirstNoitem:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1012
    :cond_19
    :goto_7
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    if-eqz v0, :cond_8

    .line 1013
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFrequentCnt:I

    if-lez v0, :cond_1b

    .line 1014
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    new-instance v1, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mFreqCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, p0, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1015
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvSecondNoitem:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1007
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvFirstNoitem:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvFirstNoitem:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvFirstGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setVisibility(I)V

    goto :goto_7

    .line 1018
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvSecondNoitem:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->gvSecondGrid:Lcom/sec/android/app/dialertab/frequent/FrequentGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridView;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->tvSecondNoitem:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method protected showCallAnimation(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "context"
    .parameter "number"

    .prologue
    .line 357
    const v1, 0x7f040008

    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 358
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p3, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;ILjava/lang/String;Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 359
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 360
    return-void
.end method

.method protected showMessageAnimation(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "context"
    .parameter "number"

    .prologue
    .line 350
    const v1, 0x7f040009

    invoke-static {p2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 351
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, p3, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;ILjava/lang/String;Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 352
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 353
    return-void
.end method

.method public startScrollProcessing()V
    .locals 2

    .prologue
    .line 1259
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mDone:Z

    .line 1260
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$6;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1273
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1274
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1275
    return-void
.end method
