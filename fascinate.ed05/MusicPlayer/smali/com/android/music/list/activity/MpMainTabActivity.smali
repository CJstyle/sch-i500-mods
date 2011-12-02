.class public Lcom/android/music/list/activity/MpMainTabActivity;
.super Lcom/sec/android/touchwiz/widget/TwTabActivity;
.source "MpMainTabActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwTabHost$TabContentFactory;
.implements Lcom/android/music/list/interfaces/MpHandlerInterface;
.implements Lcom/android/music/list/interfaces/MpCorePlayer;
.implements Lcom/android/music/list/interfaces/MusicOrientationChanger;
.implements Lcom/android/music/common/util/OnLowBatteryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    }
.end annotation


# static fields
.field protected static final CONTEXTMENU_ADD_TO_PLAYLIST:I = 0x3

.field protected static final CONTEXTMENU_DELETE:I = 0x0

.field protected static final CONTEXTMENU_EDIT_TITLE:I = 0x4

.field protected static final CONTEXTMENU_SET_AS:I = 0x2

.field protected static final CONTEXTMENU_SHARE_TRACK_VIA:I = 0x1

.field public static isShownmediaMessageBox:Z = false

.field public static final mGridSelected:I = 0x0

.field public static final mListSelected:I = 0x1

.field private static mScanToast:Landroid/widget/Toast;

.field public static mediaMessageBox:Landroid/app/AlertDialog;


# instance fields
.field private DiscPlusImageInit:Landroid/os/Handler;

.field protected IDX_ALARM_TONE:I

.field protected IDX_INDIVIDUAL_RINGTONE:I

.field protected IDX_VIDEO_CALL_RINGTONE:I

.field protected IDX_VOICE_CALL_RINGTONE:I

.field protected final SETAS_OPTION_POPUP_DIALOG:I

.field private TAG:Ljava/lang/String;

.field private TIMECHECK:Ljava/lang/String;

.field private activityCechk:Z

.field batteryMessageBox:Landroid/app/AlertDialog;

.field callMessageBox:Landroid/app/AlertDialog;

.field protected contextAlert:Landroid/app/AlertDialog;

.field protected contextMenuTitle:Ljava/lang/String;

.field private deleteFileName:Ljava/lang/String;

.field private deleteUri:Landroid/net/Uri;

.field protected itemIndex:I

.field private mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mContextAddData:Lcom/android/music/common/data/MusicAddData;

.field public mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

.field private mCurrentTab:Ljava/lang/String;

.field private mGridViewColumn:I

.field public final mHandler:Landroid/os/Handler;

.field private mHasCheck:Z

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaScannerRunCheck:Z

.field public mMenu:Landroid/view/Menu;

