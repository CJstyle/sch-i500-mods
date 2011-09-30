.class public Lcom/android/music/list/activity/MpListActivity;
.super Landroid/app/Activity;
.source "MpListActivity.java"

# interfaces
.implements Lcom/android/music/common/util/OnLowBatteryListener;
.implements Lcom/android/music/list/interfaces/MpCorePlayer;
.implements Lcom/android/music/list/interfaces/MpHandlerInterface;


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

.field private mCursor:Landroid/database/Cursor;

.field private mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

.field private mFromPlayer:Z

.field final mHandler:Landroid/os/Handler;

.field protected mHasCheck:Z

.field private mIndexOfMainListType:I

.field private mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field private mIsRemoved:Z

.field private mItemPosition:I

.field private final mKillGarbageReciver:Landroid/content/BroadcastReceiver;

.field protected mListData:Lcom/android/music/list/data/MpListDisplayData;

.field private mListFocus:I

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

.field private mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

.field protected mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

.field private optionMenuIcon:[I

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

    .line 129
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 132
    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->callMessageBox:Landroid/app/AlertDialog;

    .line 133
    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 147
    iput-boolean v2, p0, Lcom/android/music/list/activity/MpListActivity;->mMediaScannerRunCheck:Z

    .line 148
    const-string v0, "MpListActivity"

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    .line 151
    iput v2, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexOfMainListType:I

    .line 172
    iput-boolean v2, p0, Lcom/android/music/list/activity/MpListActivity;->deletePossible:Z

    .line 174
    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 175
    iput-boolean v2, p0, Lcom/android/music/list/activity/MpListActivity;->activityCheck:Z

    .line 185
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->optionMenuIcon:[I

    .line 208
    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 214
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/music/list/activity/MpListActivity;->SETAS_OPTION_POPUP_DIALOG:I

    .line 215
    iput v2, p0, Lcom/android/music/list/activity/MpListActivity;->itemIndex:I

    .line 222
    iput v2, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VOICE_CALL_RINGTONE:I

    .line 223
    iput v3, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VIDEO_CALL_RINGTONE:I

    .line 224
    iput v4, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_INDIVIDUAL_RINGTONE:I

    .line 225
    iput v5, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_ALARM_TONE:I

    .line 228
    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 230
    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 246
    new-instance v0, Lcom/android/music/list/activity/MpListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListActivity$1;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 2423
    new-instance v0, Lcom/android/music/list/activity/MpListActivity$17;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListActivity$17;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHandler:Landroid/os/Handler;

    .line 2592
    new-instance v0, Lcom/android/music/list/activity/MpListActivity$18;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListActivity$18;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2643
    new-array v0, v5, [I

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VOICE_CALL_RINGTONE:I

    aput v1, v0, v2

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_INDIVIDUAL_RINGTONE:I

    aput v1, v0, v3

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_ALARM_TONE:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->setAsRingtoneOptionNonVT:[I

    .line 2881
    new-instance v0, Lcom/android/music/list/activity/MpListActivity$19;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListActivity$19;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mKillGarbageReciver:Landroid/content/BroadcastReceiver;

    .line 2896
    new-instance v0, Lcom/android/music/list/activity/MpListActivity$20;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListActivity$20;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 2918
    new-instance v0, Lcom/android/music/list/activity/MpListActivity$21;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListActivity$21;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 2964
    new-instance v0, Lcom/android/music/list/activity/MpListActivity$22;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpListActivity$22;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 185
    nop

    :array_0
    .array-data 0x4
        0x26t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/music/list/activity/MpListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/list/activity/MpListActivity;)Lcom/android/music/common/data/MusicAddData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/list/activity/MpListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/music/list/activity/MpListActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/list/activity/MpListActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/list/activity/MpListActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->setAsRingtoneOptionNonVT:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/list/activity/MpListActivity;I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->setRingtone(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/music/list/activity/MpListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIsRemoved:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/music/list/activity/MpListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/music/list/activity/MpListActivity;->mIsRemoved:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/music/list/activity/MpListActivity;)Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/music/list/activity/MpListActivity;)Lcom/android/music/common/util/BatteryChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/music/list/activity/MpListActivity;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object p1
.end method

.method private getListFilter(I[Ljava/lang/String;)Lcom/android/music/common/data/MpListFilter;
    .locals 7
    .parameter "listType"
    .parameter "condition"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1394
    const/4 v0, 0x0

    .line 1396
    .local v0, filter:Lcom/android/music/common/data/MpListFilter;
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    .end local v0           #filter:Lcom/android/music/common/data/MpListFilter;
    invoke-direct {v0, p1, v5}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 1398
    .restart local v0       #filter:Lcom/android/music/common/data/MpListFilter;
    packed-switch p1, :pswitch_data_0

    .line 1413
    :goto_0
    :pswitch_0
    return-object v0

    .line 1402
    :pswitch_1
    iget-object v1, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, p2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v5, v3, v4}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v2, v1, v6

    goto :goto_0

    .line 1408
    :pswitch_2
    iget-object v1, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    aget-object v4, p2, v5

    invoke-direct {v2, v0, v6, v3, v4}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v2, v1, v6

    goto :goto_0

    .line 1398
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private initIndexer(Z)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0c0021

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1583
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_2

    .line 1584
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 1585
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1589
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v3

    .line 1590
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    const v1, 0x7f0c0022

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-interface {v0, v1}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setIndexView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    .line 1593
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v0}, Lcom/android/music/list/interfaces/MpSetViewInterface;->getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 1595
    if-eqz p1, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0, v2}, Lcom/android/music/list/view/AbstractMpListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1598
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1600
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v0}, Lcom/android/music/common/util/ListUtil;->isEnableFastScroll(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1606
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1608
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v0}, Lcom/android/music/common/util/ListType;->getIndexerKeyIndex(I)I

    move-result v0

    .line 1613
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/android/music/common/util/ListUtil;->getTwCursorIndexerByListType(ILandroid/database/Cursor;ILjava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 1616
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 1617
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 1618
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSubscrollLimit(I)V

    .line 1619
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 1621
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1622
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1623
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->bringToFront()V

    .line 1636
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    new-instance v1, Lcom/android/music/list/activity/MpListActivity$1indexEvent;

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct {v1, p0, v2}, Lcom/android/music/list/activity/MpListActivity$1indexEvent;-><init>(Lcom/android/music/list/activity/MpListActivity;Lcom/android/music/list/view/AbstractMpListView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V

    .line 1653
    :cond_1
    :goto_0
    return-void

    .line 1640
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1641
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    .line 1642
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1645
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1646
    if-eqz p1, :cond_1

    .line 1647
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1648
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    .line 1650
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initListByID(I)V
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f0c002a

    const v9, 0x7f030009

    const/16 v8, 0x17

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1258
    invoke-static {p1}, Lcom/android/music/list/data/MpListDataController;->getListMenuData(I)Lcom/android/music/list/data/MpListDisplayData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    .line 1260
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    if-nez v0, :cond_0

    .line 1390
    :goto_0
    return-void

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1264
    new-array v0, v7, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    .line 1265
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v1}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1269
    :cond_1
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mFromPlayer:Z

    if-eqz v0, :cond_2

    .line 1270
    invoke-static {p0}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v0

    .line 1271
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/music/list/activity/MpListActivity;->getListFilter(I[Ljava/lang/String;)Lcom/android/music/common/data/MpListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->getListTitleInfo(Lcom/android/music/common/data/MpListFilter;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    .line 1275
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getItemLayout()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1296
    :goto_1
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    if-eq v0, v8, :cond_3

    .line 1297
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0, v6}, Lcom/android/music/list/data/MpListDisplayData;->setMenuLayout(I)V

    .line 1300
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1326
    :goto_2
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-boolean v1, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/view/AbstractMpListView;->showCheck(ZI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1327
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1329
    const v0, 0x7f0c002b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1330
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1331
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1333
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1334
    const v0, 0x7f0c002d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1335
    const v1, 0x7f0c002e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1336
    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->setSoftKey(ILandroid/widget/Button;Landroid/widget/Button;)V

    .line 1337
    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpListActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1278
    :pswitch_1
    new-instance v0, Lcom/android/music/list/view/MpListOneLineView;

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListOneLineView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    goto :goto_1

    .line 1282
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

    .line 1286
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

    .line 1290
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

    .line 1302
    :pswitch_5
    new-instance v0, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1307
    :pswitch_6
    new-instance v0, Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1312
    :pswitch_7
    new-instance v0, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1316
    :pswitch_8
    new-instance v0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-direct {v0, p0, p1}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1320
    :pswitch_9
    new-instance v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    invoke-direct {v0, p0, p1}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    goto/16 :goto_2

    .line 1338
    :cond_4
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    if-eq v0, v8, :cond_5

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    if-eq v0, v7, :cond_5

    .line 1341
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1345
    const v0, 0x7f0c002f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mPlayerButtonLayout:Landroid/widget/RelativeLayout;

    .line 1347
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1349
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v2}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1352
    const v0, 0x7f0c0030

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/music/common/util/IconTextButton;

    .line 1353
    const v2, 0x7f020075

    const v3, 0x7f0a00ed

    invoke-virtual {v0, v2, v3}, Lcom/android/music/common/util/IconTextButton;->setImageAndText(II)V

    .line 1354
    new-instance v2, Lcom/android/music/list/activity/MpListActivity$2;

    invoke-direct {v2, p0}, Lcom/android/music/list/activity/MpListActivity$2;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v0, v2}, Lcom/android/music/common/util/IconTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1382
    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpListActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1384
    :cond_5
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1300
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

    .line 688
    const/4 v9, 0x0

    .line 691
    .local v9, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 692
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

    .line 695
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 696
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 697
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 698
    const-string v1, "external"

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 700
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 725
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v9

    .line 702
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 703
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

    .line 704
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 708
    const-string v1, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 709
    .local v6, am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 719
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 720
    const-string v1, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 721
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRotateProcess()V
    .locals 3

    .prologue
    .line 557
    iget-boolean v2, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v2, :cond_0

    .line 578
    :goto_0
    return-void

    .line 562
    :cond_0
    new-instance v0, Lcom/android/music/common/manager/MusicAppManageFilter;

    invoke-direct {v0}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 564
    .local v0, filter:Lcom/android/music/common/manager/MusicAppManageFilter;
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 565
    .local v1, mSearchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    .line 567
    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getMainListType(I)I

    move-result v2

    iput v2, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 568
    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexOfMainListType:I

    iput v2, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 570
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 571
    const/16 v2, 0xa

    iput v2, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 576
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/music/common/manager/MusicAppManager;->launchDiscPlus(Landroid/content/Context;Lcom/android/music/common/manager/MusicAppManageFilter;)Z

    goto :goto_0
.end method

.method private setRingtone(I)Landroid/net/Uri;
    .locals 14
    .parameter

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRingtone(position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2700
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2701
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2703
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v2, "SetRingtone():strUri[%s],ringUri[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v7, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    const-string v1, "file://"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2705
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 2706
    const-wide/16 v9, 0x0

    .line 2707
    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2709
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2713
    if-eqz v1, :cond_0

    .line 2714
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2715
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 2717
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2

    move-wide v9, v2

    .line 2719
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-nez v1, :cond_c

    .line 2720
    :try_start_2
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2724
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2726
    if-eqz v0, :cond_b

    .line 2727
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2728
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v2

    .line 2730
    :goto_1
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    move-object v0, v1

    move-wide v12, v2

    move-wide v1, v12

    .line 2744
    :goto_3
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_9

    .line 2745
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2746
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRingtone(): ringUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    :goto_4
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2751
    const-string v2, "content://media/internal"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "content://media/external"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "content://media/internal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "content://media/external"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2755
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/music/list/activity/MpListActivity;->updateContentValue(ILandroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2756
    const/4 v0, 0x0

    .line 2799
    :cond_2
    :goto_5
    return-object v0

    .line 2733
    :catch_0
    move-exception v0

    move-object v1, v11

    move-wide v2, v9

    .line 2734
    :goto_6
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2736
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2737
    const-string v4, "com.android.music"

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move-object v0, v1

    move-wide v12, v2

    move-wide v1, v12

    .line 2742
    goto/16 :goto_3

    .line 2738
    :catch_1
    move-exception v0

    move-object v1, v11

    move-wide v2, v9

    .line 2739
    :goto_7
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2740
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2741
    const-string v4, "com.android.music"

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2759
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "strUri does not.... content://media/"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    const/4 v0, 0x0

    goto :goto_5

    .line 2767
    :cond_4
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VOICE_CALL_RINGTONE:I

    if-eq p1, v1, :cond_5

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_INDIVIDUAL_RINGTONE:I

    if-eq p1, v1, :cond_5

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VIDEO_CALL_RINGTONE:I

    if-ne p1, v1, :cond_6

    .line 2770
    :cond_5
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VOICE_CALL_RINGTONE:I

    if-ne p1, v1, :cond_8

    .line 2771
    const/4 v1, 0x1

    .line 2772
    invoke-static {p0, v1, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 2792
    :cond_6
    :goto_8
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VOICE_CALL_RINGTONE:I

    if-eq p1, v1, :cond_7

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VIDEO_CALL_RINGTONE:I

    if-ne p1, v1, :cond_2

    .line 2794
    :cond_7
    const v1, 0x7f0a0050

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 2774
    :cond_8
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_INDIVIDUAL_RINGTONE:I

    if-ne p1, v1, :cond_6

    .line 2775
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v1

    .line 2777
    invoke-virtual {v1, v0}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2778
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2779
    const-string v3, "ringtone_filepath"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2780
    const-string v1, "ringtone_uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2781
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2783
    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 2738
    :catch_2
    move-exception v0

    move-object v1, v11

    goto :goto_7

    :catch_3
    move-exception v0

    move-wide v2, v9

    goto/16 :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_7

    .line 2733
    :catch_5
    move-exception v0

    move-object v1, v11

    goto/16 :goto_6

    :catch_6
    move-exception v0

    move-wide v2, v9

    goto/16 :goto_6

    :catch_7
    move-exception v0

    goto/16 :goto_6

    :cond_9
    move-object v0, v7

    goto/16 :goto_4

    :cond_a
    move-wide v2, v9

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    move-wide v1, v9

    goto/16 :goto_3

    :cond_c
    move-object v0, v11

    move-wide v1, v9

    goto/16 :goto_3

    :cond_d
    move-wide v2, v9

    goto/16 :goto_0
.end method

.method private updateContentValue(ILandroid/net/Uri;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v0, "com.android.music"

    const-string v0, "activity"

    const-string v0, "1"

    .line 2803
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContentValue(position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2810
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2811
    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_INDIVIDUAL_RINGTONE:I

    if-eq p1, v2, :cond_0

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VOICE_CALL_RINGTONE:I

    if-ne p1, v2, :cond_1

    .line 2813
    :cond_0
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2823
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2852
    :goto_1
    const/4 v0, 0x1

    .line 2865
    :goto_2
    return v0

    .line 2815
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->IDX_VIDEO_CALL_RINGTONE:I

    if-ne p1, v2, :cond_2

    .line 2816
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v3, "IDX_VIDEO_CALL_RINGTONE, Don\'t update DB"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2853
    :catch_0
    move-exception v0

    .line 2854
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2855
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 2863
    goto :goto_2

    .line 2820
    :cond_2
    :try_start_3
    const-string v2, "is_alarm"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 2858
    :catch_1
    move-exception v0

    .line 2859
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2860
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedOperationException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 2862
    goto :goto_2

    .line 2824
    :catch_2
    move-exception v0

    .line 2831
    :try_start_4
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getQuickListMaxID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2833
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2834
    const-string v1, "com.android.music"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2836
    :catch_3
    move-exception v0

    .line 2843
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2844
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2845
    const-string v1, "com.android.music"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method


# virtual methods
.method public GetCorePlayer()Lcom/android/music/player/service/ICorePlayerService;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "MusicPlayerUtil.sService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    return-object v0
.end method

.method public bridge synthetic GetView(Ljava/lang/String;Z)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/android/music/list/activity/MpListActivity;->GetView(Ljava/lang/String;Z)Lcom/android/music/list/view/AbstractMpListView;

    move-result-object v0

    return-object v0
.end method

.method public GetView(Ljava/lang/String;Z)Lcom/android/music/list/view/AbstractMpListView;
    .locals 1
    .parameter "tag"
    .parameter "set"

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    return-object v0
.end method

.method protected checkListFilter()V
    .locals 5

    .prologue
    .line 868
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/common/manager/MusicAppManager;->getManagFilter()Lcom/android/music/common/manager/MusicAppManageFilter;

    move-result-object v1

    .line 874
    .local v1, manageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    iget-boolean v3, p0, Lcom/android/music/list/activity/MpListActivity;->mFromPlayer:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    if-eqz v1, :cond_1

    iget v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    iget v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 880
    :cond_0
    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v3}, Lcom/android/music/common/util/ListType;->getMainListType(I)I

    move-result v0

    .line 881
    .local v0, iMainListType:I
    iget v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    if-eq v0, v3, :cond_2

    .line 882
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 900
    .end local v0           #iMainListType:I
    :cond_1
    :goto_0
    return-void

    .line 891
    .restart local v0       #iMainListType:I
    :cond_2
    new-instance v2, Lcom/android/music/common/manager/MusicAppManageFilter;

    invoke-direct {v2}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 892
    .local v2, newManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    const/16 v3, 0xa

    iput v3, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 893
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 894
    iget v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    iput v3, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 895
    iget v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    iput v3, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 897
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/music/common/manager/MusicAppManager;->setManageFilter(Lcom/android/music/common/manager/MusicAppManageFilter;)V

    goto :goto_0
.end method

.method public checkPlayButtonEnable()V
    .locals 4

    .prologue
    .line 903
    iget-boolean v2, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v3, 0x17

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v3, 0x19

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v3, 0x18

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 908
    :try_start_0
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 910
    .local v0, corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 947
    .end local v0           #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :cond_0
    :goto_0
    return-void

    .line 943
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 944
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3007
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIndexOfMainListType()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexOfMainListType:I

    return v0
.end method

.method public getListTitle()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2983
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    return-object v0
.end method

.method public launchDiscPlus()V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/music/list/activity/MpListActivity;->onRotateProcess()V

    .line 553
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x18

    const/16 v7, 0x17

    const/4 v1, 0x2

    const/4 v3, 0x0

    const-string v6, "IOException occured:"

    .line 1662
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1666
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return-void

    .line 1669
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 1672
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1674
    if-eqz v0, :cond_0

    .line 1679
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1681
    if-eqz v0, :cond_0

    .line 1683
    const v1, 0x7f0c0060

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1684
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1685
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1686
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    if-eq v1, v8, :cond_2

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    if-eq v1, v7, :cond_2

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_0

    .line 1689
    :cond_2
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v1, v0, v3}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setBimap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    goto :goto_0

    .line 1692
    :cond_3
    if-ne p1, v1, :cond_0

    .line 1694
    const-string v0, "uri-data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1695
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1697
    if-nez v1, :cond_4

    .line 1699
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult fileUri = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1703
    :cond_4
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1704
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1710
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1711
    const/4 v3, 0x2

    :try_start_1
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1713
    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v3}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->getDefaultHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1714
    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v3}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->getDefaultWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1718
    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    .line 1727
    if-eqz v0, :cond_5

    .line 1729
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1736
    :cond_5
    :goto_1
    if-eqz v2, :cond_0

    .line 1737
    const v0, 0x7f0c0060

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1738
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1739
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1740
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    if-eq v0, v8, :cond_6

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    if-eq v0, v7, :cond_6

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_0

    .line 1743
    :cond_6
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0, v2, v1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setBimap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 1730
    :catch_0
    move-exception v0

    .line 1731
    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException occured:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1721
    :catch_1
    move-exception v0

    move-object v0, v3

    .line 1723
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v2, "MpListActivity:onActivityResult:decodeStream failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1727
    if-eqz v0, :cond_0

    .line 1729
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1730
    :catch_2
    move-exception v0

    .line 1731
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occured:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1727
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_3
    if-eqz v1, :cond_7

    .line 1729
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1732
    :cond_7
    :goto_4
    throw v0

    .line 1730
    :catch_3
    move-exception v1

    .line 1731
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1727
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    .line 1721
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const v7, 0x7f0a00a9

    const v6, 0x7f0a00a8

    const v5, 0x1080027

    .line 2048
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2050
    packed-switch v0, :pswitch_data_0

    .line 2420
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 2054
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2059
    sget-object v1, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 2062
    :try_start_0
    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2071
    :goto_1
    :try_start_1
    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 2072
    :try_start_2
    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    move-object v3, v1

    move v1, v4

    .line 2077
    :goto_2
    if-nez v3, :cond_0

    .line 2078
    const-string v3, "No string"

    .line 2081
    :cond_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget v1, v1, Lcom/android/music/common/data/MusicAddData;->mId:I

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/music/list/activity/MpListActivity;->deletePossible:Z

    if-nez v1, :cond_2

    .line 2084
    const v1, 0x7f0a00fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2085
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2086
    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2089
    new-instance v1, Lcom/android/music/list/activity/MpListActivity$4;

    invoke-direct {v1, p0}, Lcom/android/music/list/activity/MpListActivity$4;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2096
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2097
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 2063
    :catch_0
    move-exception v2

    .line 2065
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v8

    goto :goto_1

    .line 2073
    :catch_1
    move-exception v1

    move v4, v8

    .line 2075
    :goto_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move v1, v4

    goto :goto_2

    .line 2099
    :cond_2
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 2188
    :pswitch_2
    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2189
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2190
    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2191
    new-instance v1, Lcom/android/music/list/activity/MpListActivity$10;

    invoke-direct {v1, p0}, Lcom/android/music/list/activity/MpListActivity$10;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/music/list/activity/MpListActivity$9;

    invoke-direct {v2, p0}, Lcom/android/music/list/activity/MpListActivity$9;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2221
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2106
    :pswitch_3
    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2107
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2108
    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2109
    new-instance v1, Lcom/android/music/list/activity/MpListActivity$6;

    invoke-direct {v1, p0}, Lcom/android/music/list/activity/MpListActivity$6;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/music/list/activity/MpListActivity$5;

    invoke-direct {v2, p0}, Lcom/android/music/list/activity/MpListActivity$5;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2137
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2142
    :pswitch_4
    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2143
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2144
    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2145
    new-instance v1, Lcom/android/music/list/activity/MpListActivity$8;

    invoke-direct {v1, p0}, Lcom/android/music/list/activity/MpListActivity$8;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/music/list/activity/MpListActivity$7;

    invoke-direct {v2, p0}, Lcom/android/music/list/activity/MpListActivity$7;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2181
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2182
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2227
    :pswitch_5
    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2228
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2229
    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2230
    new-instance v1, Lcom/android/music/list/activity/MpListActivity$12;

    invoke-direct {v1, p0}, Lcom/android/music/list/activity/MpListActivity$12;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/music/list/activity/MpListActivity$11;

    invoke-direct {v2, p0}, Lcom/android/music/list/activity/MpListActivity$11;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2270
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2271
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2276
    :pswitch_6
    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2277
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2278
    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2279
    new-instance v1, Lcom/android/music/list/activity/MpListActivity$14;

    invoke-direct {v1, p0}, Lcom/android/music/list/activity/MpListActivity$14;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/music/list/activity/MpListActivity$13;

    invoke-direct {v2, p0}, Lcom/android/music/list/activity/MpListActivity$13;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2308
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2309
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2314
    :pswitch_7
    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2315
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2316
    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2317
    new-instance v1, Lcom/android/music/list/activity/MpListActivity$16;

    invoke-direct {v1, p0}, Lcom/android/music/list/activity/MpListActivity$16;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/music/list/activity/MpListActivity$15;

    invoke-direct {v2, p0}, Lcom/android/music/list/activity/MpListActivity$15;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2349
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2350
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2359
    :pswitch_8
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 2362
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2363
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "mime_type"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2365
    if-eqz v0, :cond_5

    .line 2367
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2368
    const-string v2, "mime_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 2370
    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 2374
    :goto_5
    if-eqz v0, :cond_3

    .line 2376
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2377
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2378
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2379
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2380
    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 2381
    :catch_2
    move-exception v0

    .line 2382
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "CONTEXTMENU_SHARE_TRACK_VIA, ActivityNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2370
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2385
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONTEXTMENU_SHARE,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mimeType=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2392
    :pswitch_9
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 2400
    :pswitch_a
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->itemIndex:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    .line 2401
    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([ZZ)V

    .line 2402
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->itemIndex:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 2404
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2405
    const-string v2, "ListType"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2406
    const-string v2, "TitleText"

    const v3, 0x7f0a0035

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2408
    const-string v2, "Check"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2409
    const-string v2, "CheckListType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2411
    const-string v2, "CheckedList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 2412
    const-string v0, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2413
    const-string v0, "RootListType"

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2414
    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2073
    :catch_3
    move-exception v1

    goto/16 :goto_3

    :cond_4
    move-object v2, v3

    goto/16 :goto_4

    :cond_5
    move-object v0, v3

    goto/16 :goto_5

    .line 2050
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2099
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 377
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    move-object v3, v0

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/list/data/MpListDataController;->InitContext(Landroid/content/Context;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mOptionMenus:[Ljava/lang/String;

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 398
    .local v15, intent:Landroid/content/Intent;
    if-nez v15, :cond_0

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 549
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 403
    .local v11, bundle:Landroid/os/Bundle;
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 407
    .local v9, action:Ljava/lang/String;
    :goto_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 408
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 409
    .local v4, mUri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    .line 410
    .local v21, path:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v20

    .line 412
    .local v20, mLastPathSegment:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Lcom/android/music/list/activity/MpListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 413
    .local v18, mCur:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 415
    const-string v3, "content://media/external/audio/albums/"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 416
    const/16 v3, 0xe

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    .line 417
    const/4 v3, 0x7

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    .line 418
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "album"

    .end local v4           #mUri:Landroid/net/Uri;
    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    const-string v5, "artist"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 423
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

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 424
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 426
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

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->initListByID(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 527
    .end local v18           #mCur:Landroid/database/Cursor;
    .end local v20           #mLastPathSegment:Ljava/lang/String;
    .end local v21           #path:Ljava/lang/String;
    :cond_1
    :goto_2
    new-instance v17, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 529
    .local v17, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v3, "android.intent.action.MEDIA_EJECT"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    const-string v3, "file"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 532
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 533
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 536
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    move v3, v0

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 538
    :cond_2
    new-instance v16, Landroid/content/IntentFilter;

    const-string v3, "com.android.music.kill.garbageActivity"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 540
    .local v16, intentKillGarbageActivityFilter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mKillGarbageReciver:Landroid/content/BroadcastReceiver;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 543
    .end local v16           #intentKillGarbageActivityFilter:Landroid/content/IntentFilter;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/activity/MpListActivity;->mFromPlayer:Z

    move v3, v0

    if-eqz v3, :cond_4

    .line 544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListFocus:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mItemPosition:I

    .line 548
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mConnection:Landroid/content/ServiceConnection;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    goto/16 :goto_0

    .line 403
    .end local v9           #action:Ljava/lang/String;
    .end local v17           #intentMediaStateFilter:Landroid/content/IntentFilter;
    :cond_5
    const/4 v3, 0x0

    move-object v9, v3

    goto/16 :goto_1

    .line 429
    .restart local v4       #mUri:Landroid/net/Uri;
    .restart local v9       #action:Ljava/lang/String;
    .restart local v18       #mCur:Landroid/database/Cursor;
    .restart local v20       #mLastPathSegment:Ljava/lang/String;
    .restart local v21       #path:Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v3, "content://media/external/audio/artists/"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 431
    const/16 v3, 0x10

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    .line 432
    const/4 v3, 0x7

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    .line 433
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "artist"

    .end local v4           #mUri:Landroid/net/Uri;
    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 436
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 438
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

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 440
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

    .line 453
    .end local v18           #mCur:Landroid/database/Cursor;
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 454
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

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 459
    .local v10, am:Landroid/app/ActivityManager;
    const-string v3, "com.android.music"

    invoke-virtual {v10, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 441
    .end local v10           #am:Landroid/app/ActivityManager;
    .end local v12           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v4       #mUri:Landroid/net/Uri;
    .restart local v18       #mCur:Landroid/database/Cursor;
    :cond_7
    :try_start_2
    const-string v3, "content://media/external/audio/media/"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 443
    invoke-virtual {v15}, Landroid/content/Intent;->getFlags()I

    move-result v13

    .line 444
    .local v13, flag:I
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v14, i:Landroid/content/Intent;
    const-string v3, "com.android.music/search"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const/high16 v3, 0x400

    or-int/2addr v3, v13

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 447
    const-string v3, "musicplayer.action"

    const-string v5, "Search"

    invoke-virtual {v14, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string v3, "SearchUri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4           #mUri:Landroid/net/Uri;
    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 461
    .end local v13           #flag:I
    .end local v14           #i:Landroid/content/Intent;
    .end local v18           #mCur:Landroid/database/Cursor;
    :catch_1
    move-exception v3

    move-object v12, v3

    .line 468
    .local v12, e:Landroid/database/sqlite/SQLiteDiskIOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 470
    .restart local v10       #am:Landroid/app/ActivityManager;
    const-string v3, "com.android.music"

    invoke-virtual {v10, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 477
    .end local v10           #am:Landroid/app/ActivityManager;
    .end local v12           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v20           #mLastPathSegment:Ljava/lang/String;
    .end local v21           #path:Ljava/lang/String;
    :cond_8
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 479
    const-string v3, "query"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 481
    .local v19, mFilterString:Ljava/lang/String;
    new-instance v22, Landroid/content/Intent;

    const-class v3, Lcom/android/music/list/activity/MpSearchResultActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    .local v22, serchIentent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEARCH"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v3, "SearchManagerQuery"

    move-object/from16 v0, v22

    move-object v1, v3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->startActivity(Landroid/content/Intent;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    goto/16 :goto_2

    .line 490
    .end local v19           #mFilterString:Ljava/lang/String;
    .end local v22           #serchIentent:Landroid/content/Intent;
    :cond_9
    if-eqz v11, :cond_d

    .line 491
    const-string v3, "ListType"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    .line 492
    const-string v3, "TitleText"

    const/4 v4, -0x1

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 493
    .local v23, titleId:I
    const/4 v3, -0x1

    move/from16 v0, v23

    move v1, v3

    if-eq v0, v1, :cond_c

    .line 494
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    .line 497
    :goto_3
    const-string v3, "Conditions"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    .line 498
    const-string v3, "Check"

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    .line 500
    const-string v3, "CheckListType"

    const/4 v4, -0x1

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    .line 504
    const-string v3, "FromPlayer"

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/list/activity/MpListActivity;->mFromPlayer:Z

    .line 505
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/activity/MpListActivity;->mFromPlayer:Z

    move v3, v0

    if-eqz v3, :cond_a

    .line 506
    const-string v3, "ListFocus"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListFocus:I

    .line 511
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    move v3, v0

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_b

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    .line 514
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

    .line 523
    .end local v23           #titleId:I
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpListActivity;->initListByID(I)V

    goto/16 :goto_2

    .line 496
    .restart local v23       #titleId:I
    :cond_c
    const-string v3, "TitleText"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    goto/16 :goto_3

    .line 518
    .end local v23           #titleId:I
    :cond_d
    const-string v3, "MpListSubActivity"

    const-string v4, "Bundle is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/16 v3, 0x9

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    .line 520
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    goto :goto_4
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const v10, 0x7f0a0027

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1753
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 1754
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v2, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    .line 1756
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1757
    iput-boolean v6, p0, Lcom/android/music/list/activity/MpListActivity;->deletePossible:Z

    .line 1758
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v3, p0, Lcom/android/music/list/activity/MpListActivity;->itemIndex:I

    .line 1759
    const v3, 0x7f0a00c7

    invoke-virtual {p0, v3}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1760
    new-instance v3, Lcom/android/music/common/data/MusicAddData;

    invoke-direct {v3}, Lcom/android/music/common/data/MusicAddData;-><init>()V

    iput-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    .line 1761
    iget-boolean v3, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-ne v3, v7, :cond_0

    .line 1946
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1947
    return-void

    .line 1766
    :cond_0
    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1770
    :pswitch_1
    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v3, v6}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 1771
    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1772
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v5, "_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1774
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1775
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1776
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1777
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v3, v3, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v1, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 1778
    const-string v1, "title"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1779
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1780
    const v1, 0x7f0a0038

    invoke-interface {p1, v6, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1781
    invoke-interface {p1, v6, v7, v7, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1782
    const v1, 0x7f0a0028

    invoke-interface {p1, v6, v8, v8, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1783
    const v1, 0x7f0a0035

    invoke-interface {p1, v6, v9, v9, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1784
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    .line 1786
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    goto :goto_0

    .line 1792
    :pswitch_2
    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v3, v6}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 1794
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1795
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "audio_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1797
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1798
    const-string v1, "title"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1799
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1800
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1802
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1803
    const v1, 0x7f0a0031

    invoke-interface {p1, v6, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1804
    invoke-interface {p1, v6, v7, v7, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1805
    const v1, 0x7f0a0028

    invoke-interface {p1, v6, v8, v8, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1806
    const v1, 0x7f0a0035

    invoke-interface {p1, v6, v9, v9, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1807
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    .line 1808
    iput-boolean v7, p0, Lcom/android/music/list/activity/MpListActivity;->deletePossible:Z

    goto/16 :goto_0

    .line 1813
    :pswitch_3
    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v3, v6}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 1815
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1816
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1817
    const-string v1, "title"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1818
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1819
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1820
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1822
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1823
    const v1, 0x7f0a0031

    invoke-interface {p1, v6, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1824
    invoke-interface {p1, v6, v7, v7, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1825
    const v1, 0x7f0a0028

    invoke-interface {p1, v6, v8, v8, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1826
    const v1, 0x7f0a0035

    invoke-interface {p1, v6, v9, v9, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1827
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    .line 1828
    iput-boolean v7, p0, Lcom/android/music/list/activity/MpListActivity;->deletePossible:Z

    goto/16 :goto_0

    .line 1831
    :pswitch_4
    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 1834
    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1835
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v5, "_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1837
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1838
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "audio_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1840
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1841
    const-string v1, "title"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1842
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1843
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1846
    :goto_1
    const v1, 0x7f0a0031

    invoke-interface {p1, v6, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1847
    invoke-interface {p1, v6, v7, v7, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1848
    const v1, 0x7f0a0028

    invoke-interface {p1, v6, v8, v8, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1849
    const v1, 0x7f0a0035

    invoke-interface {p1, v6, v9, v9, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1850
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    .line 1851
    iput-boolean v7, p0, Lcom/android/music/list/activity/MpListActivity;->deletePossible:Z

    goto/16 :goto_0

    .line 1845
    :cond_1
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v1, v1, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/music/common/util/ListUtil;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1

    .line 1855
    :pswitch_5
    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v3, v6}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 1856
    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1857
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v5, "_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1859
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1860
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1861
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1864
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v3, v3, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v1, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 1866
    const-string v1, "title"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1867
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1868
    const v1, 0x7f0a0038

    invoke-interface {p1, v6, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1869
    invoke-interface {p1, v6, v7, v7, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1870
    const v1, 0x7f0a0028

    invoke-interface {p1, v6, v8, v8, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1871
    const v1, 0x7f0a0035

    invoke-interface {p1, v6, v9, v9, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1872
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    goto/16 :goto_0

    .line 1876
    :pswitch_6
    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v3, v6}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v3

    .line 1877
    iget v4, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1878
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v5, "_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1880
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1881
    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1882
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1885
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v3, v3, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v1, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 1887
    const-string v1, "title"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1888
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1889
    const v1, 0x7f0a0038

    invoke-interface {p1, v6, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1890
    invoke-interface {p1, v6, v7, v7, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1891
    const v1, 0x7f0a0028

    invoke-interface {p1, v6, v8, v8, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1892
    const v1, 0x7f0a0035

    invoke-interface {p1, v6, v9, v9, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1893
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    goto/16 :goto_0

    .line 1896
    :pswitch_7
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/adapter/MpListGroupAdapter;

    .line 1898
    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-virtual {v1, v3}, Lcom/android/music/list/adapter/MpListGroupAdapter;->getPosition(I)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1899
    iget v3, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-virtual {v1, v3}, Lcom/android/music/list/adapter/MpListGroupAdapter;->getPosition(I)I

    move-result v1

    iput v1, p0, Lcom/android/music/list/activity/MpListActivity;->itemIndex:I

    .line 1900
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1902
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget v3, v3, Lcom/android/music/common/data/MusicAddData;->mId:I

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1904
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget v3, v3, Lcom/android/music/common/data/MusicAddData;->mId:I

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1906
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1909
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v3, v3, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v1, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 1911
    const-string v1, "title"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1912
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1913
    const v1, 0x7f0a0038

    invoke-interface {p1, v6, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1914
    invoke-interface {p1, v6, v7, v7, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1915
    const v1, 0x7f0a0028

    invoke-interface {p1, v6, v8, v8, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1916
    const v1, 0x7f0a0035

    invoke-interface {p1, v6, v9, v9, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1917
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    goto/16 :goto_0

    .line 1923
    :pswitch_8
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mSelectedPosition:I

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1924
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1926
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget v3, v3, Lcom/android/music/common/data/MusicAddData;->mId:I

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->deleteUri:Landroid/net/Uri;

    .line 1928
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget v3, v3, Lcom/android/music/common/data/MusicAddData;->mId:I

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    .line 1930
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1933
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v3, v3, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v1, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 1935
    const-string v1, "title"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1936
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1937
    const v1, 0x7f0a0038

    invoke-interface {p1, v6, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1938
    invoke-interface {p1, v6, v7, v7, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1939
    const v1, 0x7f0a0028

    invoke-interface {p1, v6, v8, v8, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1940
    const v1, 0x7f0a0035

    invoke-interface {p1, v6, v9, v9, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1941
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    goto/16 :goto_0

    .line 1766
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f0a00cd

    const/4 v5, 0x1

    .line 2535
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    .line 2536
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2538
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001c

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2540
    const v0, 0x7f0c005d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 2542
    const v1, 0x7f0c005e

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2544
    packed-switch p1, :pswitch_data_0

    .line 2587
    :goto_0
    :pswitch_0
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2588
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2589
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_1
    return-object v0

    .line 2546
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2549
    :pswitch_2
    const v4, 0x7f0a00ce

    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2553
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2556
    :pswitch_4
    const v4, 0x7f0a00cf

    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2559
    :pswitch_5
    const v4, 0x7f0a00cc

    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2574
    :pswitch_6
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f0a004a

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f0a004c

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const v2, 0x7f0a004d

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2578
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 2579
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2580
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2581
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 2544
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
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 585
    if-nez p1, :cond_0

    move v2, v4

    .line 663
    :goto_0
    return v2

    .line 587
    :cond_0
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_1

    .line 588
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity;->mMenu:Landroid/view/Menu;

    .line 589
    :cond_1
    iget-boolean v2, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v2, :cond_2

    move v2, v4

    .line 590
    goto :goto_0

    .line 591
    :cond_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 627
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v2}, Lcom/android/music/list/data/MpListDisplayData;->getOptionMenus()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 628
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v2}, Lcom/android/music/list/data/MpListDisplayData;->getOptionMenus()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 630
    .local v1, optionID:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 627
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 631
    :cond_4
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    .line 634
    :cond_5
    const/16 v2, 0x9

    if-ne v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getNotMergedCount()I

    move-result v2

    if-eqz v2, :cond_3

    .line 637
    :cond_6
    if-nez v1, :cond_7

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    .line 640
    :cond_7
    const/4 v2, 0x6

    if-ne v1, v2, :cond_8

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    .line 644
    :cond_8
    const/16 v2, 0x10

    if-ne v1, v2, :cond_9

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    .line 654
    :cond_9
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mOptionMenus:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v4, v1, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->optionMenuIcon:[I

    aget v3, v3, v1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 663
    .end local v1           #optionID:I
    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    invoke-static {v1}, Lcom/android/music/common/util/MusicPlayerUtil;->unbindFromService(Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;)V

    .line 345
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->musicClose()V

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v1, :cond_4

    .line 357
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_3

    .line 358
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 360
    :cond_3
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 363
    :cond_4
    iget-boolean v1, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v1, :cond_5

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mKillGarbageReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_5
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 372
    return-void

    .line 366
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 367
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy : mKillGarbageReciver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1211
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v1}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Create Play lists"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1212
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v1, v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->optionMenuOperate(I)V

    .line 1227
    :goto_0
    return v3

    .line 1223
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1, v0}, Lcom/android/music/list/view/AbstractMpListView;->optionMenuOperate(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->activityCheck:Z

    .line 280
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpImageDataBuffer;->ClearLoadImage()V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-boolean v0, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    .line 300
    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    :goto_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 310
    :cond_3
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->saveCheck()V

    .line 324
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 325
    return-void

    .line 301
    :catch_0
    move-exception v0

    goto :goto_0

    .line 306
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onPrepareContextMenu(Landroid/view/ContextMenu;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1951
    .line 1968
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->ringtoneUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1971
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v2, v2, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1972
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1973
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 1974
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1977
    :goto_0
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1978
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1979
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v0, v4

    .line 2043
    :goto_1
    return v0

    .line 1976
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1983
    :cond_1
    if-nez v0, :cond_2

    move v0, v4

    move v1, v4

    .line 2033
    :goto_2
    if-eqz v1, :cond_6

    .line 2034
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2038
    :goto_3
    if-eqz v0, :cond_7

    .line 2039
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2043
    :goto_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_1

    .line 1987
    :cond_2
    invoke-static {v0}, Lcom/android/music/common/util/UriUtil;->IsUsedMediaProvider(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v4

    move v1, v4

    .line 1989
    goto :goto_2

    .line 1994
    :cond_3
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v1, v1, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v4

    move v2, v4

    .line 2022
    :goto_5
    const-string v3, "content://media/external"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "content://media/internal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "file://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "content://drm/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v4

    move v1, v4

    .line 2027
    goto :goto_2

    .line 1999
    :cond_4
    new-instance v1, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicDrmManager;-><init>()V

    .line 2002
    :try_start_0
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mContextData:Lcom/android/music/common/data/MusicAddData;

    iget-object v2, v2, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v2

    .line 2003
    if-eqz v2, :cond_9

    .line 2004
    invoke-virtual {v1}, Lcom/android/music/common/manager/MusicDrmManager;->getOptionInfo()Landroid/drm/mobile2/Drm2Options;

    move-result-object v1

    .line 2006
    if-nez v1, :cond_5

    move v1, v4

    move v2, v4

    .line 2008
    goto :goto_5

    .line 2010
    :cond_5
    iget-boolean v2, v1, Landroid/drm/mobile2/Drm2Options;->bRingtone:Z

    .line 2011
    iget-boolean v1, v1, Landroid/drm/mobile2/Drm2Options;->bSendAs:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 2014
    :catch_0
    move-exception v0

    .line 2015
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2016
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0044

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v4

    .line 2017
    goto/16 :goto_1

    .line 2036
    :cond_6
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 2041
    :cond_7
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_8
    move v0, v1

    move v1, v2

    goto/16 :goto_2

    :cond_9
    move v1, v5

    move v2, v5

    goto :goto_5
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2870
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 2871
    const v0, 0x7f0c005d

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    .line 2873
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 2875
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2876
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2878
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 681
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    const/4 v0, 0x0

    .line 684
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 329
    sget-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 331
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 332
    return-void
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/4 v12, 0x2

    const/4 v5, 0x1

    const-string v13, "activity"

    .line 730
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 741
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 742
    .local v9, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/android/music/list/activity/MpListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 758
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->checkPlayButtonEnable()V

    .line 762
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 770
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->checkListFilter()V

    .line 773
    iput-boolean v5, p0, Lcom/android/music/list/activity/MpListActivity;->activityCheck:Z

    .line 778
    invoke-static {p0}, Lcom/android/music/list/activity/MpListActivity;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mMediaScannerRunCheck:Z

    .line 779
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_2

    .line 784
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->GetCreateMusicHandler()Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    .line 785
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/4 v2, 0x3

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 789
    :cond_2
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-nez v0, :cond_3

    .line 791
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

    .line 794
    .local v11, mPlaylistUriString:Ljava/lang/String;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 796
    .local v1, mPlaylistUri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/music/list/activity/MpListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 797
    .local v10, mCur:Landroid/database/Cursor;
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 798
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 800
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "thumbnail_uri"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 807
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/music/list/activity/MpListActivity;->setTitleLayout(II)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 834
    .end local v1           #mPlaylistUri:Landroid/net/Uri;
    .end local v10           #mCur:Landroid/database/Cursor;
    .end local v11           #mPlaylistUriString:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_4

    .line 835
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->resetView()V

    .line 844
    :cond_4
    const/4 v8, 0x0

    .line 845
    .local v8, iCursorPosition:I
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v0, :cond_5

    .line 846
    add-int/lit8 v8, v8, 0x1

    .line 847
    :cond_5
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    invoke-virtual {p0, v0, v8}, Lcom/android/music/list/activity/MpListActivity;->setTitleLayout(II)V

    .line 859
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->resumeCheck()V

    goto/16 :goto_0

    .line 804
    .end local v8           #iCursorPosition:I
    .restart local v1       #mPlaylistUri:Landroid/net/Uri;
    .restart local v10       #mCur:Landroid/database/Cursor;
    .restart local v11       #mPlaylistUriString:Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 808
    .end local v10           #mCur:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 809
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

    .line 810
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 813
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 814
    .local v6, am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 816
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 823
    .local v7, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 824
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 825
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v0, "com.android.music"

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1419
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 1421
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v3, v1}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    .line 1423
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mItemPosition:I

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->setSelection(I)V

    .line 1426
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/music/list/activity/MpListActivity;->initIndexer(Z)V

    .line 1445
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1446
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v0, v3}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setEnable(Z)V

    .line 1448
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 1449
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0xd

    if-gt v0, v1, :cond_7

    .line 1450
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->setNoItem()V

    .line 1470
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/android/music/common/util/MusicPlayerUtil;->registerIntentFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 1473
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1474
    return-void

    .line 1427
    :cond_4
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    .line 1429
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 1430
    invoke-direct {p0, v2}, Lcom/android/music/list/activity/MpListActivity;->initIndexer(Z)V

    goto :goto_0

    .line 1434
    :cond_5
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 1435
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    .line 1436
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    .line 1437
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mItemPosition:I

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->setSelection(I)V

    .line 1439
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/music/list/activity/MpListActivity;->initIndexer(Z)V

    goto :goto_0

    .line 1451
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

    .line 1453
    :cond_8
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->setNoItem()V

    goto :goto_1

    .line 1455
    :cond_9
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    goto :goto_1

    .line 1458
    :cond_a
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_b

    .line 1459
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0, v2}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1461
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1463
    :cond_b
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/music/list/activity/MpListActivity;->mHasCheck:Z

    if-eqz v0, :cond_3

    .line 1465
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1466
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_3

    .line 1467
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    goto/16 :goto_1
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1528
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/activity/MpListActivity;->mItemPosition:I

    .line 1533
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    .line 1534
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->clearAdapter()V

    .line 1535
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    .line 1536
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    .line 1537
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mItemPosition:I

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->setSelection(I)V

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_3

    .line 1543
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/activity/MpListActivity;->mItemPosition:I

    .line 1544
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursor:Landroid/database/Cursor;

    .line 1546
    :try_start_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v0, :cond_1

    .line 1547
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1553
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1554
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v0, v2}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setEnable(Z)V

    .line 1555
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->clearAdapter()V

    .line 1557
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v0, :cond_4

    .line 1559
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f0a006e

    invoke-virtual {p0, v3}, Lcom/android/music/list/activity/MpListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;-><init>(Ljava/util/List;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 1561
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 1565
    :cond_4
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 1567
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1572
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1577
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1579
    return-void

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1550
    :catch_1
    move-exception v0

    .line 1551
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1573
    :catch_2
    move-exception v0

    .line 1574
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop : mActivityUpdateReceiver is not registered."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setNoItem()V
    .locals 7

    .prologue
    const v6, 0x7f0c0044

    const v5, 0x7f0c0021

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 1477
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1478
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 1479
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoTrackView:Landroid/view/View;

    .line 1481
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoTrackView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1483
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {p0, v1}, Lcom/android/music/common/util/ListUtil;->getNoItemString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1484
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1486
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mNoTrackView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1524
    :goto_0
    return-void

    .line 1489
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {v1, v2, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1492
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0, v3}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    .line 1493
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    .line 1495
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1497
    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {p0, v2}, Lcom/android/music/common/util/ListUtil;->getNoItemString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1499
    iget v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 1501
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    const v2, 0x7f0c0040

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1507
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1508
    new-instance v2, Lcom/android/music/list/activity/MpListActivity$3;

    invoke-direct {v2, p0}, Lcom/android/music/list/activity/MpListActivity$3;-><init>(Lcom/android/music/list/activity/MpListActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1516
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1517
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->GetView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1519
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1521
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0, v3}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    .line 1522
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setTitleLayout(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-string v6, "IOException occured:"

    .line 951
    new-instance v0, Lcom/android/music/list/data/LayoutData;

    invoke-direct {v0}, Lcom/android/music/list/data/LayoutData;-><init>()V

    .line 952
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iput v1, v0, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 953
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 956
    packed-switch p1, :pswitch_data_0

    .line 1204
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mTitleLayout:Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;

    invoke-virtual {v1, v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V

    .line 1205
    return-void

    .line 960
    :pswitch_1
    iget v1, v0, Lcom/android/music/list/data/LayoutData;->mListType:I

    sparse-switch v1, :sswitch_data_0

    .line 973
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v1, v1, v4

    iput-object v1, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 978
    :goto_1
    iget v1, p0, Lcom/android/music/list/activity/MpListActivity;->mSubListType:I

    packed-switch v1, :pswitch_data_1

    .line 994
    :pswitch_2
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v1, v1, v4

    iput-object v1, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    goto :goto_0

    .line 966
    :sswitch_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-static {v1, v2}, Lcom/android/music/common/util/ListType;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    goto :goto_1

    .line 969
    :sswitch_1
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a003a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    goto :goto_1

    .line 981
    :pswitch_3
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0035

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    goto :goto_0

    .line 984
    :pswitch_4
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    goto :goto_0

    .line 987
    :pswitch_5
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a003a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    goto :goto_0

    .line 990
    :pswitch_6
    iget-object v1, p0, Lcom/android/music/list/activity/MpListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0031

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    goto :goto_0

    .line 1002
    :pswitch_7
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 1003
    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iput v2, v0, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 1005
    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_5

    .line 1006
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/android/music/common/util/ListUtil;->getGenreThumbnailRsrcID(Ljava/lang/String;)I

    move-result v2

    .line 1007
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1009
    iput v2, v0, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1010
    iput-boolean v4, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 1014
    :cond_1
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1015
    invoke-interface {v2, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1017
    const-string v3, "content://media/external/audio/albumart"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1019
    const-string v4, "album_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1024
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13

    move-result-object v1

    .line 1025
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 1028
    iget-object v2, v0, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 1029
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v2

    iput v2, v0, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1031
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1041
    :goto_2
    if-eqz v1, :cond_0

    .line 1043
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1044
    :catch_0
    move-exception v1

    .line 1045
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1033
    :cond_2
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1035
    :catch_1
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 1036
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v3

    iput v3, v0, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1038
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 1039
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    .line 1041
    if-eqz v2, :cond_0

    .line 1043
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 1044
    :catch_2
    move-exception v1

    .line 1045
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1041
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_4
    if-eqz v1, :cond_3

    .line 1043
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1046
    :cond_3
    :goto_5
    throw v0

    .line 1044
    :catch_3
    move-exception v1

    .line 1045
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1050
    :cond_4
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v1

    iput v1, v0, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1052
    iput-boolean v4, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 1055
    :cond_5
    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_a

    .line 1057
    :cond_6
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v2, v2, v5

    if-eqz v2, :cond_9

    .line 1058
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1061
    :try_start_7
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12

    move-result-object v1

    .line 1062
    :try_start_8
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 1064
    iget-object v2, v0, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    .line 1065
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v2

    iput v2, v0, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1067
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1077
    :goto_6
    if-eqz v1, :cond_0

    .line 1079
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 1080
    :catch_4
    move-exception v1

    .line 1081
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1069
    :cond_7
    const/4 v2, 0x1

    :try_start_a
    iput-boolean v2, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_6

    .line 1071
    :catch_5
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 1072
    :goto_7
    const/4 v3, 0x2

    :try_start_b
    invoke-static {v3}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v3

    iput v3, v0, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1074
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 1075
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 1077
    if-eqz v2, :cond_0

    .line 1079
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_0

    .line 1080
    :catch_6
    move-exception v1

    .line 1081
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1077
    :catchall_1
    move-exception v0

    move-object v1, v7

    :goto_8
    if-eqz v1, :cond_8

    .line 1079
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 1082
    :cond_8
    :goto_9
    throw v0

    .line 1080
    :catch_7
    move-exception v1

    .line 1081
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1086
    :cond_9
    invoke-static {v5}, Lcom/android/music/common/util/ListUtil;->getDefaultPlaylistRsrcID(I)I

    move-result v1

    iput v1, v0, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1088
    iput-boolean v4, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 1091
    :cond_a
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1092
    invoke-interface {v2, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1094
    const-string v3, "content://media/external/audio/albumart"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1096
    const-string v4, "album_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1100
    :try_start_e
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    move-result-object v1

    .line 1101
    :try_start_f
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 1104
    iget-object v2, v0, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_b

    .line 1105
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v2

    iput v2, v0, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1107
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 1117
    :goto_a
    if-eqz v1, :cond_0

    .line 1119
    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_0

    .line 1120
    :catch_8
    move-exception v1

    .line 1121
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1109
    :cond_b
    const/4 v2, 0x1

    :try_start_11
    iput-boolean v2, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_a

    .line 1111
    :catch_9
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 1112
    :goto_b
    :try_start_12
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v3

    iput v3, v0, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1114
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 1115
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 1117
    if-eqz v2, :cond_0

    .line 1119
    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    goto/16 :goto_0

    .line 1120
    :catch_a
    move-exception v1

    .line 1121
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1117
    :catchall_2
    move-exception v0

    move-object v1, v7

    :goto_c
    if-eqz v1, :cond_c

    .line 1119
    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    .line 1122
    :cond_c
    :goto_d
    throw v0

    .line 1120
    :catch_b
    move-exception v1

    .line 1121
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1126
    :cond_d
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v1

    iput v1, v0, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1128
    iput-boolean v4, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 1134
    :pswitch_8
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1136
    iget v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    iput v2, v0, Lcom/android/music/list/data/LayoutData;->mListType:I

    .line 1137
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, v0, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    .line 1141
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1158
    invoke-interface {v2, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1160
    const-string v3, "content://media/external/audio/albumart"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1162
    const-string v4, "album_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1166
    :try_start_15
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_10

    move-result-object v1

    .line 1167
    :try_start_16
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    .line 1170
    iget-object v2, v0, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_e

    .line 1171
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v2

    iput v2, v0, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1173
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_d

    .line 1183
    :goto_e
    if-eqz v1, :cond_0

    .line 1185
    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c

    goto/16 :goto_0

    .line 1186
    :catch_c
    move-exception v1

    .line 1187
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1175
    :cond_e
    const/4 v2, 0x1

    :try_start_18
    iput-boolean v2, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_d

    goto :goto_e

    .line 1177
    :catch_d
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 1178
    :goto_f
    :try_start_19
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v3

    iput v3, v0, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1180
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    .line 1181
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 1183
    if-eqz v2, :cond_0

    .line 1185
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_e

    goto/16 :goto_0

    .line 1186
    :catch_e
    move-exception v1

    .line 1187
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1183
    :catchall_3
    move-exception v0

    move-object v1, v7

    :goto_10
    if-eqz v1, :cond_f

    .line 1185
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f

    .line 1188
    :cond_f
    :goto_11
    throw v0

    .line 1186
    :catch_f
    move-exception v1

    .line 1187
    iget-object v2, p0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1192
    :cond_10
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->getDefaultThumbnailRsrcID()I

    move-result v1

    iput v1, v0, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    .line 1194
    iput-boolean v4, v0, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    goto/16 :goto_0

    .line 1183
    :catchall_4
    move-exception v0

    goto :goto_10

    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_10

    .line 1177
    :catch_10
    move-exception v1

    move-object v2, v7

    goto :goto_f

    .line 1117
    :catchall_6
    move-exception v0

    goto/16 :goto_c

    :catchall_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_c

    .line 1111
    :catch_11
    move-exception v1

    move-object v2, v7

    goto/16 :goto_b

    .line 1077
    :catchall_8
    move-exception v0

    goto/16 :goto_8

    :catchall_9
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8

    .line 1071
    :catch_12
    move-exception v1

    move-object v2, v7

    goto/16 :goto_7

    .line 1041
    :catchall_a
    move-exception v0

    goto/16 :goto_4

    :catchall_b
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    .line 1035
    :catch_13
    move-exception v1

    move-object v2, v7

    goto/16 :goto_3

    .line 956
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 960
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch

    .line 978
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
