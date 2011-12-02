.class public Lcom/android/music/list/activity/MpListActivity;
.super Landroid/app/Activity;
.source "MpListActivity.java"

# interfaces
.implements Lcom/android/music/list/interfaces/MpHandlerInterface;
.implements Lcom/android/music/list/interfaces/MpCorePlayer;
.implements Lcom/android/music/common/util/OnLowBatteryListener;
.implements Lcom/android/music/list/interfaces/MusicOrientationChanger;


# static fields
.field protected static final CONTEXTMENU_ADD_TO_PLAYLIST:I = 0x3

.field protected static final CONTEXTMENU_DELETE:I = 0x0

.field protected static final CONTEXTMENU_SET_AS:I = 0x2

.field protected static final CONTEXTMENU_SHARE_TRACK_VIA:I = 0x1


# instance fields
.field protected IDX_ALARM_TONE:I

.field protected IDX_INDIVIDUAL_RINGTONE:I

.field protected IDX_VIDEO_CALL_RINGTONE:I

.field protected IDX_VOICE_CALL_RINGTONE:I

.field protected final SETAS_OPTION_POPUP_DIALOG:I

.field protected TAG:Ljava/lang/String;

.field protected activityCheck:Z

.field batteryMessageBox:Landroid/app/AlertDialog;

.field callMessageBox:Landroid/app/AlertDialog;

.field protected contextAlert:Landroid/app/AlertDialog;

.field protected contextMenuTitle:Ljava/lang/String;

.field deletePossible:Z

.field private deleteUri:Landroid/net/Uri;

.field protected itemIndex:I

.field private mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