.field private mOptionMenus:[Ljava/lang/String;

.field private mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPlayMusicReceiver:Landroid/content/BroadcastReceiver;

.field private mRestartActivity:Z

.field private mTabDisplayData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/list/data/MpListDisplayData;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

.field private mTabListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field protected mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

.field mUnmountHandler:Landroid/os/Handler;

.field private mViewHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private optionMenuIcon:[I

.field protected playlistConditions:[Ljava/lang/String;

.field protected playlistTitle:[Ljava/lang/String;

.field private setAsRingtoneOptionNonVT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/list/activity/MpMainTabActivity;->mediaMessageBox:Landroid/app/AlertDialog;

    .line 216
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/music/list/activity/MpMainTabActivity;->isShownmediaMessageBox:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;-><init>()V

    .line 119
    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->callMessageBox:Landroid/app/AlertDialog;

    .line 120
    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 123
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    .line 149
    iput-boolean v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMediaScannerRunCheck:Z

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    .line 158
    iput-boolean v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->activityCechk:Z

    .line 159
    const-string v0, "TimeCheck"

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TIMECHECK:Ljava/lang/String;

    .line 161
    iput-boolean v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mRestartActivity:Z

    .line 173
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->optionMenuIcon:[I

    .line 196
    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 203
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->SETAS_OPTION_POPUP_DIALOG:I

    .line 205
    iput v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VOICE_CALL_RINGTONE:I

    .line 206
    iput v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VIDEO_CALL_RINGTONE:I

    .line 207
    iput v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_INDIVIDUAL_RINGTONE:I

    .line 208
    iput v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_ALARM_TONE:I

    .line 219
    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 225
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$1;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 590
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$3;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->DiscPlusImageInit:Landroid/os/Handler;

    .line 641
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$4;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHandler:Landroid/os/Handler;

    .line 2224
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$11;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$11;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2262
    new-array v0, v5, [I

    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VOICE_CALL_RINGTONE:I

    aput v1, v0, v2

    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_INDIVIDUAL_RINGTONE:I

    aput v1, v0, v3

    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_ALARM_TONE:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->setAsRingtoneOptionNonVT:[I

    .line 2471
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$12;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$12;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mPlayMusicReceiver:Landroid/content/BroadcastReceiver;

    .line 2481
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$13;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$13;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 2518
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$14;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$14;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mUnmountHandler:Landroid/os/Handler;

    .line 2548
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$15;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$15;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 2634
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$16;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$16;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 173
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

.method static synthetic access$000(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/music/list/activity/MpMainTabActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/android/music/common/util/BatteryChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/music/list/activity/MpMainTabActivity;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/music/list/activity/MpMainTabActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/music/list/activity/MpMainTabActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMediaScannerRunCheck:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/music/list/activity/MpMainTabActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->activityCechk:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/list/activity/MpMainTabActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/android/music/common/data/MusicAddData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/music/list/activity/MpMainTabActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->setAsRingtoneOptionNonVT:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/music/list/activity/MpMainTabActivity;I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/music/list/activity/MpMainTabActivity;->setRingtone(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getMusicMenu()V
    .locals 6

    .prologue
    .line 1216
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getMusicMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1243
    .local v1, setting:Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v2, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    .local v2, strToken:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1246
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1247
    .local v3, token:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1251
    .end local v3           #token:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1252
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/music/list/data/MpListDataController;->getListMenuData(I)Lcom/android/music/list/data/MpListDisplayData;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1255
    :cond_1
    return-void
.end method

.method private initIndexer(Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;Ljava/lang/String;)V
    .locals 9
    .parameter "viewItem"
    .parameter "tabName"

    .prologue
    const/4 v7, 0x0

    .line 1345
    const/4 v4, 0x0

    .line 1346
    .local v4, main:Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    .line 1347
    .local v3, mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    if-nez v5, :cond_1

    .line 1348
    const v5, 0x7f030006

    invoke-static {p0, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4           #main:Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .line 1349
    .restart local v4       #main:Landroid/widget/LinearLayout;
    iput-object v4, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    .line 1353
    :goto_0
    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/interfaces/MpSetViewInterface;

    const v6, 0x7f0c0022

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-interface {v5, v6}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setIndexView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    .line 1354
    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v5}, Lcom/android/music/list/interfaces/MpSetViewInterface;->getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-result-object v3

    .line 1355
    if-eqz v3, :cond_3

    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v5

    invoke-static {v5}, Lcom/android/music/common/util/ListUtil;->isEnableFastScroll(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1357
    const/4 v2, 0x0

    .line 1358
    .local v2, index:I
    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Landroid/widget/CursorAdapter;

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1359
    .local v1, c:Landroid/database/Cursor;
    if-nez v1, :cond_2

    .line 1409
    .end local v1           #c:Landroid/database/Cursor;
    .end local v2           #index:I
    .end local p0
    :cond_0
    :goto_1
    return-void

    .line 1351
    .restart local p0
    :cond_1
    iget-object v4, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 1362
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v2       #index:I
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1367
    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v5

    invoke-static {v5}, Lcom/android/music/common/util/ListType;->getIndexerKeyIndex(I)I

    move-result v2

    .line 1369
    iput-object v7, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 1370
    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v5

    iget-object v6, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a006c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v2, v7}, Lcom/android/music/common/util/ListUtil;->getTwCursorIndexerByListType(ILandroid/database/Cursor;ILjava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    move-result-object v5

    iput-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 1373
    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 1374
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 1375
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSubscrollLimit(I)V

    .line 1376
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 1378
    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5, v3}, Lcom/android/music/list/view/AbstractMpListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1379
    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    iget-object v6, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1395
    new-instance v5, Lcom/android/music/list/activity/MpMainTabActivity$1indexEvent;

    iget-object v6, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct {v5, p0, v6}, Lcom/android/music/list/activity/MpMainTabActivity$1indexEvent;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;Lcom/android/music/list/view/AbstractMpListView;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V

    .line 1399
    .end local v1           #c:Landroid/database/Cursor;
    .end local v2           #index:I
    :cond_3
    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v5, :cond_4

    .line 1401
    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iput-object p2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->MyTag:Ljava/lang/String;

    .line 1403
    :cond_4
    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    if-eqz v5, :cond_0

    .line 1405
    iget-object v5, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v5}, Lcom/android/music/list/view/MpListGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1406
    .local v0, adapter:Landroid/widget/Adapter;
    instance-of v5, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    if-eqz v5, :cond_0

    .line 1407
    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object p2, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->MyTag:Ljava/lang/String;

    goto :goto_1
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const-string v13, "com.android.music"

    const-string v12, "activity"

    .line 602
    const/4 v9, 0x0

    .line 604
    .local v9, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 605
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

    .line 607
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 609
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v11, :cond_1

    .line 611
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 612
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 613
    .local v10, volumeName:Ljava/lang/String;
    const-string v1, "external"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "internal"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    :cond_0
    const/4 v9, 0x1

    .line 616
    .end local v10           #volumeName:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 637
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_0
    return v9

    .line 618
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 620
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "MpMainTabActivity"

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

    .line 621
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 624
    const-string v1, "activity"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 625
    .local v6, am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v13}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 627
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 629
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 632
    const-string v1, "activity"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 633
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v13}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isMenuChanged()Z
    .locals 5

    .prologue
    .line 1264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1265
    .local v2, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getMusicMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1273
    .local v0, setting:Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v1, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    .local v1, strToken:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1276
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1277
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1279
    .end local v3           #token:Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1280
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4
.end method

.method private makeViews(II)Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    .locals 11
    .parameter "itemType"
    .parameter "listType"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 1296
    new-instance v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    invoke-direct {v8, p0, v5}, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;Lcom/android/music/list/activity/MpMainTabActivity$1;)V

    .line 1299
    .local v8, viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    move v4, v0

    .line 1301
    .local v4, subListType:I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1321
    :goto_1
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {v6, v10, v10, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1328
    .local v6, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v0, v6}, Lcom/android/music/list/view/MpListGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1329
    iget-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0, v6}, Lcom/android/music/list/view/AbstractMpListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1331
    iget-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1332
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030010

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    .line 1333
    iget-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1334
    iget-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1335
    iget-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    const v1, 0x7f0c0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1336
    .local v7, tv:Landroid/widget/TextView;
    iget-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/music/common/util/ListUtil;->getNoItemString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_0
    return-object v8

    .end local v4           #subListType:I
    .end local v6           #containerParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    move v4, v9

    .line 1299
    goto :goto_0

    .line 1303
    .restart local v4       #subListType:I
    :pswitch_0
    new-instance v0, Lcom/android/music/list/view/MpListGroupView;

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListGroupView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    goto :goto_1

    .line 1307
    :pswitch_1
    new-instance v0, Lcom/android/music/list/view/MpListOneLineView;

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListOneLineView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    goto :goto_1

    .line 1311
    :pswitch_2
    new-instance v0, Lcom/android/music/list/view/MpListThumnailOneLineView;

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListThumnailOneLineView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1312
    new-instance v0, Lcom/android/music/list/view/MpListGridView;

    invoke-direct {v0, p0, p2, v9}, Lcom/android/music/list/view/MpListGridView;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    goto :goto_1

    .line 1316
    :pswitch_3
    new-instance v0, Lcom/android/music/list/view/MpListThumnailTwoLineView;

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListThumnailTwoLineView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1317
    new-instance v0, Lcom/android/music/list/view/MpListGridView;

    invoke-direct {v0, p0, p2, v9}, Lcom/android/music/list/view/MpListGridView;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    goto/16 :goto_1

    .line 1301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private onRotateProcess()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 1161
    new-instance v0, Lcom/android/music/common/manager/MusicAppManageFilter;

    invoke-direct {v0}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 1164
    .local v0, filter:Lcom/android/music/common/manager/MusicAppManageFilter;
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v6

    .line 1165
    .local v6, tag:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v1

    .line 1167
    .local v1, iCurrentTab:I
    const/4 v2, 0x0

    .line 1169
    .local v2, iFocusIdx:I
    const-string v8, "search"

    invoke-virtual {p0, v8}, Lcom/android/music/list/activity/MpMainTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    .line 1170
    .local v3, mSearchManager:Landroid/app/SearchManager;
    invoke-virtual {v3}, Landroid/app/SearchManager;->stopSearch()V

    .line 1172
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 1173
    .local v7, viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-object v8, v7, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v8}, Lcom/android/music/list/view/AbstractMpListView;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1175
    iget-object v5, v7, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1176
    .local v5, mpListView:Lcom/android/music/list/view/AbstractMpListView;
    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getSelectedItemPosition()I

    move-result v2

    .line 1177
    if-ne v2, v9, :cond_0

    .line 1178
    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getFirstVisiblePosition()I

    move-result v8

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getLastVisiblePosition()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 1189
    .end local v5           #mpListView:Lcom/android/music/list/view/AbstractMpListView;
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 1190
    iput v2, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 1192
    const/4 v8, 0x1

    iput v8, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 1193
    const/16 v8, 0xa

    iput v8, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 1198
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v8

    invoke-virtual {v8, p0, v0}, Lcom/android/music/common/manager/MusicAppManager;->launchDiscPlus(Landroid/content/Context;Lcom/android/music/common/manager/MusicAppManageFilter;)Z

    .line 1204
    return-void

    .line 1182
    :cond_1
    iget-object v4, v7, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    .line 1183
    .local v4, mpGridView:Lcom/android/music/list/view/MpListGridView;
    invoke-virtual {v4}, Lcom/android/music/list/view/MpListGridView;->getSelectedItemPosition()I

    move-result v2

    .line 1184
    if-ne v2, v9, :cond_0

    .line 1185
    invoke-virtual {v4}, Lcom/android/music/list/view/MpListGridView;->getFirstVisiblePosition()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/music/list/view/MpListGridView;->getLastVisiblePosition()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    goto :goto_0
.end method

.method private setRingtone(I)Landroid/net/Uri;
    .locals 23
    .parameter "position"

    .prologue
    .line 2267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

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

    .line 2270
    const/16 v20, 0x0

    .line 2271
    .local v20, ringtoneType:I
    const/16 v19, 0x0

    .line 2273
    .local v19, ringUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->deleteUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2275
    .local v22, strUri:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 2276
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2278
    .local v3, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

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

    .line 2279
    const-string v4, "file://"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2280
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 2281
    .local v18, path:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 2282
    .local v10, audio_id:J
    sget-object v12, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2284
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

    .line 2288
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_1

    .line 2289
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2290
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2292
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2294
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_3

    .line 2295
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

    .line 2299
    sget-object v12, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2301
    if-eqz v13, :cond_3

    .line 2302
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2303
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2305
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2329
    .end local v13           #c:Landroid/database/Cursor;
    :cond_3
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-eqz v4, :cond_4

    .line 2330
    invoke-static {v12, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 2331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

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

    .line 2335
    .end local v10           #audio_id:J
    .end local v12           #baseUri:Landroid/net/Uri;
    .end local v18           #path:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2336
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

    .line 2340
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->updateContentValue(ILandroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2341
    const/4 v4, 0x0

    .line 2384
    :goto_1
    return-object v4

    .line 2308
    .end local v21           #strRingUri:Ljava/lang/String;
    .restart local v10       #audio_id:J
    .restart local v12       #baseUri:Landroid/net/Uri;
    .restart local v18       #path:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 2311
    .local v14, e:Landroid/database/sqlite/SQLiteFullException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

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

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 2317
    .local v9, am:Landroid/app/ActivityManager;
    const-string v4, "com.android.music"

    invoke-virtual {v9, v4}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2319
    .end local v9           #am:Landroid/app/ActivityManager;
    .end local v14           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v4

    move-object v14, v4

    .line 2321
    .local v14, e:Landroid/database/sqlite/SQLiteDiskIOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 2325
    .restart local v9       #am:Landroid/app/ActivityManager;
    const-string v4, "com.android.music"

    invoke-virtual {v9, v4}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2344
    .end local v9           #am:Landroid/app/ActivityManager;
    .end local v10           #audio_id:J
    .end local v12           #baseUri:Landroid/net/Uri;
    .end local v14           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v18           #path:Ljava/lang/String;
    .restart local v21       #strRingUri:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "strUri does not.... content://media/"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    const/4 v4, 0x0

    goto :goto_1

    .line 2352
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VOICE_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_INDIVIDUAL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VIDEO_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_9

    .line 2355
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VOICE_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_c

    .line 2356
    const/16 v20, 0x1

    .line 2357
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 2378
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VOICE_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VIDEO_CALL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_b

    .line 2380
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    move-object v4, v0

    const v5, 0x7f0a004e

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(I)V

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_b
    move-object/from16 v4, v19

    .line 2384
    goto/16 :goto_1

    .line 2359
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_INDIVIDUAL_RINGTONE:I

    move v4, v0

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_d

    .line 2360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v17

    .line 2362
    .local v17, mMusicDB:Lcom/android/music/common/data/MusicDB;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 2363
    .local v15, filePath:Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2364
    .local v16, intent:Landroid/content/Intent;
    const-string v4, "ringtone_filepath"

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2365
    const-string v4, "ringtone_uri"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2366
    const-string v4, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2368
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 2371
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
    .locals 10
    .parameter "position"
    .parameter "uri"

    .prologue
    const-string v6, "com.android.music"

    const-string v6, "activity"

    const-string v9, "MusicPlayer"

    const-string v6, "1"

    .line 2388
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

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

    .line 2391
    const/4 v4, 0x0

    .line 2394
    .local v4, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2395
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2396
    .local v5, values:Landroid/content/ContentValues;
    iget v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_INDIVIDUAL_RINGTONE:I

    if-eq p1, v6, :cond_0

    iget v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VOICE_CALL_RINGTONE:I

    if-ne p1, v6, :cond_1

    .line 2398
    :cond_0
    const-string v6, "is_ringtone"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2406
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

    .line 2429
    :goto_1
    const/4 v4, 0x1

    .line 2442
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_2
    return v4

    .line 2399
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    iget v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VIDEO_CALL_RINGTONE:I

    if-ne p1, v6, :cond_2

    .line 2400
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v7, "IDX_VIDEO_CALL_RINGTONE, Don\'t update DB"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    const-string v6, "is_ringtone"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2430
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 2431
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2432
    const-string v6, "MusicPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException occured :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    const/4 v4, 0x0

    .line 2440
    goto :goto_2

    .line 2403
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

    .line 2435
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 2436
    .local v2, ex:Ljava/lang/UnsupportedOperationException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2437
    const-string v6, "MusicPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnsupportedOperationException occured :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    const/4 v4, 0x0

    goto :goto_2

    .line 2407
    .end local v2           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v1

    .line 2409
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_4
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

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

    .line 2410
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2413
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2414
    .local v0, am:Landroid/app/ActivityManager;
    const-string v6, "com.android.music"

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2416
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_3
    move-exception v1

    .line 2418
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2421
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2422
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
    .line 248
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    return-object v0
.end method

.method public GetView(Ljava/lang/String;Z)Landroid/view/View;
    .locals 1
    .parameter "tag"
    .parameter "set"

    .prologue
    .line 2149
    if-eqz p2, :cond_0

    .line 2150
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    .line 2152
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    goto :goto_0
.end method

.method public changeOrientation()V
    .locals 1

    .prologue
    .line 2859
    sget-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    if-eqz v0, :cond_0

    .line 2872
    :cond_0
    return-void
.end method

.method public changeTab(I)Z
    .locals 3
    .parameter "listType"

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1008
    .local v0, tabNo:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 1010
    const/4 v1, 0x1

    .line 1012
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkNoTracks(Ljava/lang/String;)V
    .locals 5
    .parameter "tag"

    .prologue
    const/4 v4, 0x0

    .line 2720
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 2721
    .local v0, viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    .line 2726
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    .line 2727
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 2728
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2730
    :cond_0
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    .line 2731
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCursor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2734
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v3}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    invoke-direct {p0, v0, p1}, Lcom/android/music/list/activity/MpMainTabActivity;->initIndexer(Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;Ljava/lang/String;)V

    .line 2737
    invoke-virtual {p0, v4, p1}, Lcom/android/music/list/activity/MpMainTabActivity;->showNoTracksView(ZLjava/lang/String;)V

    .line 2750
    :goto_0
    return-void

    .line 2743
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/music/list/activity/MpMainTabActivity;->showNoTracksView(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public checkPlayButtonEnable()V
    .locals 5

    .prologue
    .line 1017
    iget-boolean v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1021
    :try_start_0
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v2, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->playerButton:Landroid/widget/Button;

    .line 1022
    .local v2, playerButton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v1, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->playerButtonLayout:Landroid/widget/RelativeLayout;

    .line 1025
    .local v1, layout:Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1030
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1031
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1048
    .end local v1           #layout:Landroid/widget/RelativeLayout;
    .end local v2           #playerButton:Landroid/widget/Button;
    :cond_0
    :goto_0
    return-void

    .line 1038
    .restart local v1       #layout:Landroid/widget/RelativeLayout;
    .restart local v2       #playerButton:Landroid/widget/Button;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1039
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1044
    .end local v1           #layout:Landroid/widget/RelativeLayout;
    .end local v2           #playerButton:Landroid/widget/Button;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1045
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 13
    .parameter "tag"

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0c002a

    const v10, 0x7f030009

    .line 1649
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1653
    .local v4, layout:Landroid/widget/RelativeLayout;
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v8, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v8}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter()Z

    .line 1654
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v8, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v8}, Lcom/android/music/list/view/MpListGridView;->initViewAdapter()V

    .line 1655
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    invoke-direct {p0, v8, p1}, Lcom/android/music/list/activity/MpMainTabActivity;->initIndexer(Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;Ljava/lang/String;)V

    .line 1656
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v8, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1657
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v8, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1658
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v8, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1661
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v8, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {p0, v8}, Lcom/android/music/list/activity/MpMainTabActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 1663
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v8, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1664
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v8, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/music/list/view/MpListGridView;->setVisibility(I)V

    .line 1665
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v6, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1666
    .local v6, listView:Lcom/android/music/list/view/AbstractMpListView;
    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v5

    .line 1667
    .local v5, listType:I
    iget-boolean v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    invoke-virtual {v6, v8, v5}, Lcom/android/music/list/view/AbstractMpListView;->showCheck(ZI)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1668
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v8, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1669
    .local v3, buttonView:Landroid/view/View;
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1670
    .local v2, buttonLayout:Landroid/widget/LinearLayout;
    const v8, 0x7f0c002b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1671
    .local v7, twoButtonLayout:Landroid/widget/RelativeLayout;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1672
    const v8, 0x7f0c002d

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1673
    .local v0, button1:Landroid/widget/Button;
    const v8, 0x7f0c002e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1674
    .local v1, button2:Landroid/widget/Button;
    const/4 v8, 0x3

    invoke-virtual {v6, v8, v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->setSoftKey(ILandroid/widget/Button;Landroid/widget/Button;)V

    .line 1675
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v8, v3

    .line 1709
    .end local v0           #button1:Landroid/widget/Button;
    .end local v1           #button2:Landroid/widget/Button;
    .end local v2           #buttonLayout:Landroid/widget/LinearLayout;
    .end local v3           #buttonView:Landroid/view/View;
    .end local v7           #twoButtonLayout:Landroid/widget/RelativeLayout;
    :goto_0
    return-object v8

    .line 1677
    :cond_0
    iget-boolean v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-eqz v8, :cond_1

    move-object v8, v4

    .line 1678
    goto :goto_0

    .line 1680
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v8, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1681
    .restart local v3       #buttonView:Landroid/view/View;
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1690
    .restart local v2       #buttonLayout:Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    const v9, 0x7f0c002f

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->playerButtonLayout:Landroid/widget/RelativeLayout;

    .line 1694
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    const v9, 0x7f0c0030

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->playerButton:Landroid/widget/Button;

    .line 1698
    iget-object v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v8, v8, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->playerButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/music/list/activity/MpMainTabActivity$7;

    invoke-direct {v9, p0}, Lcom/android/music/list/activity/MpMainTabActivity$7;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1708
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v8, v3

    .line 1709
    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isMediaScannerRunCheck()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMediaScannerRunCheck:Z

    return v0
.end method

.method public launchDiscPlus()V
    .locals 0

    .prologue
    .line 1156
    invoke-direct {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->onRotateProcess()V

    .line 1157
    return-void
.end method

.method public onAccuracyChanged(II)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 2670
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x3

    .line 1637
    if-ne p1, v0, :cond_1

    .line 1638
    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 1639
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    .line 1644
    :goto_0
    return-void

    .line 1643
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 2877
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    .line 2878
    .local v0, gridView:Lcom/android/music/list/view/MpListGridView;
    if-eqz v0, :cond_0

    .line 2879
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2880
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    .line 2884
    :goto_0
    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpListGridView;->setNumColumns(I)V

    .line 2887
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRequestedOrientation() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getRequestedOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2889
    return-void

    .line 2882
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 29
    .parameter "item"

    .prologue
    .line 1922
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 1923
    .local v6, contextID:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v23

    .line 1925
    .local v23, tag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v13

    .line 1926
    .local v13, mCurrentTabTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    move-object v0, v5

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v24, v0

    sget v21, Lcom/android/music/list/view/AbstractMpListView;->mPlayingMediaId:I

    .line 1929
    .local v21, playingMediaId:I
    packed-switch v6, :pswitch_data_0

    .line 2113
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v24

    return v24

    .line 1933
    :pswitch_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1938
    .local v5, builder:Landroid/app/AlertDialog$Builder;
    const/16 v20, 0x0

    .line 1939
    .local v20, pauseMedia:Ljava/lang/String;
    const/16 v22, 0x0

    .line 1942
    .local v22, stopMedia:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z

    move-result v22

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 1949
    :goto_1
    if-nez v20, :cond_0

    .line 1951
    const-string v20, "No string"

    .line 1954
    :cond_0
    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/music/common/data/MusicAddData;->mId:I

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    const v24, 0x7f0a0016

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-eqz v24, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->deleteUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_3

    const v24, 0x7f0a0016

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_3

    .line 1957
    :cond_2
    const v24, 0x7f0a00f3

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    const v25, 0x1080027

    invoke-virtual/range {v24 .. v25}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    const v25, 0x7f0a00b0

    invoke-virtual/range {v24 .. v25}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    const v25, 0x7f0a00a5

    new-instance v26, Lcom/android/music/list/activity/MpMainTabActivity$8;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity$8;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    invoke-virtual/range {v24 .. v26}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2024
    :goto_2
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->contextAlert:Landroid/app/AlertDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1944
    :catch_0
    move-exception v24

    move-object/from16 v7, v24

    .line 1946
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 1969
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_3
    const v24, 0x7f0a0037

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1970
    const v24, 0x1080027

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1971
    const v24, 0x7f0a0016

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_4

    .line 1973
    const v24, 0x7f0a00f4

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1979
    :goto_3
    const v24, 0x7f0a00a5

    new-instance v25, Lcom/android/music/list/activity/MpMainTabActivity$10;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity$10;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    move-object v0, v5

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    const v25, 0x7f0a00a6

    new-instance v26, Lcom/android/music/list/activity/MpMainTabActivity$9;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity$9;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    invoke-virtual/range {v24 .. v26}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 1977
    :cond_4
    const v24, 0x7f0a00f5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 2031
    .end local v5           #builder:Landroid/app/AlertDialog$Builder;
    .end local v20           #pauseMedia:Ljava/lang/String;
    .end local v22           #stopMedia:Z
    :pswitch_1
    const/16 v16, 0x0

    .line 2032
    .local v16, mediaUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v15

    .line 2033
    .local v15, mMusicDB:Lcom/android/music/common/data/MusicDB;
    new-instance v17, Lcom/android/music/common/data/MediaMetadata;

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/music/common/data/MediaMetadata;-><init>(Lcom/android/music/common/data/MusicDB;)V

    .line 2034
    .local v17, meta:Lcom/android/music/common/data/MediaMetadata;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->deleteUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    .line 2035
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MediaMetadata;->parse(Landroid/net/Uri;)Z

    .line 2036
    const/16 v18, 0x0

    .line 2037
    .local v18, mimeType:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/music/common/data/MediaMetadata;->filetype:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2038
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2039
    .local v8, emailIntent:Landroid/content/Intent;
    const-string v24, "android.intent.action.SEND"

    move-object v0, v8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2040
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2041
    const-string v24, "android.intent.extra.STREAM"

    move-object v0, v8

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2042
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2049
    .end local v8           #emailIntent:Landroid/content/Intent;
    .end local v15           #mMusicDB:Lcom/android/music/common/data/MusicDB;
    .end local v16           #mediaUri:Landroid/net/Uri;
    .end local v17           #meta:Lcom/android/music/common/data/MediaMetadata;
    .end local v18           #mimeType:Ljava/lang/String;
    :pswitch_2
    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 2054
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    move-object v0, v5

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v19, v0

    .line 2056
    .local v19, mlistView:Lcom/android/music/list/view/AbstractMpListView;
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object v12, v0

    .line 2060
    .local v12, mCondition:[Ljava/lang/String;
    new-instance v14, Lcom/android/music/common/data/MpListFilter;

    invoke-virtual/range {v19 .. v19}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v24

    const/16 v25, 0x1

    move-object v0, v14

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2061
    .local v14, mFilter:Lcom/android/music/common/data/MpListFilter;
    const/4 v11, -0x1

    .line 2062
    .local v11, mCon:I
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_6

    .line 2063
    const/4 v11, -0x1

    .line 2066
    :goto_4
    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object v1, v14

    move/from16 v2, v27

    move v3, v11

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v26, v24, v25

    .line 2068
    if-eqz v14, :cond_5

    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    if-eqz v24, :cond_5

    .line 2069
    const/16 v24, 0x0

    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    const-string v25, "0"

    :goto_5
    aput-object v25, v12, v24

    .line 2071
    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 2072
    const/16 v24, 0x1

    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v12, v24

    .line 2079
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "onOptionsItemSelected():%s,%s,%s"

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aget-object v28, v12, v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x1

    aget-object v28, v12, v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const/16 v28, 0x2

    aget-object v28, v12, v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->itemIndex:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Z

    move-object v10, v0

    .line 2083
    .local v10, listBooleanIndex:[Z
    const/16 v24, 0x0

    move-object v0, v10

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 2084
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->itemIndex:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    const/16 v25, 0x1

    aput-boolean v25, v10, v24

    .line 2086
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-class v25, Lcom/android/music/list/activity/MpListActivity;

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2087
    .local v9, intent:Landroid/content/Intent;
    const-string v24, "ListType"

    const/16 v25, 0x2

    move-object v0, v9

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2088
    const-string v24, "TitleText"

    const v25, 0x7f0a0034

    move-object v0, v9

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2090
    const-string v24, "Check"

    const/16 v25, 0x1

    move-object v0, v9

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2091
    const-string v24, "CheckListType"

    const/16 v25, 0x1

    move-object v0, v9

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2093
    const-string v24, "CheckedList"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 2094
    const-string v24, "Conditions"

    move-object v0, v9

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2095
    const-string v24, "RootListType"

    const/16 v25, 0x1

    move-object v0, v9

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2096
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2065
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #listBooleanIndex:[Z
    :cond_6
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_7

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v11, v24

    :goto_7
    goto/16 :goto_4

    :cond_7
    const/16 v24, 0x0

    move/from16 v11, v24

    goto :goto_7

    .line 2069
    :cond_8
    const-string v25, "1"

    goto/16 :goto_5

    .line 2074
    :cond_9
    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 2075
    const/16 v24, 0x1

    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v12, v24

    goto/16 :goto_6

    .line 2077
    :cond_a
    const/16 v24, 0x1

    const-string v25, "-1"

    aput-object v25, v12, v24

    goto/16 :goto_6

    .line 2103
    .end local v11           #mCon:I
    .end local v12           #mCondition:[Ljava/lang/String;
    .end local v14           #mFilter:Lcom/android/music/common/data/MpListFilter;
    .end local v19           #mlistView:Lcom/android/music/list/view/AbstractMpListView;
    :pswitch_4
    new-instance v9, Landroid/content/Intent;

    const-class v24, Lcom/android/music/list/activity/MpPlayListActivity;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2104
    .restart local v9       #intent:Landroid/content/Intent;
    const-string v24, "ListType"

    const/16 v25, 0x1a

    move-object v0, v9

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2105
    const-string v24, "TitleText"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistTitle:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2106
    const-string v24, "Conditions"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistConditions:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object v0, v9

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2107
    const-string v24, "CheckListType"

    const/16 v25, 0x5

    move-object v0, v9

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1929
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v13, ""

    .line 405
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 408
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v10, "SpeedCheck - MpMainTapActivity : onCreate entered."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iput-object p0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    .line 411
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    const-string v10, ""

    invoke-static {v9, v13, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    iput-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    .line 419
    invoke-static {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 420
    sget-object v9, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    if-nez v9, :cond_0

    .line 421
    const-string v9, ""

    invoke-static {p0, v13, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    sput-object v9, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    .line 425
    :goto_0
    sget-object v9, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    const v10, 0x7f0a00eb

    invoke-virtual {v9, v10}, Landroid/widget/Toast;->setText(I)V

    .line 426
    sget-object v9, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v9, v11}, Landroid/widget/Toast;->setDuration(I)V

    .line 427
    sget-object v9, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 428
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    .line 579
    :goto_1
    return-void

    .line 423
    :cond_0
    sget-object v9, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    .line 431
    :cond_1
    const/4 v9, 0x0

    sput-object v9, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    .line 443
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/music/list/data/MpListDataController;->InitContext(Landroid/content/Context;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionMenus:[Ljava/lang/String;

    .line 451
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/view/Window;->requestFeature(I)Z

    .line 452
    const v9, 0x7f030019

    invoke-virtual {p0, v9}, Lcom/android/music/list/activity/MpMainTabActivity;->setContentView(I)V

    .line 456
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 457
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 458
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 459
    const-string v9, "Check"

    invoke-virtual {v0, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    .line 463
    :cond_2
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v9

    iput-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 464
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    .line 465
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    .line 466
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    .line 468
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwTabHost;->clearAllTabs()V

    .line 474
    invoke-direct {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getMusicMenu()V

    .line 477
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 479
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v9}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v7

    .line 480
    .local v7, tabName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v9}, Lcom/android/music/list/data/MpListDisplayData;->getPicture()I

    move-result v6

    .line 481
    .local v6, mImage:I
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v9}, Lcom/android/music/list/data/MpListDisplayData;->getItemLayout()I

    move-result v4

    .line 482
    .local v4, itemType:I
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 483
    .local v5, listType:I
    invoke-direct {p0, v4, v5}, Lcom/android/music/list/activity/MpMainTabActivity;->makeViews(II)Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    move-result-object v8

    .line 484
    .local v8, view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v10, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v10, v7}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Lcom/sec/android/touchwiz/widget/TwTabHost$TabContentFactory;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 492
    .end local v4           #itemType:I
    .end local v5           #listType:I
    .end local v6           #mImage:I
    .end local v7           #tabName:Ljava/lang/String;
    .end local v8           #view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_3
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    .line 494
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    new-instance v10, Lcom/android/music/list/activity/MpMainTabActivity$2;

    invoke-direct {v10, p0}, Lcom/android/music/list/activity/MpMainTabActivity$2;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setOnTabChangedListener(Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;)V

    .line 542
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/android/music/list/activity/MpMainTabActivity;->setDefaultKeyMode(I)V

    .line 543
    new-instance v3, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 545
    .local v3, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    const-string v9, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    const-string v9, "file"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 548
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v3}, Lcom/android/music/list/activity/MpMainTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 556
    iget-object v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->DiscPlusImageInit:Landroid/os/Handler;

    const-wide/16 v10, 0x190

    invoke-virtual {v9, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 558
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getOrientation()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_4

    .line 559
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    goto/16 :goto_1

    .line 561
    :cond_4
    const/4 v9, 0x6

    iput v9, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 23
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v22

    .line 1717
    .local v22, tag:Ljava/lang/String;
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v20, v0

    .line 1718
    .local v20, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move/from16 v17, v0

    .line 1719
    .local v17, mSelectedPosition:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->itemIndex:I

    .line 1720
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v18

    .line 1721
    .local v18, mdb:Lcom/android/music/common/data/MusicDB;
    const v5, 0x7f0a00c0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1722
    new-instance v5, Lcom/android/music/common/data/MusicAddData;

    invoke-direct {v5}, Lcom/android/music/common/data/MusicAddData;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    .line 1726
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1826
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p3}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1827
    return-void

    .line 1734
    :cond_1
    const v5, 0x7f0a0016

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 1737
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1738
    .local v12, cursor:Landroid/database/Cursor;
    move-object v0, v12

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    move-object v5, v0

    const-string v6, "_id"

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    move-object v5, v0

    const-string v6, "_data"

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 1745
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    move-object v6, v0

    iget v6, v6, Lcom/android/music/common/data/MusicAddData;->mId:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->deleteUri:Landroid/net/Uri;

    .line 1746
    const-string v5, "title"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1748
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/music/list/activity/MpMainTabActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1749
    .local v13, deleteCursor:Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1751
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    move-object v5, v0

    iget v5, v5, Lcom/android/music/common/data/MusicAddData;->mId:I

    const-string v6, "_id"

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 1760
    :cond_2
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->deleteFileName:Ljava/lang/String;

    .line 1762
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1763
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1782
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #deleteCursor:Landroid/database/Cursor;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->contextMenuTitle:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1783
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0a0037

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1784
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const v8, 0x7f0a0026

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1785
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x2

    const v8, 0x7f0a0027

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1786
    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x3

    const v8, 0x7f0a0034

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1788
    invoke-virtual/range {p0 .. p1}, Lcom/android/music/list/activity/MpMainTabActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    .line 1791
    :cond_3
    const v5, 0x7f0a0017

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1793
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1794
    .restart local v12       #cursor:Landroid/database/Cursor;
    const/4 v5, 0x2

    move-object/from16 v0, v18

    move-object v1, v12

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->getMergedCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v19

    .line 1795
    .local v19, mergedCursor:Landroid/database/Cursor;
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1796
    const/4 v5, 0x2

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1798
    .local v21, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v16

    .line 1799
    .local v16, mDB:Lcom/android/music/common/data/MusicDB;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->playlistTitle:[Ljava/lang/String;

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistTitle:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const-string v7, "name"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v19

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistTitle:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, v16

    move v1, v7

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumID(ILandroid/database/Cursor;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1803
    const-string v5, "_id"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1804
    .local v15, iPlaylistID:I
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->playlistConditions:[Ljava/lang/String;

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistConditions:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v5, v6

    .line 1806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistConditions:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistConditions:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistTitle:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x2

    const-string v7, "thumbnail_uri"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v19

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1810
    if-nez v21, :cond_4

    .line 1812
    const-string v5, "name"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->contextMenuTitle:Ljava/lang/String;

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->contextMenuTitle:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1814
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0a0037

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1815
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const v8, 0x7f0a0036

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    move-object v5, v0

    const-string v6, "_id"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 1817
    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->deleteUri:Landroid/net/Uri;

    .line 1822
    :cond_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1757
    .end local v15           #iPlaylistID:I
    .end local v16           #mDB:Lcom/android/music/common/data/MusicDB;
    .end local v19           #mergedCursor:Landroid/database/Cursor;
    .end local v21           #name:Ljava/lang/String;
    .restart local v13       #deleteCursor:Landroid/database/Cursor;
    :cond_5
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1764
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #deleteCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 1765
    .local v14, e:Landroid/database/sqlite/SQLiteFullException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .line 1770
    .local v11, am:Landroid/app/ActivityManager;
    const-string v5, "com.android.music"

    invoke-virtual {v11, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1772
    .end local v11           #am:Landroid/app/ActivityManager;
    .end local v14           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v5

    move-object v14, v5

    .line 1774
    .local v14, e:Landroid/database/sqlite/SQLiteDiskIOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    .line 1778
    .restart local v11       #am:Landroid/app/ActivityManager;
    const-string v5, "com.android.music"

    invoke-virtual {v11, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v10, 0x7f0a00c6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2169
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreateDialog(I)Landroid/app/Dialog;

    .line 2170
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2172
    .local v0, containerPopup4:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2173
    .local v1, inflatedBody:Landroid/view/View;
    const v5, 0x7f0c005a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 2174
    .local v2, pBar4:Landroid/widget/ProgressBar;
    const v5, 0x7f0c005b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2176
    .local v4, tv4:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 2217
    :goto_0
    :pswitch_0
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2220
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2221
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    :goto_1
    return-object v5

    .line 2178
    :pswitch_1
    invoke-virtual {p0, v10}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2181
    :pswitch_2
    const v5, 0x7f0a00c7

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2184
    :pswitch_3
    invoke-virtual {p0, v10}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2187
    :pswitch_4
    const v5, 0x7f0a00c8

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2190
    :pswitch_5
    const v5, 0x7f0a00c5

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2191
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2206
    :pswitch_6
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/CharSequence;

    const v5, 0x7f0a0049

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    const v5, 0x7f0a004a

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    const/4 v5, 0x2

    const v6, 0x7f0a004b

    invoke-virtual {p0, v6}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 2210
    .local v3, setAs:[Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 2211
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0a0027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2212
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2213
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_1

    .line 2176
    nop

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
    .locals 14
    .parameter "menu"

    .prologue
    const/4 v13, 0x0

    .line 1414
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    .line 1418
    .local v10, status:Ljava/lang/String;
    if-nez p1, :cond_0

    move v11, v13

    .line 1496
    :goto_0
    return v11

    .line 1420
    :cond_0
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    if-nez v11, :cond_1

    .line 1421
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    .line 1422
    :cond_1
    iget-boolean v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-eqz v11, :cond_2

    move v11, v13

    .line 1423
    goto :goto_0

    .line 1424
    :cond_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1425
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1427
    .local v6, mIsThereLastPlayedFile:Ljava/lang/Boolean;
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v11, :cond_5

    .line 1447
    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    .line 1451
    .local v0, currentTab:I
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v11}, Lcom/android/music/list/data/MpListDisplayData;->getOptionMenus()Ljava/util/ArrayList;

    move-result-object v9

    .line 1454
    .local v9, optionMenu:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v7, ""

    .line 1455
    .local v7, mStr:Ljava/lang/String;
    const v2, 0x7f020021

    .line 1457
    .local v2, grid_list_image:I
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v5

    .line 1458
    .local v5, mCurrentTabTag:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget v11, v11, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mOptionMenuGridList:I

    packed-switch v11, :pswitch_data_0

    .line 1469
    :goto_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_c

    .line 1470
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1472
    .local v8, optionID:I
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v11, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1475
    .local v4, listView:Lcom/android/music/list/view/AbstractMpListView;
    const/4 v11, 0x3

    if-ne v8, v11, :cond_6

    .line 1469
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1433
    .end local v0           #currentTab:I
    .end local v2           #grid_list_image:I
    .end local v3           #i:I
    .end local v4           #listView:Lcom/android/music/list/view/AbstractMpListView;
    .end local v5           #mCurrentTabTag:Ljava/lang/String;
    .end local v7           #mStr:Ljava/lang/String;
    .end local v8           #optionID:I
    .end local v9           #optionMenu:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    :try_start_0
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v11}, Lcom/android/music/player/service/ICorePlayerService;->isThereLastPlayedFile()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1438
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 1440
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 1441
    .local v1, e:Landroid/os/RemoteException;
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    const-string v12, "error"

    invoke-virtual {v11, v12}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1442
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1460
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #currentTab:I
    .restart local v2       #grid_list_image:I
    .restart local v5       #mCurrentTabTag:Ljava/lang/String;
    .restart local v7       #mStr:Ljava/lang/String;
    .restart local v9       #optionMenu:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_0
    const v11, 0x7f0a003a

    invoke-virtual {p0, v11}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1461
    const v2, 0x7f020022

    .line 1462
    goto :goto_2

    .line 1464
    :pswitch_1
    const v11, 0x7f0a003b

    invoke-virtual {p0, v11}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1465
    const v2, 0x7f020021

    goto :goto_2

    .line 1478
    .restart local v3       #i:I
    .restart local v4       #listView:Lcom/android/music/list/view/AbstractMpListView;
    .restart local v8       #optionID:I
    :cond_6
    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v11

    if-nez v11, :cond_8

    .line 1479
    const/4 v11, 0x2

    if-eq v8, v11, :cond_7

    const/4 v11, 0x5

    if-ne v8, v11, :cond_4

    .line 1480
    :cond_7
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionMenus:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-interface {p1, v13, v8, v3, v11}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v11

    iget-object v12, p0, Lcom/android/music/list/activity/MpMainTabActivity;->optionMenuIcon:[I

    aget v12, v12, v8

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 1485
    :cond_8
    const/16 v11, 0x9

    if-eq v8, v11, :cond_9

    const/16 v11, 0xb

    if-ne v8, v11, :cond_a

    :cond_9
    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getNotMergedCount()I

    move-result v11

    if-eqz v11, :cond_4

    .line 1487
    :cond_a
    const/16 v11, 0xc

    if-ne v8, v11, :cond_b

    .line 1488
    invoke-interface {p1, v13, v8, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 1491
    :cond_b
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionMenus:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-interface {p1, v13, v8, v3, v11}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v11

    iget-object v12, p0, Lcom/android/music/list/activity/MpMainTabActivity;->optionMenuIcon:[I

    aget v12, v12, v8

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 1496
    .end local v4           #listView:Lcom/android/music/list/view/AbstractMpListView;
    .end local v8           #optionID:I
    :cond_c
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v11

    goto/16 :goto_0

    .line 1458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 275
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mUnmountHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mUnmountHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    :cond_0
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->DiscPlusImageInit:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 280
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->DiscPlusImageInit:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpMainTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    invoke-static {p0}, Lcom/android/music/common/util/MusicPlayerUtil;->unbindService(Landroid/content/Context;)V

    .line 293
    :try_start_1
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpMainTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    :goto_1
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    if-eqz v4, :cond_3

    .line 310
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, mCurrentTabTag:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 313
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v4, :cond_3

    .line 315
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v4, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-eqz v4, :cond_2

    .line 316
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v4, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->musicClose()V

    .line 317
    :cond_2
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    invoke-virtual {v4}, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->clearData()V

    .line 322
    .end local v2           #mCurrentTabTag:Ljava/lang/String;
    :cond_3
    iget-boolean v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mRestartActivity:Z

    if-nez v4, :cond_4

    .line 323
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->clearStatics()V

    .line 326
    :cond_4
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v4}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v4, v5, :cond_5

    .line 327
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 329
    :cond_5
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v4, :cond_6

    .line 330
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v4}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 332
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v4}, Lcom/android/music/common/util/BatteryChecker;->closeAlertDialog()V

    .line 338
    :cond_6
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    if-eqz v4, :cond_9

    .line 340
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 341
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 342
    .local v3, viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    if-eqz v3, :cond_8

    .line 343
    iget-object v4, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_7

    .line 344
    iget-object v4, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_7
    iget-object v4, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v4, :cond_8

    iget-object v4, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v4, :cond_8

    .line 348
    :try_start_2
    iget-object v4, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 354
    :goto_3
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 340
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 285
    .end local v1           #i:I
    .end local v3           #viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 286
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v5, "onDestroy : mActivityUpdateReceiver is not registered."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 295
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v5, "onDestroy : mMediaReceiver is not registered."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 349
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #i:I
    .restart local v3       #viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 350
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 351
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v4

    move-object v0, v4

    .line 352
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v5, "IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 360
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #i:I
    .end local v3           #viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_9
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 362
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onDestroy()V

    .line 363
    return-void
.end method

.method public onFinishActivity()V
    .locals 0

    .prologue
    .line 2850
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    .line 2852
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1589
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 1590
    .local v3, optionID:I
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 1593
    .local v2, mCurrentTabTag:Ljava/lang/String;
    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 1595
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    packed-switch v4, :pswitch_data_0

    .line 1632
    .end local p0
    :goto_0
    return v7

    .line 1598
    .restart local p0
    :pswitch_0
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    iget-boolean v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    invoke-virtual {v4, p0, v5, v7}, Lcom/android/music/list/view/MpListGridView;->initAdapter(Landroid/content/Context;ZZ)V

    .line 1599
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v4}, Lcom/android/music/list/view/MpListGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1600
    .local v0, adapter:Landroid/widget/Adapter;
    instance-of v4, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    if-eqz v4, :cond_0

    .line 1601
    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v2, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->MyTag:Ljava/lang/String;

    .line 1602
    :cond_0
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v8}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    .line 1604
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    iget v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    invoke-virtual {v4, v5}, Lcom/android/music/list/view/MpListGridView;->setNumColumns(I)V

    .line 1605
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v4, v6}, Lcom/android/music/list/view/MpListGridView;->setVisibility(I)V

    .line 1607
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iput v7, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    .line 1608
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iput v6, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mOptionMenuGridList:I

    .line 1609
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1612
    .restart local p0
    :pswitch_1
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    iget-boolean v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/music/list/view/MpListGridView;->initAdapter(Landroid/content/Context;ZZ)V

    .line 1613
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v6}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    .line 1615
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v4, v8}, Lcom/android/music/list/view/MpListGridView;->setVisibility(I)V

    .line 1617
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iput v6, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    .line 1618
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iput v7, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mOptionMenuGridList:I

    .line 1619
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1628
    .restart local p0
    :cond_1
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 1629
    .local v1, currentView:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-object v4, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v3}, Lcom/android/music/list/view/AbstractMpListView;->optionMenuOperate(I)V

    goto/16 :goto_0

    .line 1595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1056
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v3, "MpPlay MpMainTabActivity onPause1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1058
    .local v1, mCurrentTabTag:Ljava/lang/String;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->activityCechk:Z

    .line 1059
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1061
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v2, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v2, :cond_2

    .line 1063
    iget-boolean v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-eqz v2, :cond_0

    .line 1064
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v2, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->saveCheck()V

    .line 1066
    :cond_0
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v2, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-boolean v2, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    if-ne v2, v4, :cond_1

    .line 1070
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v2, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v2, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1072
    :cond_1
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v3, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v3}, Lcom/android/music/list/view/AbstractMpListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListPosition:I

    .line 1075
    :cond_2
    sget-object v2, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-eqz v2, :cond_3

    .line 1076
    sget-object v2, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1079
    :cond_3
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextAlert:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    .line 1081
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    .line 1084
    :cond_4
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v2, :cond_5

    .line 1086
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->dismissDialog(I)V

    .line 1089
    :cond_5
    const v2, 0x7f0a0017

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 1091
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget v2, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    if-ne v2, v4, :cond_6

    .line 1093
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v2, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v2}, Lcom/android/music/list/view/MpListGridView;->cancelContextAlert()V

    .line 1097
    :cond_6
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v2, :cond_7

    .line 1098
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v2}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 1101
    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mPlayMusicReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1112
    :goto_1
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onPause()V

    .line 1113
    return-void

    .line 1102
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1103
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v3, "onPause : mLowBatteryReceiver is not registered."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1108
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1109
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v3, "onPause : mPlayMusicReceiver is not registered."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPrepareContextMenu(Landroid/view/ContextMenu;)Z
    .locals 14
    .parameter "menu"

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1833
    const/4 v1, 0x0

    .line 1834
    .local v1, currentUri:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1835
    .local v0, currentFilepath:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1836
    .local v4, isDrm:Z
    const/4 v8, 0x0

    .line 1837
    .local v8, option:Landroid/drm/mobile2/Drm2Options;
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v7

    .line 1847
    .local v7, mMusicDB:Lcom/android/music/common/data/MusicDB;
    const/4 v5, 0x1

    .line 1848
    .local v5, isRingtone:Z
    const/4 v6, 0x1

    .line 1850
    .local v6, isSendAs:Z
    iget-object v10, p0, Lcom/android/music/list/activity/MpMainTabActivity;->deleteUri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1851
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1853
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1854
    .local v9, tmpFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1855
    invoke-interface {p1, v12}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1856
    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1857
    invoke-interface {p1, v13}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1858
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v10, v12

    .line 1917
    :goto_0
    return v10

    .line 1862
    :cond_0
    if-nez v1, :cond_2

    .line 1863
    const/4 v5, 0x0

    .line 1864
    const/4 v6, 0x0

    .line 1907
    :cond_1
    :goto_1
    if-eqz v5, :cond_7

    .line 1908
    invoke-interface {p1, v13}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1912
    :goto_2
    if-eqz v6, :cond_8

    .line 1913
    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1917
    :goto_3
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v10

    goto :goto_0

    .line 1865
    :cond_2
    invoke-static {v1}, Lcom/android/music/common/util/UriUtil;->IsUsedMediaProvider(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1866
    const/4 v5, 0x0

    .line 1867
    const/4 v6, 0x0

    goto :goto_1

    .line 1870
    :cond_3
    if-nez v0, :cond_5

    .line 1871
    const/4 v5, 0x0

    .line 1872
    const/4 v6, 0x0

    .line 1897
    :cond_4
    :goto_4
    const-string v10, "content://media/external"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "content://media/internal"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "file://"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "content://drm/"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1901
    const/4 v5, 0x0

    .line 1902
    const/4 v6, 0x0

    goto :goto_1

    .line 1874
    :cond_5
    new-instance v2, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-direct {v2}, Lcom/android/music/common/manager/MusicDrmManager;-><init>()V

    .line 1877
    .local v2, drmManager:Lcom/android/music/common/manager/MusicDrmManager;
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v4

    .line 1878
    if-eqz v4, :cond_4

    .line 1879
    invoke-virtual {v2}, Lcom/android/music/common/manager/MusicDrmManager;->getOptionInfo()Landroid/drm/mobile2/Drm2Options;

    move-result-object v8

    .line 1881
    if-nez v8, :cond_6

    .line 1882
    const/4 v5, 0x0

    .line 1883
    const/4 v6, 0x0

    goto :goto_4

    .line 1885
    :cond_6
    iget-boolean v5, v8, Landroid/drm/mobile2/Drm2Options;->bRingtone:Z

    .line 1886
    iget-boolean v6, v8, Landroid/drm/mobile2/Drm2Options;->bSendAs:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1889
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 1890
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1891
    iget-object v10, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    const v11, 0x7f0a0043

    invoke-virtual {v10, v11}, Landroid/widget/Toast;->setText(I)V

    .line 1892
    iget-object v10, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    move v10, v12

    .line 1893
    goto :goto_0

    .line 1910
    .end local v2           #drmManager:Lcom/android/music/common/manager/MusicDrmManager;
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :cond_7
    invoke-interface {p1, v13}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1915
    :cond_8
    invoke-interface {p1, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 2447
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 2448
    const v1, 0x7f0c005a

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 2449
    .local v0, pBar4:Landroid/widget/ProgressBar;
    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    .line 2451
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2452
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2455
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 14
    .parameter "menu"

    .prologue
    const/4 v13, 0x0

    .line 1501
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    .line 1505
    .local v10, status:Ljava/lang/String;
    if-nez p1, :cond_0

    move v11, v13

    .line 1583
    :goto_0
    return v11

    .line 1507
    :cond_0
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    if-nez v11, :cond_1

    .line 1508
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    .line 1509
    :cond_1
    iget-boolean v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-eqz v11, :cond_2

    move v11, v13

    .line 1510
    goto :goto_0

    .line 1511
    :cond_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1512
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1514
    .local v6, mIsThereLastPlayedFile:Ljava/lang/Boolean;
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v11, :cond_5

    .line 1534
    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    .line 1538
    .local v0, currentTab:I
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v11}, Lcom/android/music/list/data/MpListDisplayData;->getOptionMenus()Ljava/util/ArrayList;

    move-result-object v9

    .line 1541
    .local v9, optionMenu:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v7, ""

    .line 1542
    .local v7, mStr:Ljava/lang/String;
    const v2, 0x7f020021

    .line 1544
    .local v2, grid_list_image:I
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v5

    .line 1545
    .local v5, mCurrentTabTag:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget v11, v11, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mOptionMenuGridList:I

    packed-switch v11, :pswitch_data_0

    .line 1556
    :goto_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_c

    .line 1557
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1559
    .local v8, optionID:I
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v11, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1562
    .local v4, listView:Lcom/android/music/list/view/AbstractMpListView;
    const/4 v11, 0x3

    if-ne v8, v11, :cond_6

    .line 1556
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1520
    .end local v0           #currentTab:I
    .end local v2           #grid_list_image:I
    .end local v3           #i:I
    .end local v4           #listView:Lcom/android/music/list/view/AbstractMpListView;
    .end local v5           #mCurrentTabTag:Ljava/lang/String;
    .end local v7           #mStr:Ljava/lang/String;
    .end local v8           #optionID:I
    .end local v9           #optionMenu:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    :try_start_0
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v11}, Lcom/android/music/player/service/ICorePlayerService;->isThereLastPlayedFile()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1525
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 1527
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 1528
    .local v1, e:Landroid/os/RemoteException;
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    const-string v12, "error"

    invoke-virtual {v11, v12}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1529
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1547
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #currentTab:I
    .restart local v2       #grid_list_image:I
    .restart local v5       #mCurrentTabTag:Ljava/lang/String;
    .restart local v7       #mStr:Ljava/lang/String;
    .restart local v9       #optionMenu:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_0
    const v11, 0x7f0a003a

    invoke-virtual {p0, v11}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1548
    const v2, 0x7f020022

    .line 1549
    goto :goto_2

    .line 1551
    :pswitch_1
    const v11, 0x7f0a003b

    invoke-virtual {p0, v11}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1552
    const v2, 0x7f020021

    goto :goto_2

    .line 1565
    .restart local v3       #i:I
    .restart local v4       #listView:Lcom/android/music/list/view/AbstractMpListView;
    .restart local v8       #optionID:I
    :cond_6
    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v11

    if-nez v11, :cond_8

    .line 1566
    const/4 v11, 0x2

    if-eq v8, v11, :cond_7

    const/4 v11, 0x5

    if-ne v8, v11, :cond_4

    .line 1567
    :cond_7
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionMenus:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-interface {p1, v13, v8, v3, v11}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v11

    iget-object v12, p0, Lcom/android/music/list/activity/MpMainTabActivity;->optionMenuIcon:[I

    aget v12, v12, v8

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 1572
    :cond_8
    const/16 v11, 0x9

    if-eq v8, v11, :cond_9

    const/16 v11, 0xb

    if-ne v8, v11, :cond_a

    :cond_9
    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getNotMergedCount()I

    move-result v11

    if-eqz v11, :cond_4

    .line 1574
    :cond_a
    const/16 v11, 0xc

    if-ne v8, v11, :cond_b

    .line 1575
    invoke-interface {p1, v13, v8, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 1578
    :cond_b
    iget-object v11, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionMenus:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-interface {p1, v13, v8, v3, v11}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v11

    iget-object v12, p0, Lcom/android/music/list/activity/MpMainTabActivity;->optionMenuIcon:[I

    aget v12, v12, v8

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 1583
    .end local v4           #listView:Lcom/android/music/list/view/AbstractMpListView;
    .end local v8           #optionID:I
    :cond_c
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v11

    goto/16 :goto_0

    .line 1545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, mCurrentTabTag:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->checkNoTracks(Ljava/lang/String;)V

    .line 587
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onRestart()V

    .line 588
    return-void
.end method

.method protected onResume()V
    .locals 27

    .prologue
    .line 716
    sget-boolean v21, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    if-eqz v21, :cond_1

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    .line 718
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    .line 719
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onResume()V

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v21

    sget-object v22, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 728
    :cond_2
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v16

    .line 729
    .local v16, mdb:Lcom/android/music/common/data/MusicDB;
    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 730
    .local v8, cursor1:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 731
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 735
    :cond_3
    new-instance v21, Lcom/android/music/common/util/BatteryChecker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/music/common/util/BatteryChecker;-><init>(Lcom/android/music/player/service/ICorePlayerService;Lcom/android/music/common/util/OnLowBatteryListener;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Landroid/app/Activity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p0, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/android/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 738
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 739
    .local v11, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v21, "android.intent.action.BATTERY_CHANGED"

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 740
    const-string v21, "android.intent.action.BATTERY_LOW"

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MusicPlayer : MusicDB.MediaCount  = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/music/common/data/MusicDB;->MediaCount:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    sget v21, Lcom/android/music/common/data/MusicDB;->MediaCount:I

    if-nez v21, :cond_4

    # djp952: Skip "Download from V Cast?" prompt when no media exists
    goto :cond_4

    .line 752
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 753
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const v21, 0x7f0a00a9

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 755
    const v21, 0x7f0a00a7

    new-instance v22, Lcom/android/music/list/activity/MpMainTabActivity$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity$5;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    move-object v0, v6

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 771
    const v21, 0x7f0a00a8

    new-instance v22, Lcom/android/music/list/activity/MpMainTabActivity$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity$6;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    move-object v0, v6

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 785
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v21

    sput-object v21, Lcom/android/music/list/activity/MpMainTabActivity;->mediaMessageBox:Landroid/app/AlertDialog;

    .line 786
    sget-object v21, Lcom/android/music/list/activity/MpMainTabActivity;->mediaMessageBox:Landroid/app/AlertDialog;

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->show()V

    .line 787
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/music/list/activity/MpMainTabActivity;->isShownmediaMessageBox:Z

    .line 791
    .end local v6           #builder:Landroid/app/AlertDialog$Builder;
    :cond_4
    new-instance v18, Landroid/content/IntentFilter;

    const-string v21, "musicPlayer.service.startUpdateStatus"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 792
    .local v18, startMusicFilter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mPlayMusicReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 794
    invoke-static/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    move-object/from16 v21, v0

    const v22, 0x7f0a00e6

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Toast;->setText(I)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    .line 798
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/music/common/util/MusicPlayerUtil;->registerIntentFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mConnection:Landroid/content/ServiceConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 802
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "SpeedCheck - MpMainTapActivity : onResume entered."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    sget-boolean v21, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mEntrance:Z

    if-eqz v21, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->isMenuChanged()Z

    move-result v21

    if-nez v21, :cond_7

    .line 805
    new-instance v10, Landroid/content/Intent;

    const-class v21, Lcom/android/music/list/activity/MpMainTabActivity;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 806
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 807
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mEntrance:Z

    .line 808
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mRestartActivity:Z

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    .line 810
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onResume()V

    goto/16 :goto_0

    .line 815
    .end local v10           #intent:Landroid/content/Intent;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->checkPlayButtonEnable()V

    .line 817
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->activityCechk:Z

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 825
    invoke-static/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mMediaScannerRunCheck:Z

    .line 831
    sget-boolean v21, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mEntrance:Z

    if-eqz v21, :cond_a

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const v22, 0x7f0a0017

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 833
    .local v19, view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 834
    const v21, 0x7f0a0017

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->initIndexer(Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;Ljava/lang/String;)V

    .line 835
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    .line 837
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const v22, 0x7f0a0017

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    move-object v0, v5

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 838
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/MpListGridView;->initAdapter(Landroid/content/Context;ZZ)V

    .line 840
    :cond_9
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mEntrance:Z

    .line 843
    .end local v19           #view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_a
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onResume()V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    .line 849
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/music/player/service/ICorePlayerService;->InitIndex()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v14

    .line 868
    .local v14, mCurrentTabTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v13, v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 869
    .local v13, listview:Lcom/android/music/list/view/AbstractMpListView;
    invoke-virtual {v13}, Lcom/android/music/list/view/AbstractMpListView;->GetCreateMusicHandler()Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    .line 870
    sget-object v21, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v22, 0x3

    const-wide/16 v23, 0xa

    invoke-virtual/range {v21 .. v24}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 880
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/music/common/manager/MusicAppManager;->getManagFilter()Lcom/android/music/common/manager/MusicAppManageFilter;

    move-result-object v15

    .line 882
    .local v15, manageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    if-eqz v15, :cond_c

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "OnResume: manageFilter is not null -> check runningstate = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v15

    iget v0, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_c
    if-eqz v15, :cond_14

    move-object v0, v15

    iget v0, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    move/from16 v21, v0

    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    move-object v0, v15

    iget v0, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    move/from16 v21, v0

    const/16 v22, 0xc

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 890
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "OnResume:call changeTap[%d], setSelection[%d]"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object v0, v15

    iget v0, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object v0, v15

    iget v0, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    move/from16 v25, v0

    const/16 v26, 0x2

    sub-int v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    move-object v0, v15

    iget v0, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->changeTab(I)Z

    move-result v21

    if-nez v21, :cond_e

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 896
    .restart local v19       #view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/music/list/view/AbstractMpListView;->clearAdapter()V

    .line 897
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    if-eqz v21, :cond_13

    .line 898
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 899
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->initIndexer(Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;Ljava/lang/String;)V

    .line 908
    .end local v19           #view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_e
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v12, v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 909
    .local v12, listView:Lcom/android/music/list/view/AbstractMpListView;
    move-object v0, v15

    iget v0, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    move/from16 v21, v0

    const/16 v22, 0x3

    sub-int v21, v21, v22

    move-object v0, v12

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->setSelection(I)V

    .line 914
    new-instance v17, Lcom/android/music/common/manager/MusicAppManageFilter;

    invoke-direct/range {v17 .. v17}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 915
    .local v17, newManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    const/16 v21, 0xa

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 916
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 917
    move-object v0, v15

    iget v0, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 918
    move-object v0, v15

    iget v0, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 920
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/music/common/manager/MusicAppManager;->setManageFilter(Lcom/android/music/common/manager/MusicAppManageFilter;)V

    .line 928
    .end local v12           #listView:Lcom/android/music/list/view/AbstractMpListView;
    .end local v17           #newManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    :cond_f
    :goto_3
    const v21, 0x7f0a0016

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 930
    .local v20, viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v21

    if-nez v21, :cond_11

    .line 931
    :cond_10
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->changeTab(I)Z

    .line 935
    .end local v20           #viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_11
    const v21, 0x7f0a0016

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    move-object v0, v5

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 938
    const v21, 0x7f0a0017

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    move-object v0, v5

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    move-object v0, v5

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/music/list/view/MpListGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 942
    .local v5, adapter:Landroid/widget/Adapter;
    move-object v0, v5

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 943
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_12

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v21

    if-nez v21, :cond_12

    .line 944
    check-cast v5, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    .end local v5           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v5}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->requery()Z

    .line 949
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 951
    .restart local v20       #viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 952
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/music/list/view/AbstractMpListView;->resumeCheck()V

    goto/16 :goto_0

    .line 851
    .end local v13           #listview:Lcom/android/music/list/view/AbstractMpListView;
    .end local v14           #mCurrentTabTag:Ljava/lang/String;
    .end local v15           #manageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    .end local v20           #viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :catch_0
    move-exception v21

    move-object/from16 v9, v21

    .line 853
    .local v9, e:Landroid/os/RemoteException;
    const-string v21, "TAG"

    const-string v22, "fail to get current media from music core player."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 902
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v13       #listview:Lcom/android/music/list/view/AbstractMpListView;
    .restart local v14       #mCurrentTabTag:Ljava/lang/String;
    .restart local v15       #manageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    .restart local v19       #view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_13
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 903
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->initIndexer(Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;Ljava/lang/String;)V

    .line 904
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_2

    .line 922
    .end local v19           #view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 923
    .restart local v20       #viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/music/list/view/AbstractMpListView;->getVisibility()I

    move-result v21

    if-nez v21, :cond_f

    .line 924
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListPosition:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/music/list/view/AbstractMpListView;->setSelection(I)V

    goto/16 :goto_3
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 963
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onStart()V

    .line 977
    const/4 v2, 0x0

    .line 978
    .local v2, mCurrentTabTag:Ljava/lang/String;
    const/4 v1, 0x0

    .line 979
    .local v1, listview:Lcom/android/music/list/view/AbstractMpListView;
    const/4 v0, 0x0

    .line 980
    .local v0, gridview:Landroid/widget/GridView;
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    if-eqz v3, :cond_0

    .line 982
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 984
    :cond_0
    if-eqz v2, :cond_1

    .line 986
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v1, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 987
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    .line 991
    :cond_1
    if-eqz v1, :cond_2

    .line 993
    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 994
    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {p0, v4}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setEnable(Z)V

    .line 997
    :cond_2
    if-eqz v0, :cond_3

    .line 1000
    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Lcom/android/music/list/interfaces/MpSetViewInterface;

    if-eqz v3, :cond_3

    .line 1001
    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {p0, v4}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setEnable(Z)V

    .line 1004
    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 370
    .local v3, viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-object v4, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v4}, Lcom/android/music/list/interfaces/MpSetViewInterface;->getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-result-object v2

    .line 371
    if-eqz v2, :cond_0

    .line 372
    new-instance v4, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const v6, 0x7f0a006c

    invoke-virtual {p0, v6}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;-><init>(Ljava/util/List;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 377
    :cond_0
    if-eqz v3, :cond_1

    :try_start_0
    iget-object v4, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v4, :cond_1

    .line 378
    iget-object v4, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, mCurrentTabTag:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 388
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v4, v7}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setEnable(Z)V

    .line 393
    :cond_2
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 395
    sget-boolean v4, Lcom/android/music/list/activity/MpMainTabActivity;->isShownmediaMessageBox:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 396
    sget-object v4, Lcom/android/music/list/activity/MpMainTabActivity;->mediaMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 397
    sput-boolean v7, Lcom/android/music/list/activity/MpMainTabActivity;->isShownmediaMessageBox:Z

    .line 400
    :cond_3
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onStop()V

    .line 401
    return-void

    .line 379
    .end local v1           #mCurrentTabTag:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 380
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v5, "IllegalStateException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 382
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v5, "IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setContentState(Z)V
    .locals 4
    .parameter "change"

    .prologue
    .line 2465
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2466
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v2}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 2467
    .local v1, tempItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mContentChange:Z

    .line 2465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2469
    .end local v1           #tempItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_0
    return-void
.end method

.method setMountState(Z)V
    .locals 4
    .parameter "mount"

    .prologue
    .line 2458
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2459
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v2}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 2460
    .local v1, tempItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iput-boolean p1, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mMountChange:Z

    .line 2458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2462
    .end local v1           #tempItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_0
    return-void
.end method

.method public showNoTracksView(ZLjava/lang/String;)V
    .locals 6
    .parameter "noTracks"
    .parameter "tag"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2753
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 2754
    .local v1, viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    if-nez v1, :cond_0

    .line 2779
    :goto_0
    return-void

    .line 2757
    :cond_0
    iget v0, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    .line 2760
    .local v0, showGrid:I
    if-eqz p1, :cond_3

    .line 2761
    if-ne v0, v5, :cond_2

    .line 2762
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v2, v4}, Lcom/android/music/list/view/MpListGridView;->setVisibility(I)V

    .line 2766
    :cond_1
    :goto_1
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2767
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    .line 2763
    :cond_2
    if-nez v0, :cond_1

    .line 2764
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2, v4}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    goto :goto_1

    .line 2769
    :cond_3
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2771
    if-ne v0, v5, :cond_5

    .line 2772
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v2, v3}, Lcom/android/music/list/view/MpListGridView;->setVisibility(I)V

    .line 2777
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    .line 2773
    :cond_5
    if-nez v0, :cond_4

    .line 2774
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    goto :goto_2
.end method