.field protected mConditions:[Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mContextData:Lcom/android/music/common/data/MusicAddData;

.field public mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

.field private mDB:Lcom/android/music/common/data/MusicDB;

.field final mHandler:Landroid/os/Handler;

.field protected mHasCheck:Z

.field private mIndexOfMainListType:I

.field private mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field private mIsRemoved:Z

.field private mItemPosition:I

.field protected mListData:Lcom/android/music/list/data/MpListDisplayData;

.field protected mListTitleText:[Ljava/lang/String;

.field protected mListType:I

.field public mListView:Lcom/android/music/list/view/AbstractMpListView;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field protected mMediaScannerRunCheck:Z

.field protected mMenu:Landroid/view/Menu;

.field private mNoItemView:Landroid/view/View;

.field private mNoTrackView:Landroid/view/View;

.field private mOptionMenus:[Ljava/lang/String;

.field private mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPlayerButtonLayout:Landroid/widget/RelativeLayout;

.field private mSelectedPosition:I

.field protected mSubListType:I

.field private mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

.field protected mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

.field private optionMenuIcon:[I

.field private playerButton:Landroid/widget/Button;

.field protected ringtoneUri:Landroid/net/Uri;

.field private setAsRingtoneOptionNonVT:[I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->callMessageBox:Landroid/app/AlertDialog;

    .line 114
    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 128
    iput-boolean v2, p0, Lcom/android/music/list/activity/MpListActivity;->mMediaScannerRunCheck:Z

    .line 129
    const-string v0, "MpList"

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    .line 132
    iput v2, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexOfMainListType:I

    .line 133
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mDB:Lcom/android/music/common/data/MusicDB;

    .line 153
    iput-boolean v2, p0, Lcom/android/music/list/activity/MpListActivity;->deletePossible:Z

    .line 155
    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 156
    iput-boolean v2, p0, Lcom/android/music/list/activity/MpListActivity;->activityCheck:Z

    .line 166
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->optionMenuIcon:[I

    .line 189
    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 195
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/music/list/activity/MpListActivity;->SETAS_OPTION_POPUP_DIALOG:I

    .line 196
    iput v2, p0, Lcom/android/music/list/activity/MpListActivity;->itemIndex:I

    .line 197
    iput v2, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VOICE_CALL_RINGTONE:I

    .line 198
    iput v3, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VIDEO_CALL_RINGTONE:I

    .line 199
    iput v4, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_INDIVIDUAL_RINGTONE:I

    .line 200
    iput v5, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_ALARM_TONE:I

    .line 201
    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 203
    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 215
    new-instance v0, Lcom/android/music/list/activity/MpListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListActivity$1;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 2311
    new-instance v0, Lcom/android/music/list/activity/MpListActivity$19;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListActivity$19;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHandler:Landroid/os/Handler;

    .line 2474
    new-instance v0, Lcom/android/music/list/activity/MpListActivity$21;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListActivity$21;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2512
    new-array v0, v5, [I

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VOICE_CALL_RINGTONE:I

    aput v1, v0, v2

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_INDIVIDUAL_RINGTONE:I

    aput v1, v0, v3

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_ALARM_TONE:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->setAsRingtoneOptionNonVT:[I

    .line 2735
    new-instance v0, Lcom/android/music/list/activity/MpListActivity$22;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListActivity$22;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 2757
    new-instance v0, Lcom/android/music/list/activity/MpListActivity$23;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListActivity$23;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 2803
    new-instance v0, Lcom/android/music/list/activity/MpListActivity$24;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListActivity$24;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 166
    :array_0
    .array-data 0x4
        0x27t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/music/list/activity/MpListActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->playerButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/list/activity/MpListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mPlayerButtonLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/music/list/activity/MpListActivity;)Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/music/list/activity/MpListActivity;)Lcom/android/music/common/util/BatteryChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/music/list/activity/MpListActivity;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/music/list/activity/MpListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/list/activity/MpListActivity;)Lcom/android/music/common/data/MusicAddData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/list/activity/MpListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/music/list/activity/MpListActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/list/activity/MpListActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/music/list/activity/MpListActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->setAsRingtoneOptionNonVT:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/music/list/activity/MpListActivity;I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->setRingtone(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/music/list/activity/MpListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIsRemoved:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/music/list/activity/MpListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/music/list/activity/MpListActivity;->mIsRemoved:Z

    return p1
.end method

.method private initIndexer(Z)V
    .locals 10
    .parameter "first"

    .prologue
    const v9, 0x7f0c0021

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1512
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v5, :cond_2

    .line 1513
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 1514
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1518
    .local v0, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v5}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v3

    .line 1519
    .local v3, tempView:Landroid/view/View;
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/interfaces/MpSetViewInterface;

    const v6, 0x7f0c0022

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-interface {v5, v6}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setIndexView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    .line 1522
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v5}, Lcom/android/music/list/interfaces/MpSetViewInterface;->getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 1524
    if-eqz p1, :cond_0

    .line 1526
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5, v0}, Lcom/android/music/list/view/AbstractMpListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1527
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1529
    .local v1, fl:Landroid/widget/RelativeLayout;
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1532
    .end local v1           #fl:Landroid/widget/RelativeLayout;
    :cond_0
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v5}, Lcom/android/music/common/util/ListUtil;->isEnableFastScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1533
    const/4 v2, 0x0

    .line 1535
    .local v2, index:I
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1537
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v5}, Lcom/android/music/common/util/ListType;->getIndexerKeyIndex(I)I

    move-result v2

    .line 1542
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a006c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v2, v7}, Lcom/android/music/common/util/ListUtil;->getTwCursorIndexerByListType(ILandroid/database/Cursor;ILjava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 1545
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 1546
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 1547
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSubscrollLimit(I)V

    .line 1548
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 1550
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v5, v6}, Lcom/android/music/list/view/AbstractMpListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1551
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1552
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->bringToFront()V

    .line 1565
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    new-instance v6, Lcom/android/music/list/activity/MpListActivity$1indexEvent;

    iget-object v7, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct {v6, p0, v7}, Lcom/android/music/list/activity/MpListActivity$1indexEvent;-><init>(Lcom/android/music/list/activity/MpListActivity;Lcom/android/music/list/view/AbstractMpListView;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V

    .line 1582
    .end local v0           #containerParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #index:I
    .end local v3           #tempView:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1569
    :cond_2
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v5}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 1570
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v5}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v3

    .line 1571
    .restart local v3       #tempView:Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1574
    .restart local v0       #containerParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1575
    .local v4, vi:Landroid/widget/ListView;
    if-eqz p1, :cond_1

    .line 1576
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1577
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1579
    .restart local v1       #fl:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initListByID(I)V
    .locals 11
    .parameter "menuID"

    .prologue
    .line 1196
    invoke-static {p1}, Lcom/android/music/list/data/MpListDataController;->getListMenuData(I)Lcom/android/music/list/data/MpListDisplayData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    .line 1198
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    if-nez v0, :cond_0

    .line 1330
    .end local p1
    :goto_0
    return-void

    .line 1201
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1202
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    .line 1203
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v2}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1216
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getItemLayout()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1237
    :goto_1
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_2

    .line 1238
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 1241
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1267
    :goto_2
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-boolean v1, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/view/AbstractMpListView;->showCheck(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1268
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1270
    .local v8, buttonView:Landroid/view/View;
    const v0, 0x7f0c002b

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 1271
    .local v10, twoButtonLayout:Landroid/widget/RelativeLayout;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1272
    const v0, 0x7f0c002a

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1274
    .local v9, buttonlayout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1275
    const v0, 0x7f0c002d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1276
    .local v6, button1:Landroid/widget/Button;
    const v0, 0x7f0c002e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1277
    .local v7, button2:Landroid/widget/Button;
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/music/list/view/AbstractMpListView;->setSoftKey(ILandroid/widget/Button;Landroid/widget/Button;)V

    .line 1278
    invoke-virtual {p0, v8}, Lcom/android/music/list/activity/MpListActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1219
    .end local v6           #button1:Landroid/widget/Button;
    .end local v7           #button2:Landroid/widget/Button;
    .end local v8           #buttonView:Landroid/view/View;
    .end local v9           #buttonlayout:Landroid/widget/LinearLayout;
    .end local v10           #twoButtonLayout:Landroid/widget/RelativeLayout;
    :pswitch_1
    new-instance v0, Lcom/android/music/list/view/MpListOneLineView;

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListOneLineView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    goto/16 :goto_1

    .line 1223
    :pswitch_2
    new-instance v0, Lcom/android/music/list/view/MpListThumnailOneLineView;

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListThumnailOneLineView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    goto/16 :goto_1

    .line 1227
    :pswitch_3
    new-instance v0, Lcom/android/music/list/view/MpListThumnailTwoLineView;

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListThumnailTwoLineView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    goto/16 :goto_1

    .line 1231
    :pswitch_4
    new-instance v0, Lcom/android/music/list/view/MpListGroupView;

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListGroupView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    goto/16 :goto_1

    .line 1243
    :pswitch_5
    new-instance v0, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1248
    :pswitch_6
    new-instance v0, Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1253
    :pswitch_7
    new-instance v0, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1257
    :pswitch_8
    new-instance v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-direct {v0, p0, p1}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1261
    :pswitch_9
    new-instance v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    invoke-direct {v0, p0, p1}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1279
    :cond_3
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 1282
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1287
    .restart local v8       #buttonView:Landroid/view/View;
    const v0, 0x7f0c002f

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity;->mPlayerButtonLayout:Landroid/widget/RelativeLayout;

    .line 1289
    const v0, 0x7f0c002a

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1291
    .restart local v9       #buttonlayout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1296
    const v0, 0x7f0c0030

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity;->playerButton:Landroid/widget/Button;

    .line 1298
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->playerButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/music/list/activity/MpListActivity$4;

    invoke-direct {v1, p0}, Lcom/android/music/list/activity/MpListActivity$4;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1322
    invoke-virtual {p0, v8}, Lcom/android/music/list/activity/MpListActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1324
    .end local v8           #buttonView:Landroid/view/View;
    .end local v9           #buttonlayout:Landroid/widget/LinearLayout;
    .restart local p1
    :cond_4
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1241
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const-string v12, "com.android.music"

    const-string v11, "activity"

    .line 660
    const/4 v9, 0x0

    .line 663
    .local v9, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 664
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "volume"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 667
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 668
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 669
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 670
    const-string v1, "external"

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 672
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 695
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v9

    .line 674
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 675
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "MpListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 679
    const-string v1, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 680
    .local v6, am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 689
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 690
    const-string v1, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 691
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRotateProcess()V
    .locals 3

    .prologue
    .line 511
    iget-boolean v2, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v2, :cond_0

    .line 532
    :goto_0
    return-void

    .line 516
    :cond_0
    new-instance v0, Lcom/android/music/common/manager/MusicAppManageFilter;

    invoke-direct {v0}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 518
    .local v0, filter:Lcom/android/music/common/manager/MusicAppManageFilter;
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 519
    .local v1, mSearchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    .line 521
    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getMainListType(I)I

    move-result v2

    iput v2, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 522
    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexOfMainListType:I

    iput v2, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 524
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 525
    const/16 v2, 0xa

    iput v2, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 530
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/music/common/manager/MusicAppManager;->launchDiscPlus(Landroid/content/Context;Lcom/android/music/common/manager/MusicAppManageFilter;)Z

    goto :goto_0
.end method

.method private setRingtone(I)Landroid/net/Uri;
    .locals 23
    .parameter "position"

    .prologue
    .line 2517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRingtone(position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    const/16 v20, 0x0

    .line 2521
    .local v20, ringtoneType:I
    const/16 v19, 0x0

    .line 2523
    .local v19, ringUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2525
    .local v22, strUri:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 2526
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2528
    .local v3, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "SetRingtone():strUri[%s],ringUri[%s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    const/4 v7, 0x1

    aput-object v19, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    const-string v4, "file://"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2530
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 2531
    .local v18, path:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 2532
    .local v10, audio_id:J
    sget-object v12, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2534
    .local v12, baseUri:Landroid/net/Uri;
    :try_start_0
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const-string v6, "_data = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v18, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2538
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_1

    .line 2539
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2540
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2542
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2544
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_3

    .line 2545
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const-string v6, "_data = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v18, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2549
    sget-object v12, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2551
    if-eqz v13, :cond_3

    .line 2552
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2553
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2555
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2590
    .end local v13           #c:Landroid/database/Cursor;
    :cond_3
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-eqz v4, :cond_4

    .line 2591
    invoke-static {v12, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 2592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRingtone(): ringUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    .end local v10           #audio_id:J
    .end local v12           #baseUri:Landroid/net/Uri;
    .end local v18           #path:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2597
    .local v21, strRingUri:Ljava/lang/String;
    const-string v4, "content://media/internal"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "content://media/external"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "content://media/internal"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "content://media/external"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2601
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/music/list/activity/MpListActivity;->updateContentValue(ILandroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2602
    const/4 v4, 0x0

    .line 2645
    :goto_1
    return-object v4

    .line 2558
    .end local v21           #strRingUri:Ljava/lang/String;
    .restart local v10       #audio_id:J
    .restart local v12       #baseUri:Landroid/net/Uri;
    .restart local v18       #path:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 2566
    .local v14, e:Landroid/database/sqlite/SQLiteFullException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 2572
    .local v9, am:Landroid/app/ActivityManager;
    const-string v4, "com.android.music"

    invoke-virtual {v9, v4}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2574
    .end local v9           #am:Landroid/app/ActivityManager;
    .end local v14           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v4

    move-object v14, v4

    .line 2582
    .local v14, e:Landroid/database/sqlite/SQLiteDiskIOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 2586
    .restart local v9       #am:Landroid/app/ActivityManager;
    const-string v4, "com.android.music"

    invoke-virtual {v9, v4}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2605
    .end local v9           #am:Landroid/app/ActivityManager;
    .end local v10           #audio_id:J
    .end local v12           #baseUri:Landroid/net/Uri;
    .end local v14           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v18           #path:Ljava/lang/String;
    .restart local v21       #strRingUri:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "strUri does not.... content://media/"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    const/4 v4, 0x0

    goto :goto_1

    .line 2613
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->IDX_VOICE_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->IDX_INDIVIDUAL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->IDX_VIDEO_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_9

    .line 2616
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->IDX_VOICE_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_c

    .line 2617
    const/16 v20, 0x1

    .line 2618
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 2639
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->IDX_VOICE_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->IDX_VIDEO_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_b

    .line 2641
    :cond_a
    const v4, 0x7f0a004e

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_b
    move-object/from16 v4, v19

    .line 2645
    goto/16 :goto_1

    .line 2620
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->IDX_INDIVIDUAL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_d

    .line 2621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v17

    .line 2623
    .local v17, mMusicDB:Lcom/android/music/common/data/MusicDB;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 2624
    .local v15, filePath:Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2625
    .local v16, intent:Landroid/content/Intent;
    const-string v4, "ringtone_filepath"

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2626
    const-string v4, "ringtone_uri"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2627
    const-string v4, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2629
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 2632
    .end local v15           #filePath:Ljava/lang/String;
    .end local v16           #intent:Landroid/content/Intent;
    .end local v17           #mMusicDB:Lcom/android/music/common/data/MusicDB;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->setActualDefaultVideoCallRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_2
.end method

.method private updateContentValue(ILandroid/net/Uri;)Z
    .locals 9
    .parameter "position"
    .parameter "uri"

    .prologue
    const-string v6, "is_ringtone"

    const-string v6, "com.android.music"

    const-string v6, "activity"

    const-string v6, "1"

    .line 2649
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateContentValue(position="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    const/4 v4, 0x0

    .line 2655
    .local v4, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2656
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2657
    .local v5, values:Landroid/content/ContentValues;
    iget v6, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_INDIVIDUAL_RINGTONE:I

    if-eq p1, v6, :cond_0

    iget v6, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VOICE_CALL_RINGTONE:I

    if-ne p1, v6, :cond_1

    .line 2659
    :cond_0
    const-string v6, "is_ringtone"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2667
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v3, p2, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2703
    :goto_1
    const/4 v4, 0x1

    .line 2716
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_2
    return v4

    .line 2660
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    iget v6, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VIDEO_CALL_RINGTONE:I

    if-ne p1, v6, :cond_2

    .line 2661
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v7, "IDX_VIDEO_CALL_RINGTONE, Don\'t update DB"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    const-string v6, "is_ringtone"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2704
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 2705
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2706
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalArgumentException occured :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    const/4 v4, 0x0

    .line 2714
    goto :goto_2

    .line 2664
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_3
    const-string v6, "is_alarm"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 2709
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 2710
    .local v2, ex:Ljava/lang/UnsupportedOperationException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2711
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UnsupportedOperationException occured :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    const/4 v4, 0x0

    goto :goto_2

    .line 2668
    .end local v2           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v1

    .line 2676
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_4
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2680
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2682
    .local v0, am:Landroid/app/ActivityManager;
    const-string v6, "com.android.music"

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2684
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_3
    move-exception v1

    .line 2692
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2694
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2696
    .restart local v0       #am:Landroid/app/ActivityManager;
    const-string v6, "com.android.music"

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method


# virtual methods
.method public GetCorePlayer()Lcom/android/music/player/service/ICorePlayerService;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    return-object v0
.end method

.method public bridge synthetic GetView(Ljava/lang/String;Z)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/music/list/activity/MpListActivity;->GetView(Ljava/lang/String;Z)Lcom/android/music/list/view/AbstractMpListView;

    move-result-object v0

    return-object v0
.end method

.method public GetView(Ljava/lang/String;Z)Lcom/android/music/list/view/AbstractMpListView;
    .locals 1
    .parameter "tag"
    .parameter "set"

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    return-object v0
.end method

.method public SetScreen(ILjava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "index"
    .parameter "title"
    .parameter "listType"
    .parameter "imgpath"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1169
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    .line 1170
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    .line 1171
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1172
    iput p3, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    .line 1173
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    .line 1174
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    aput-object p2, v0, v3

    .line 1176
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    .line 1177
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    aput-object p2, v0, v3

    .line 1178
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    aput-object p2, v0, v4

    .line 1179
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    aput-object p4, v0, v5

    .line 1181
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0, v4}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 1182
    invoke-direct {p0, p3}, Lcom/android/music/list/activity/MpListActivity;->initListByID(I)V

    .line 1183
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    .line 1184
    invoke-direct {p0, v4}, Lcom/android/music/list/activity/MpListActivity;->initIndexer(Z)V

    .line 1185
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/android/music/list/activity/MpListActivity;->setTitleLayout(II)V

    .line 1186
    return-void
.end method

.method public changeOrientation()V
    .locals 1

    .prologue
    .line 2849
    sget-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    if-eqz v0, :cond_0

    .line 2860
    :cond_0
    return-void
.end method

.method protected checkListFilter()V
    .locals 5

    .prologue
    .line 844
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/common/manager/MusicAppManager;->getManagFilter()Lcom/android/music/common/manager/MusicAppManageFilter;

    move-result-object v1

    .line 849
    .local v1, manageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    iget v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    iget v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 854
    :cond_0
    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v3}, Lcom/android/music/common/util/ListType;->getMainListType(I)I

    move-result v0

    .line 855
    .local v0, iMainListType:I
    iget v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    if-eq v0, v3, :cond_2

    .line 856
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 874
    .end local v0           #iMainListType:I
    :cond_1
    :goto_0
    return-void

    .line 865
    .restart local v0       #iMainListType:I
    :cond_2
    new-instance v2, Lcom/android/music/common/manager/MusicAppManageFilter;

    invoke-direct {v2}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 866
    .local v2, newManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    const/16 v3, 0xa

    iput v3, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 867
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 868
    iget v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    iput v3, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 869
    iget v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    iput v3, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 871
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/music/common/manager/MusicAppManager;->setManageFilter(Lcom/android/music/common/manager/MusicAppManageFilter;)V

    goto :goto_0
.end method

.method public checkPlayButtonEnable()V
    .locals 3

    .prologue
    .line 877
    iget-boolean v1, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v2, 0x19

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 890
    :try_start_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 891
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->playerButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/music/list/activity/MpListActivity$2;

    invoke-direct {v2, p0}, Lcom/android/music/list/activity/MpListActivity$2;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->playerButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/music/list/activity/MpListActivity$3;

    invoke-direct {v2, p0}, Lcom/android/music/list/activity/MpListActivity$3;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 912
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 913
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIndexOfMainListType()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexOfMainListType:I

    return v0
.end method

.method public getListTitle()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    return-object v0
.end method

.method public isMediaScannerRunCheck()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mMediaScannerRunCheck:Z

    return v0
.end method

.method public launchDiscPlus()V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/android/music/list/activity/MpListActivity;->onRotateProcess()V

    .line 507
    return-void
.end method

.method public onAccuracyChanged(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2828
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1591
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1592
    const/4 v3, 0x0

    .line 1595
    .local v3, fileUri:Landroid/net/Uri;
    const/4 v10, -0x1

    if-eq p2, v10, :cond_1

    .line 1667
    :cond_0
    :goto_0
    return-void

    .line 1598
    :cond_1
    const/4 v10, 0x1

    if-ne p1, v10, :cond_3

    .line 1601
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1603
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1608
    const-string v10, "data"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 1610
    .local v8, photo:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 1612
    const v10, 0x7f0c005d

    invoke-virtual {p0, v10}, Lcom/android/music/list/activity/MpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1613
    .local v4, imageView:Landroid/widget/ImageView;
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1614
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1615
    iget v10, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v11, 0x18

    if-eq v10, v11, :cond_2

    iget v10, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v11, 0x17

    if-eq v10, v11, :cond_2

    iget v10, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v11, 0x1a

    if-ne v10, v11, :cond_0

    .line 1618
    :cond_2
    iget-object v10, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v10, v8, v3}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setBimap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    goto :goto_0

    .line 1621
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v4           #imageView:Landroid/widget/ImageView;
    .end local v8           #photo:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v10, 0x2

    if-ne p1, v10, :cond_0

    .line 1623
    const-string v10, "uri-data"

    invoke-virtual {p3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1624
    .local v2, fileString:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1626
    if-nez v3, :cond_4

    .line 1628
    iget-object v10, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v11, "onActivityResult fileUri = null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1632
    :cond_4
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1633
    .local v7, mResolver:Landroid/content/ContentResolver;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1634
    .local v6, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x0

    .line 1639
    .local v9, tempimage:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v7, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 1640
    .local v5, in:Ljava/io/InputStream;
    const/4 v10, 0x2

    iput v10, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1642
    iget-object v10, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v10}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->getDefaultHeight()I

    move-result v10

    iput v10, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1643
    iget-object v10, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v10}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->getDefaultWidth()I

    move-result v10

    iput v10, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1647
    const/4 v10, 0x0

    invoke-static {v5, v10, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1655
    if-eqz v9, :cond_0

    .line 1656
    const v10, 0x7f0c005d

    invoke-virtual {p0, v10}, Lcom/android/music/list/activity/MpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1657
    .restart local v4       #imageView:Landroid/widget/ImageView;
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1658
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1659
    iget v10, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v11, 0x18

    if-eq v10, v11, :cond_5

    iget v10, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v11, 0x17

    if-eq v10, v11, :cond_5

    iget v10, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v11, 0x1a

    if-ne v10, v11, :cond_0

    .line 1662
    :cond_5
    iget-object v10, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v10, v9, v3}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setBimap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 1650
    .end local v4           #imageView:Landroid/widget/ImageView;
    .end local v5           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 1652
    .local v0, e:Ljava/io/FileNotFoundException;
    iget-object v10, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v11, "MpListActivity:onActivityResult:decodeStream failed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 19
    .parameter "item"

    .prologue
    .line 1939
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 1941
    .local v4, contextID:I
    packed-switch v4, :pswitch_data_0

    .line 2308
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v16

    return v16

    .line 1945
    :pswitch_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1947
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v16, v0

    sget v14, Lcom/android/music/list/view/AbstractMpListView;->mPlayingMediaId:I

    .line 1949
    .local v14, playingMediaId:I
    const/4 v13, 0x0

    .line 1950
    .local v13, pauseMedia:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1952
    .local v15, stopMedia:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z

    move-result v15

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 1958
    :goto_1
    if-nez v13, :cond_0

    .line 1959
    const-string v13, "No string"

    .line 1962
    :cond_0
    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/music/common/data/MusicAddData;->mId:I

    move/from16 v16, v0

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/activity/MpListActivity;->deletePossible:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 1965
    const v16, 0x7f0a00f3

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1966
    const v16, 0x1080027

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1967
    const v16, 0x7f0a00b0

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1970
    const v16, 0x7f0a00a5

    new-instance v17, Lcom/android/music/list/activity/MpListActivity$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpListActivity$6;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    move-object v0, v3

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1977
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1954
    :catch_0
    move-exception v16

    move-object/from16 v5, v16

    .line 1956
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1980
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_0

    .line 1987
    :pswitch_2
    const v16, 0x7f0a0030

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1988
    const v16, 0x1080027

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1989
    const v16, 0x7f0a00f6

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1990
    const v16, 0x7f0a00a5

    new-instance v17, Lcom/android/music/list/activity/MpListActivity$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpListActivity$8;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    move-object v0, v3

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f0a00a6

    new-instance v18, Lcom/android/music/list/activity/MpListActivity$7;

    invoke-direct/range {v18 .. v19}, Lcom/android/music/list/activity/MpListActivity$7;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2023
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2029
    :pswitch_3
    const v16, 0x7f0a0030

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2030
    const v16, 0x1080027

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2031
    const v16, 0x7f0a00f6

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2032
    const v16, 0x7f0a00a5

    new-instance v17, Lcom/android/music/list/activity/MpListActivity$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpListActivity$10;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    move-object v0, v3

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f0a00a6

    new-instance v18, Lcom/android/music/list/activity/MpListActivity$9;

    invoke-direct/range {v18 .. v19}, Lcom/android/music/list/activity/MpListActivity$9;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2071
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2078
    :pswitch_4
    const v16, 0x7f0a0037

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2079
    const v16, 0x1080027

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2080
    const v16, 0x7f0a00f4

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2081
    const v16, 0x7f0a00a5

    new-instance v17, Lcom/android/music/list/activity/MpListActivity$12;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpListActivity$12;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    move-object v0, v3

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f0a00a6

    new-instance v18, Lcom/android/music/list/activity/MpListActivity$11;

    invoke-direct/range {v18 .. v19}, Lcom/android/music/list/activity/MpListActivity$11;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2115
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2122
    :pswitch_5
    const v16, 0x7f0a0037

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2123
    const v16, 0x1080027

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2124
    const v16, 0x7f0a00f4

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2125
    const v16, 0x7f0a00a5

    new-instance v17, Lcom/android/music/list/activity/MpListActivity$14;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpListActivity$14;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    move-object v0, v3

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f0a00a6

    new-instance v18, Lcom/android/music/list/activity/MpListActivity$13;

    invoke-direct/range {v18 .. v19}, Lcom/android/music/list/activity/MpListActivity$13;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2168
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2174
    :pswitch_6
    const v16, 0x7f0a0037

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2175
    const v16, 0x1080027

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2176
    const v16, 0x7f0a00f4

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2177
    const v16, 0x7f0a00a5

    new-instance v17, Lcom/android/music/list/activity/MpListActivity$16;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpListActivity$16;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    move-object v0, v3

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f0a00a6

    new-instance v18, Lcom/android/music/list/activity/MpListActivity$15;

    invoke-direct/range {v18 .. v19}, Lcom/android/music/list/activity/MpListActivity$15;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2209
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2215
    :pswitch_7
    const v16, 0x7f0a0037

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2216
    const v16, 0x1080027

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2217
    const v16, 0x7f0a00f4

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2218
    const v16, 0x7f0a00a5

    new-instance v17, Lcom/android/music/list/activity/MpListActivity$18;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpListActivity$18;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    move-object v0, v3

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f0a00a6

    new-instance v18, Lcom/android/music/list/activity/MpListActivity$17;

    invoke-direct/range {v18 .. v19}, Lcom/android/music/list/activity/MpListActivity$17;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2253
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2263
    .end local v3           #builder:Landroid/app/AlertDialog$Builder;
    .end local v13           #pauseMedia:Ljava/lang/String;
    .end local v14           #playingMediaId:I
    .end local v15           #stopMedia:Z
    :pswitch_8
    const/4 v10, 0x0

    .line 2264
    .local v10, mediaUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v9

    .line 2265
    .local v9, mMusicDB:Lcom/android/music/common/data/MusicDB;
    new-instance v11, Lcom/android/music/common/data/MediaMetadata;

    invoke-direct {v11, v9}, Lcom/android/music/common/data/MediaMetadata;-><init>(Lcom/android/music/common/data/MusicDB;)V

    .line 2266
    .local v11, meta:Lcom/android/music/common/data/MediaMetadata;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    move-object v10, v0

    .line 2267
    invoke-virtual {v11, v10}, Lcom/android/music/common/data/MediaMetadata;->parse(Landroid/net/Uri;)Z

    .line 2268
    const/4 v12, 0x0

    .line 2269
    .local v12, mimeType:Ljava/lang/String;
    iget-object v12, v11, Lcom/android/music/common/data/MediaMetadata;->filetype:Ljava/lang/String;

    .line 2270
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2271
    .local v6, emailIntent:Landroid/content/Intent;
    const-string v16, "android.intent.action.SEND"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2272
    invoke-virtual {v6, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2273
    const-string v16, "android.intent.extra.STREAM"

    move-object v0, v6

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2274
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2280
    .end local v6           #emailIntent:Landroid/content/Intent;
    .end local v9           #mMusicDB:Lcom/android/music/common/data/MusicDB;
    .end local v10           #mediaUri:Landroid/net/Uri;
    .end local v11           #meta:Lcom/android/music/common/data/MediaMetadata;
    .end local v12           #mimeType:Ljava/lang/String;
    :pswitch_9
    const/16 v16, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 2288
    :pswitch_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->itemIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Z

    move-object v8, v0

    .line 2289
    .local v8, listBooleanIndex:[Z
    const/16 v16, 0x0

    move-object v0, v8

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 2290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->itemIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x1

    aput-boolean v17, v8, v16

    .line 2292
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-class v17, Lcom/android/music/list/activity/MpListActivity;

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2293
    .local v7, intent:Landroid/content/Intent;
    const-string v16, "ListType"

    const/16 v17, 0x2

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2294
    const-string v16, "TitleText"

    const v17, 0x7f0a0034

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2296
    const-string v16, "Check"

    const/16 v17, 0x1

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2297
    const-string v16, "CheckListType"

    const/16 v17, 0x1

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2299
    const-string v16, "CheckedList"

    move-object v0, v7

    move-object/from16 v1, v16

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 2300
    const-string v16, "Conditions"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2301
    const-string v16, "RootListType"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    move/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2302
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1941
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1980
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "savedInstanceState"

    .prologue
    .line 330
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    move-object v3, v0

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/list/data/MpListDataController;->InitContext(Landroid/content/Context;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mOptionMenus:[Ljava/lang/String;

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/music/common/util/MusicPlayerUtil;->registerIntentFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 354
    .local v15, intent:Landroid/content/Intent;
    if-nez v15, :cond_0

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 503
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 359
    .local v11, bundle:Landroid/os/Bundle;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 363
    .local v9, action:Ljava/lang/String;
    :goto_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 364
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 365
    .local v4, mUri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    .line 366
    .local v20, path:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v19

    .line 368
    .local v19, mLastPathSegment:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Lcom/android/music/list/activity/MpListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 369
    .local v17, mCur:Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 371
    const-string v3, "content://media/external/audio/albums/"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 372
    const/16 v3, 0xe

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    .line 373
    const/4 v3, 0x7

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    .line 374
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "album"

    .end local v4           #mUri:Landroid/net/Uri;
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    const-string v5, "artist"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 380
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->initListByID(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 484
    .end local v17           #mCur:Landroid/database/Cursor;
    .end local v19           #mLastPathSegment:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/String;
    :cond_1
    :goto_2
    new-instance v16, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 486
    .local v16, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string v3, "android.intent.action.MEDIA_EJECT"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string v3, "file"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 489
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 359
    .end local v9           #action:Ljava/lang/String;
    .end local v16           #intentMediaStateFilter:Landroid/content/IntentFilter;
    :cond_2
    const/4 v3, 0x0

    move-object v9, v3

    goto/16 :goto_1

    .line 385
    .restart local v4       #mUri:Landroid/net/Uri;
    .restart local v9       #action:Ljava/lang/String;
    .restart local v17       #mCur:Landroid/database/Cursor;
    .restart local v19       #mLastPathSegment:Ljava/lang/String;
    .restart local v20       #path:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v3, "content://media/external/audio/artists/"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 387
    const/16 v3, 0x10

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    .line 388
    const/4 v3, 0x7

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    .line 389
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "artist"

    .end local v4           #mUri:Landroid/net/Uri;
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 392
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->initListByID(I)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 409
    .end local v17           #mCur:Landroid/database/Cursor;
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 410
    .local v12, e:Landroid/database/sqlite/SQLiteFullException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 415
    .local v10, am:Landroid/app/ActivityManager;
    const-string v3, "com.android.music"

    invoke-virtual {v10, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 397
    .end local v10           #am:Landroid/app/ActivityManager;
    .end local v12           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v4       #mUri:Landroid/net/Uri;
    .restart local v17       #mCur:Landroid/database/Cursor;
    :cond_4
    :try_start_2
    const-string v3, "content://media/external/audio/media/"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 399
    invoke-virtual {v15}, Landroid/content/Intent;->getFlags()I

    move-result v13

    .line 400
    .local v13, flag:I
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v14, i:Landroid/content/Intent;
    const-string v3, "com.android.music/search"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-virtual {v14, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 403
    const-string v3, "musicplayer.action"

    const-string v5, "Search"

    invoke-virtual {v14, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v3, "SearchUri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4           #mUri:Landroid/net/Uri;
    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 417
    .end local v13           #flag:I
    .end local v14           #i:Landroid/content/Intent;
    .end local v17           #mCur:Landroid/database/Cursor;
    :catch_1
    move-exception v3

    move-object v12, v3

    .line 424
    .local v12, e:Landroid/database/sqlite/SQLiteDiskIOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 426
    .restart local v10       #am:Landroid/app/ActivityManager;
    const-string v3, "com.android.music"

    invoke-virtual {v10, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 433
    .end local v10           #am:Landroid/app/ActivityManager;
    .end local v12           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v19           #mLastPathSegment:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/String;
    :cond_5
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 435
    const-string v3, "query"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 437
    .local v18, mFilterString:Ljava/lang/String;
    new-instance v21, Landroid/content/Intent;

    const-class v3, Lcom/android/music/list/activity/MpSearchResultActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    .local v21, serchIentent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEARCH"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v3, "SearchManagerQuery"

    move-object/from16 v0, v21

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->startActivity(Landroid/content/Intent;)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    goto/16 :goto_2

    .line 446
    .end local v18           #mFilterString:Ljava/lang/String;
    .end local v21           #serchIentent:Landroid/content/Intent;
    :cond_6
    if-eqz v11, :cond_9

    .line 447
    const-string v3, "ListType"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    .line 448
    const-string v3, "TitleText"

    const/4 v4, -0x1

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 449
    .local v22, titleId:I
    const/4 v3, -0x1

    move/from16 v0, v22

    move v1, v3

    if-eq v0, v1, :cond_8

    .line 450
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    .line 453
    :goto_3
    const-string v3, "Conditions"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    .line 454
    const-string v3, "Check"

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    .line 456
    const-string v3, "CheckListType"

    const/4 v4, -0x1

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    .line 468
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    move v3, v0

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_7

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mIndexOfMainListType:I

    .line 480
    .end local v22           #titleId:I
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->initListByID(I)V

    goto/16 :goto_2

    .line 452
    .restart local v22       #titleId:I
    :cond_8
    const-string v3, "TitleText"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    goto :goto_3

    .line 475
    .end local v22           #titleId:I
    :cond_9
    const-string v3, "MpListSubActivity"

    const-string v4, "Bundle is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/16 v3, 0x9

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    .line 477
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    goto :goto_4
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 13
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v12, 0x7f0a0026

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1672
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0

    .line 1673
    .local v4, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v5, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    .line 1675
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1676
    .local v1, cursor:Landroid/database/Cursor;
    iput-boolean v8, p0, Lcom/android/music/list/activity/MpListActivity;->deletePossible:Z

    .line 1677
    iget v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v5, p0, Lcom/android/music/list/activity/MpListActivity;->itemIndex:I

    .line 1678
    const v5, 0x7f0a00c0

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1679
    new-instance v5, Lcom/android/music/common/data/MusicAddData;

    invoke-direct {v5}, Lcom/android/music/common/data/MusicAddData;-><init>()V

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    .line 1680
    iget-boolean v5, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-ne v5, v9, :cond_0

    .line 1842
    :goto_0
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1843
    return-void

    .line 1685
    :cond_0
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1688
    :pswitch_1
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v5, v8}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 1690
    .local v3, mUri:Landroid/net/Uri;
    iget-wide v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1691
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "audio_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1693
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_data"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1694
    const-string v5, "title"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1695
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1696
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1698
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1699
    const v5, 0x7f0a0030

    invoke-interface {p1, v8, v8, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1700
    invoke-interface {p1, v8, v9, v9, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1701
    const v5, 0x7f0a0027

    invoke-interface {p1, v8, v10, v10, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1702
    const v5, 0x7f0a0034

    invoke-interface {p1, v8, v11, v11, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1703
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    .line 1704
    iput-boolean v9, p0, Lcom/android/music/list/activity/MpListActivity;->deletePossible:Z

    goto :goto_0

    .line 1709
    .end local v3           #mUri:Landroid/net/Uri;
    :pswitch_2
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v5, v8}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 1711
    .restart local v3       #mUri:Landroid/net/Uri;
    iget-wide v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1712
    iget-wide v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1713
    const-string v5, "title"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1714
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_data"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1715
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1716
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1718
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1719
    const v5, 0x7f0a0030

    invoke-interface {p1, v8, v8, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1720
    invoke-interface {p1, v8, v9, v9, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1721
    const v5, 0x7f0a0027

    invoke-interface {p1, v8, v10, v10, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1722
    const v5, 0x7f0a0034

    invoke-interface {p1, v8, v11, v11, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1723
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    .line 1724
    iput-boolean v9, p0, Lcom/android/music/list/activity/MpListActivity;->deletePossible:Z

    goto/16 :goto_0

    .line 1727
    .end local v3           #mUri:Landroid/net/Uri;
    :pswitch_3
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 1730
    .restart local v3       #mUri:Landroid/net/Uri;
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1731
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1733
    iget-wide v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1734
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "audio_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1736
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_data"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1737
    const-string v5, "title"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1738
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1739
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1742
    :goto_1
    const v5, 0x7f0a0030

    invoke-interface {p1, v8, v8, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1743
    invoke-interface {p1, v8, v9, v9, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1744
    const v5, 0x7f0a0027

    invoke-interface {p1, v8, v10, v10, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1745
    const v5, 0x7f0a0034

    invoke-interface {p1, v8, v11, v11, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1746
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    .line 1747
    iput-boolean v9, p0, Lcom/android/music/list/activity/MpListActivity;->deletePossible:Z

    goto/16 :goto_0

    .line 1741
    :cond_1
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v5, v5, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/music/common/util/ListUtil;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1

    .line 1751
    .end local v3           #mUri:Landroid/net/Uri;
    :pswitch_4
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v5, v8}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 1752
    .restart local v3       #mUri:Landroid/net/Uri;
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1753
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1755
    iget-wide v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1756
    iget-wide v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1757
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_data"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1760
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v6, v6, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 1762
    const-string v5, "title"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1763
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1764
    const v5, 0x7f0a0037

    invoke-interface {p1, v8, v8, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1765
    invoke-interface {p1, v8, v9, v9, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1766
    const v5, 0x7f0a0027

    invoke-interface {p1, v8, v10, v10, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1767
    const v5, 0x7f0a0034

    invoke-interface {p1, v8, v11, v11, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1768
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    goto/16 :goto_0

    .line 1772
    .end local v3           #mUri:Landroid/net/Uri;
    :pswitch_5
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v5, v8}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 1773
    .restart local v3       #mUri:Landroid/net/Uri;
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1774
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1776
    iget-wide v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1777
    iget-wide v5, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1778
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_data"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1781
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v6, v6, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 1783
    const-string v5, "title"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1784
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1785
    const v5, 0x7f0a0037

    invoke-interface {p1, v8, v8, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1786
    invoke-interface {p1, v8, v9, v9, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1787
    const v5, 0x7f0a0027

    invoke-interface {p1, v8, v10, v10, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1788
    const v5, 0x7f0a0034

    invoke-interface {p1, v8, v11, v11, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1789
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    goto/16 :goto_0

    .line 1792
    .end local v3           #mUri:Landroid/net/Uri;
    :pswitch_6
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/adapter/MpListGroupAdapter;

    .line 1794
    .local v2, group:Lcom/android/music/list/adapter/MpListGroupAdapter;
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-virtual {v2, v5}, Lcom/android/music/list/adapter/MpListGroupAdapter;->getPosition(I)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1795
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-virtual {v2, v5}, Lcom/android/music/list/adapter/MpListGroupAdapter;->getPosition(I)I

    move-result v5

    iput v5, p0, Lcom/android/music/list/activity/MpListActivity;->itemIndex:I

    .line 1796
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1798
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget v6, v6, Lcom/android/music/common/data/MusicAddData;->mId:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1800
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget v6, v6, Lcom/android/music/common/data/MusicAddData;->mId:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1802
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_data"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1805
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v6, v6, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 1807
    const-string v5, "title"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1808
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1809
    const v5, 0x7f0a0037

    invoke-interface {p1, v8, v8, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1810
    invoke-interface {p1, v8, v9, v9, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1811
    const v5, 0x7f0a0027

    invoke-interface {p1, v8, v10, v10, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1812
    const v5, 0x7f0a0034

    invoke-interface {p1, v8, v11, v11, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1813
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    goto/16 :goto_0

    .line 1819
    .end local v2           #group:Lcom/android/music/list/adapter/MpListGroupAdapter;
    :pswitch_7
    iget v5, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1820
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1822
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget v6, v6, Lcom/android/music/common/data/MusicAddData;->mId:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1824
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget v6, v6, Lcom/android/music/common/data/MusicAddData;->mId:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1826
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v6, "_data"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1829
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v6, v6, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 1831
    const-string v5, "title"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1832
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1833
    const v5, 0x7f0a0037

    invoke-interface {p1, v8, v8, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1834
    invoke-interface {p1, v8, v9, v9, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1835
    const v5, 0x7f0a0027

    invoke-interface {p1, v8, v10, v10, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1836
    const v5, 0x7f0a0034

    invoke-interface {p1, v8, v11, v11, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1837
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    goto/16 :goto_0

    .line 1685
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v9, 0x7f0a00c6

    const/4 v8, 0x1

    .line 2420
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    .line 2421
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2423
    .local v0, containerPopup4:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2425
    .local v1, inflatedBody:Landroid/view/View;
    const v5, 0x7f0c005a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 2427
    .local v2, pBar4:Landroid/widget/ProgressBar;
    const v5, 0x7f0c005b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2429
    .local v4, tv4:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 2469
    :goto_0
    :pswitch_0
    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2470
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2471
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    :goto_1
    return-object v5

    .line 2431
    :pswitch_1
    invoke-virtual {p0, v9}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2434
    :pswitch_2
    const v5, 0x7f0a00c7

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2437
    :pswitch_3
    invoke-virtual {p0, v9}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2440
    :pswitch_4
    const v5, 0x7f0a00c8

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2443
    :pswitch_5
    const v5, 0x7f0a00c5

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2458
    :pswitch_6
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f0a0049

    invoke-virtual {p0, v6}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const v5, 0x7f0a004a

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    const/4 v5, 0x2

    const v6, 0x7f0a004b

    invoke-virtual {p0, v6}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 2462
    .local v3, setAs:[Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 2463
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0a0027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2464
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2465
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_1

    .line 2429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 539
    if-nez p1, :cond_0

    move v5, v7

    .line 592
    :goto_0
    return v5

    .line 541
    :cond_0
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mMenu:Landroid/view/Menu;

    if-nez v5, :cond_1

    .line 542
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity;->mMenu:Landroid/view/Menu;

    .line 543
    :cond_1
    iget-boolean v5, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v5, :cond_2

    move v5, v7

    .line 544
    goto :goto_0

    .line 545
    :cond_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 547
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 548
    .local v2, mIsThereLastPlayedFile:Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v5, :cond_5

    .line 562
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v5}, Lcom/android/music/list/data/MpListDisplayData;->getOptionMenus()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 563
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v5}, Lcom/android/music/list/data/MpListDisplayData;->getOptionMenus()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 565
    .local v3, optionID:I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    .line 562
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 551
    .end local v1           #i:I
    .end local v3           #optionID:I
    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->isThereLastPlayedFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 553
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 555
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 556
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "error"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 557
    .local v4, toast3:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 566
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v4           #toast3:Landroid/widget/Toast;
    .restart local v1       #i:I
    .restart local v3       #optionID:I
    :cond_6
    if-ne v3, v8, :cond_7

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v5

    if-eqz v5, :cond_4

    .line 569
    :cond_7
    const/16 v5, 0x9

    if-ne v3, v5, :cond_8

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getNotMergedCount()I

    move-result v5

    if-eqz v5, :cond_4

    .line 572
    :cond_8
    if-nez v3, :cond_9

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v5

    if-eqz v5, :cond_4

    .line 575
    :cond_9
    const/4 v5, 0x6

    if-ne v3, v5, :cond_a

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v5

    if-eqz v5, :cond_4

    .line 585
    :cond_a
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mOptionMenus:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {p1, v7, v3, v1, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->optionMenuIcon:[I

    aget v6, v6, v3

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 592
    .end local v3           #optionID:I
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    invoke-static {p0}, Lcom/android/music/common/util/MusicPlayerUtil;->unbindService(Landroid/content/Context;)V

    .line 306
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->musicClose()V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_3

    .line 319
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 324
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 325
    return-void
.end method

.method public onFinishActivity()V
    .locals 1

    .prologue
    .line 2842
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    .line 2843
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 2844
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 1148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1149
    .local v0, optionID:I
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v1}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Create Play lists"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v1, v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->optionMenuOperate(I)V

    .line 1165
    :goto_0
    return v3

    .line 1161
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1, v0}, Lcom/android/music/list/view/AbstractMpListView;->optionMenuOperate(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->activityCheck:Z

    .line 244
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpImageDataBuffer;->ClearLoadImage()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-boolean v0, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_3

    .line 268
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->dismissDialog(I)V

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 272
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->saveCheck()V

    .line 286
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 287
    return-void
.end method

.method public onPrepareContextMenu(Landroid/view/ContextMenu;)Z
    .locals 14
    .parameter "menu"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1847
    const/4 v0, 0x0

    .line 1849
    .local v0, currentUri:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1850
    .local v3, isDrm:Z
    const/4 v7, 0x0

    .line 1851
    .local v7, option:Landroid/drm/mobile2/Drm2Options;
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v6

    .line 1861
    .local v6, mMusicDB:Lcom/android/music/common/data/MusicDB;
    const/4 v4, 0x1

    .line 1862
    .local v4, isRingtone:Z
    const/4 v5, 0x1

    .line 1864
    .local v5, isSendAs:Z
    iget-object v9, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1867
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v9, v9, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1868
    .local v8, tmpFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1869
    iget v9, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v10, 0xd

    if-ne v9, v10, :cond_0

    .line 1870
    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1873
    :goto_0
    invoke-interface {p1, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1874
    invoke-interface {p1, v13}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1875
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v9, v11

    .line 1934
    :goto_1
    return v9

    .line 1872
    :cond_0
    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1879
    :cond_1
    if-nez v0, :cond_3

    .line 1880
    const/4 v4, 0x0

    .line 1881
    const/4 v5, 0x0

    .line 1924
    :cond_2
    :goto_2
    if-eqz v4, :cond_8

    .line 1925
    invoke-interface {p1, v13}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1929
    :goto_3
    if-eqz v5, :cond_9

    .line 1930
    invoke-interface {p1, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1934
    :goto_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v9

    goto :goto_1

    .line 1882
    :cond_3
    invoke-static {v0}, Lcom/android/music/common/util/UriUtil;->IsUsedMediaProvider(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1883
    const/4 v4, 0x0

    .line 1884
    const/4 v5, 0x0

    goto :goto_2

    .line 1888
    :cond_4
    iget-object v9, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v9, v9, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    if-nez v9, :cond_6

    .line 1889
    const/4 v4, 0x0

    .line 1890
    const/4 v5, 0x0

    .line 1914
    :cond_5
    :goto_5
    const-string v9, "content://media/external"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "content://media/internal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "file://"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "content://drm/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1918
    const/4 v4, 0x0

    .line 1919
    const/4 v5, 0x0

    goto :goto_2

    .line 1892
    :cond_6
    new-instance v1, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicDrmManager;-><init>()V

    .line 1895
    .local v1, drmManager:Lcom/android/music/common/manager/MusicDrmManager;
    :try_start_0
    iget-object v9, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v9, v9, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v3

    .line 1896
    if-eqz v3, :cond_5

    .line 1897
    invoke-virtual {v1}, Lcom/android/music/common/manager/MusicDrmManager;->getOptionInfo()Landroid/drm/mobile2/Drm2Options;

    move-result-object v7

    .line 1899
    if-nez v7, :cond_7

    .line 1900
    const/4 v4, 0x0

    .line 1901
    const/4 v5, 0x0

    goto :goto_5

    .line 1903
    :cond_7
    iget-boolean v4, v7, Landroid/drm/mobile2/Drm2Options;->bRingtone:Z

    .line 1904
    iget-boolean v5, v7, Landroid/drm/mobile2/Drm2Options;->bSendAs:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1907
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 1908
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1909
    iget-object v9, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const v10, 0x7f0a0043

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    move v9, v11

    .line 1910
    goto/16 :goto_1

    .line 1927
    .end local v1           #drmManager:Lcom/android/music/common/manager/MusicDrmManager;
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_8
    invoke-interface {p1, v13}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1932
    :cond_9
    invoke-interface {p1, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 2721
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 2722
    const v1, 0x7f0c005a

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 2724
    .local v0, pBar4:Landroid/widget/ProgressBar;
    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    .line 2726
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2727
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2729
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 614
    if-nez p1, :cond_0

    move v5, v7

    .line 656
    :goto_0
    return v5

    .line 616
    :cond_0
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mMenu:Landroid/view/Menu;

    if-nez v5, :cond_1

    .line 617
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity;->mMenu:Landroid/view/Menu;

    .line 618
    :cond_1
    iget-boolean v5, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v5, :cond_2

    move v5, v7

    .line 619
    goto :goto_0

    .line 620
    :cond_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 621
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 622
    .local v2, mIsThereLastPlayedFile:Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v5, :cond_5

    .line 634
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v5}, Lcom/android/music/list/data/MpListDisplayData;->getOptionMenus()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 635
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v5}, Lcom/android/music/list/data/MpListDisplayData;->getOptionMenus()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 636
    .local v3, optionID:I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    .line 634
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 625
    .end local v1           #i:I
    .end local v3           #optionID:I
    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->isThereLastPlayedFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 627
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 629
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 630
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "error"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 631
    .local v4, toast3:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 637
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v4           #toast3:Landroid/widget/Toast;
    .restart local v1       #i:I
    .restart local v3       #optionID:I
    :cond_6
    if-ne v3, v8, :cond_7

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v5

    if-eqz v5, :cond_4

    .line 640
    :cond_7
    const/16 v5, 0x9

    if-ne v3, v5, :cond_8

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getNotMergedCount()I

    move-result v5

    if-eqz v5, :cond_4

    .line 643
    :cond_8
    if-nez v3, :cond_9

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v5

    if-eqz v5, :cond_4

    .line 646
    :cond_9
    const/4 v5, 0x6

    if-ne v3, v5, :cond_a

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v5

    if-eqz v5, :cond_4

    .line 650
    :cond_a
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mOptionMenus:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {p1, v7, v3, v1, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity;->optionMenuIcon:[I

    aget v6, v6, v3

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 656
    .end local v3           #optionID:I
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 291
    sget-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 293
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 294
    return-void
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v13, "activity"

    .line 700
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 702
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v0, v5}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 706
    :cond_0
    new-instance v0, Lcom/android/music/common/util/BatteryChecker;

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-direct {v0, v2, p0}, Lcom/android/music/common/util/BatteryChecker;-><init>(Lcom/android/music/player/service/ICorePlayerService;Lcom/android/music/common/util/OnLowBatteryListener;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    .line 707
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    new-array v2, v5, [Landroid/app/Activity;

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 709
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 710
    .local v9, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/android/music/list/activity/MpListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 721
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 726
    :cond_1
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->checkPlayButtonEnable()V

    .line 730
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 738
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->checkListFilter()V

    .line 740
    iput-boolean v5, p0, Lcom/android/music/list/activity/MpListActivity;->activityCheck:Z

    .line 744
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v0, :cond_2

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->InitIndex()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/music/list/activity/MpListActivity;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mMediaScannerRunCheck:Z

    .line 755
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_4

    .line 839
    :cond_3
    :goto_1
    return-void

    .line 747
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 748
    .local v7, e:Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v2, "fail to get current media from music core player."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 757
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_5

    .line 760
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->GetCreateMusicHandler()Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    .line 761
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/4 v2, 0x3

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 765
    :cond_5
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-nez v0, :cond_6

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, -0x1

    invoke-static {v12, v2}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 770
    .local v11, mPlaylistUriString:Ljava/lang/String;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 772
    .local v1, mPlaylistUri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/music/list/activity/MpListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 773
    .local v10, mCur:Landroid/database/Cursor;
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 774
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 776
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "thumbnail_uri"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 783
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/music/list/activity/MpListActivity;->setTitleLayout(II)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 810
    .end local v1           #mPlaylistUri:Landroid/net/Uri;
    .end local v10           #mCur:Landroid/database/Cursor;
    .end local v11           #mPlaylistUriString:Ljava/lang/String;
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_7

    .line 811
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->resetView()V

    .line 820
    :cond_7
    const/4 v8, 0x0

    .line 821
    .local v8, iCursorPosition:I
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v0, :cond_8

    .line 822
    add-int/lit8 v8, v8, 0x1

    .line 823
    :cond_8
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    invoke-virtual {p0, v0, v8}, Lcom/android/music/list/activity/MpListActivity;->setTitleLayout(II)V

    .line 835
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_3

    .line 836
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->resumeCheck()V

    goto/16 :goto_1

    .line 780
    .end local v8           #iCursorPosition:I
    .restart local v1       #mPlaylistUri:Landroid/net/Uri;
    .restart local v10       #mCur:Landroid/database/Cursor;
    .restart local v11       #mPlaylistUriString:Ljava/lang/String;
    :cond_9
    :try_start_2
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 784
    .end local v10           #mCur:Landroid/database/Cursor;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 785
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 789
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 790
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_2

    .line 792
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v0

    move-object v7, v0

    .line 799
    .local v7, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 800
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 801
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1366
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 1368
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v3, v1}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    .line 1370
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mItemPosition:I

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->setSelection(I)V

    .line 1373
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/music/list/activity/MpListActivity;->initIndexer(Z)V

    .line 1392
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1393
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v0, v3}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setEnable(Z)V

    .line 1395
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 1396
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0xd

    if-gt v0, v1, :cond_7

    .line 1397
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->setNoItem()V

    .line 1414
    :cond_3
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1415
    return-void

    .line 1374
    :cond_4
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    .line 1376
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 1377
    invoke-direct {p0, v2}, Lcom/android/music/list/activity/MpListActivity;->initIndexer(Z)V

    goto :goto_0

    .line 1381
    :cond_5
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 1382
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    .line 1383
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    .line 1384
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mItemPosition:I

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->setSelection(I)V

    .line 1386
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/music/list/activity/MpListActivity;->initIndexer(Z)V

    goto :goto_0

    .line 1398
    :cond_7
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_9

    .line 1400
    :cond_8
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->setNoItem()V

    goto :goto_1

    .line 1402
    :cond_9
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    goto :goto_1

    .line 1405
    :cond_a
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 1406
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0, v2}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    .line 1407
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1408
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1469
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v1, :cond_0

    .line 1472
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/android/music/list/activity/MpListActivity;->mItemPosition:I

    .line 1473
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    .line 1474
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->clearAdapter()V

    .line 1475
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    .line 1476
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    .line 1477
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mItemPosition:I

    invoke-virtual {v1, v2}, Lcom/android/music/list/view/AbstractMpListView;->setSelection(I)V

    .line 1480
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v1}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v1, :cond_3

    .line 1483
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/android/music/list/activity/MpListActivity;->mItemPosition:I

    .line 1484
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    .line 1486
    :try_start_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v1, :cond_1

    .line 1487
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1493
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1494
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v1, v3}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setEnable(Z)V

    .line 1495
    :cond_2
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->clearAdapter()V

    .line 1497
    :cond_3
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v1, :cond_4

    .line 1499
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const v4, 0x7f0a006c

    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;-><init>(Ljava/util/List;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 1501
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 1506
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1508
    return-void

    .line 1488
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1489
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v2, "IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1490
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1491
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v2, "IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNoItem()V
    .locals 11

    .prologue
    const v10, 0x7f0c0044

    const v9, 0x7f0c0021

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1418
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    if-nez v4, :cond_2

    .line 1419
    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_0

    .line 1420
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030011

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mNoTrackView:Landroid/view/View;

    .line 1422
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mNoTrackView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1424
    .local v3, text:Landroid/widget/TextView;
    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {p0, v4}, Lcom/android/music/common/util/ListUtil;->getNoItemString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v4}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1427
    .local v2, fl:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mNoTrackView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1465
    .end local v2           #fl:Landroid/widget/RelativeLayout;
    .end local v3           #text:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 1430
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v1, v6, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1433
    .local v1, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v8}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    .line 1434
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030010

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    .line 1436
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1438
    .restart local v3       #text:Landroid/widget/TextView;
    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {p0, v4}, Lcom/android/music/common/util/ListUtil;->getNoItemString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    .line 1442
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    const v5, 0x7f0c0040

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1448
    .local v0, addButton:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1449
    new-instance v4, Lcom/android/music/list/activity/MpListActivity$5;

    invoke-direct {v4, p0}, Lcom/android/music/list/activity/MpListActivity$5;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1457
    .end local v0           #addButton:Landroid/widget/RelativeLayout;
    :cond_1
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1458
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v4}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1460
    .restart local v2       #fl:Landroid/widget/RelativeLayout;
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1462
    .end local v1           #containerParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #fl:Landroid/widget/RelativeLayout;
    .end local v3           #text:Landroid/widget/TextView;
    :cond_2
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v8}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    .line 1463
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setTitleLayout(II)V
    .locals 11
    .parameter "layoutType"
    .parameter "cursorPosition"

    .prologue
    .line 920
    new-instance v3, Lcom/android/music/list/data/LayoutData;

    invoke-direct {v3}, Lcom/android/music/list/data/LayoutData;-><init>()V

    .line 921
    .local v3, layoutData:Lcom/android/music/list/data/LayoutData;
    iget v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 922
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 923
    .local v5, mResolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 925
    .local v7, uri:Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 1142
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v8, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v8, v3}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V

    .line 1143
    return-void

    .line 967
    :pswitch_1
    iget-object v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iput-object v8, v3, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    goto :goto_0

    .line 974
    :pswitch_2
    iget-object v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iput-object v8, v3, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 975
    iget v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 977
    iget v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v9, 0x13

    if-ne v8, v9, :cond_4

    .line 978
    iget-object v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/android/music/common/util/ListUtil;->getGenreThumbnailRsrcID(Ljava/lang/String;)I

    move-result v6

    .line 979
    .local v6, rsrcID:I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 981
    iput v6, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 982
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto :goto_0

    .line 986
    :cond_1
    iget-object v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v8}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 987
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 989
    const-string v8, "content://media/external/audio/albumart"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 991
    .local v4, mAlbumArtUri:Landroid/net/Uri;
    const-string v8, "album_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 995
    :try_start_0
    invoke-virtual {v5, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 996
    .local v2, in:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 999
    iget-object v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_2

    .line 1000
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v8

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1002
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1006
    .end local v2           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 1007
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v8

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1009
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 1010
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1004
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_2
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1013
    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #mAlbumArtUri:Landroid/net/Uri;
    :cond_3
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v8

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1015
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 1018
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v6           #rsrcID:I
    :cond_4
    iget v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v9, 0xd

    if-eq v8, v9, :cond_5

    iget v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    .line 1020
    :cond_5
    iget-object v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    if-eqz v8, :cond_7

    .line 1021
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1024
    :try_start_2
    invoke-virtual {v5, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1025
    .restart local v2       #in:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 1027
    iget-object v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_6

    .line 1028
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v8

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1030
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1034
    .end local v2           #in:Ljava/io/InputStream;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 1035
    .restart local v1       #e:Ljava/lang/Exception;
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v8

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1037
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 1038
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1032
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_6
    const/4 v8, 0x1

    :try_start_3
    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1041
    .end local v2           #in:Ljava/io/InputStream;
    :cond_7
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v8

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1043
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 1046
    :cond_8
    iget-object v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v8}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1047
    .restart local v0       #cursor:Landroid/database/Cursor;
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1049
    const-string v8, "content://media/external/audio/albumart"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1051
    .restart local v4       #mAlbumArtUri:Landroid/net/Uri;
    const-string v8, "album_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1055
    :try_start_4
    invoke-virtual {v5, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1056
    .restart local v2       #in:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 1059
    iget-object v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_9

    .line 1060
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v8

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1062
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1066
    .end local v2           #in:Ljava/io/InputStream;
    :catch_2
    move-exception v8

    move-object v1, v8

    .line 1067
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v8

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1069
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 1070
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1064
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_9
    const/4 v8, 0x1

    :try_start_5
    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 1073
    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #mAlbumArtUri:Landroid/net/Uri;
    :cond_a
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v8

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1075
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 1081
    .end local v0           #cursor:Landroid/database/Cursor;
    :pswitch_3
    iget-object v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v8}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 1083
    iget v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 1084
    iget-object v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iput-object v8, v3, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 1085
    iget-object v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iput-object v8, v3, Lcom/android/music/list/data/LayoutData;->mSmallText:Ljava/lang/String;

    .line 1087
    iget-object v8, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v8}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1104
    .restart local v0       #cursor:Landroid/database/Cursor;
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1106
    const-string v8, "content://media/external/audio/albumart"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1108
    .restart local v4       #mAlbumArtUri:Landroid/net/Uri;
    const-string v8, "album_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1112
    :try_start_6
    invoke-virtual {v5, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1113
    .restart local v2       #in:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 1116
    iget-object v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_b

    .line 1117
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v8

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1119
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 1123
    .end local v2           #in:Ljava/io/InputStream;
    :catch_3
    move-exception v8

    move-object v1, v8

    .line 1124
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v8

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1126
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 1127
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1121
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #in:Ljava/io/InputStream;
    :cond_b
    const/4 v8, 0x1

    :try_start_7
    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 1130
    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #mAlbumArtUri:Landroid/net/Uri;
    :cond_c
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v8

    iput v8, v3, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1132
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 925
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public showLowBatteryMsg(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    .line 2333
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v6, "showLowBatteryMsg() is called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v5, :cond_0

    .line 2336
    :try_start_0
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2347
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2348
    .local v2, mLayoutInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2350
    .local v3, myView:Landroid/view/View;
    const v5, 0x7f0c0032

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2351
    .local v4, text:Landroid/widget/TextView;
    const v5, 0x7f0a00d6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2352
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00a5

    new-instance v7, Lcom/android/music/list/activity/MpListActivity$20;

    invoke-direct {v7, p0, p1}, Lcom/android/music/list/activity/MpListActivity$20;-><init>(Lcom/android/music/list/activity/MpListActivity;Landroid/app/Activity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2360
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 2361
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 2362
    return-void

    .line 2337
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #mLayoutInflater:Landroid/view/LayoutInflater;
    .end local v3           #myView:Landroid/view/View;
    .end local v4           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2338
    .local v1, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2339
    const-string v5, "MusicPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException occured :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
