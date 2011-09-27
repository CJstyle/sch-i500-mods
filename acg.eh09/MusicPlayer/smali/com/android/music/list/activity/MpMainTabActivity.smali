.class public Lcom/android/music/list/activity/MpMainTabActivity;
.super Lcom/sec/android/touchwiz/widget/TwTabActivity;
.source "MpMainTabActivity.java"

# interfaces
.implements Lcom/android/music/common/util/OnLowBatteryListener;
.implements Lcom/android/music/list/interfaces/MpCorePlayer;
.implements Lcom/android/music/list/interfaces/MpHandlerInterface;
.implements Lcom/sec/android/touchwiz/widget/TwTabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    }
.end annotation


# static fields
.field public static isShownmediaMessageBox:Z

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

.field private activityCheck:Z

.field batteryMessageBox:Landroid/app/AlertDialog;

.field callMessageBox:Landroid/app/AlertDialog;

.field protected contextAlert:Landroid/app/AlertDialog;

.field protected contextMenuTitle:Ljava/lang/String;

.field private deleteUri:Landroid/net/Uri;

.field final handler:Landroid/os/Handler;

.field protected itemIndex:I

.field final localObserver:Landroid/database/ContentObserver;

.field private mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mContextAddData:Lcom/android/music/common/data/MusicAddData;

.field private mCurrentTab:Ljava/lang/String;

.field private mGridViewColumn:I

.field public final mHandler:Landroid/os/Handler;

.field private mHasCheck:Z

.field private final mKillGarbageReciver:Landroid/content/BroadcastReceiver;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaScannerRunCheck:Z

.field public mMenu:Landroid/view/Menu;

.field private mOptionMenus:[Ljava/lang/String;

.field private mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPlayMusicReceiver:Landroid/content/BroadcastReceiver;

.field public mPlaylistTabListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

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
    .line 252
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/list/activity/MpMainTabActivity;->mediaMessageBox:Landroid/app/AlertDialog;

    .line 253
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

    .line 135
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;-><init>()V

    .line 139
    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->callMessageBox:Landroid/app/AlertDialog;

    .line 140
    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 143
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    .line 171
    iput-boolean v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMediaScannerRunCheck:Z

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    .line 180
    iput-boolean v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->activityCheck:Z

    .line 184
    iput-boolean v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mRestartActivity:Z

    .line 202
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->optionMenuIcon:[I

    .line 225
    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 232
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->SETAS_OPTION_POPUP_DIALOG:I

    .line 240
    iput v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VOICE_CALL_RINGTONE:I

    .line 241
    iput v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VIDEO_CALL_RINGTONE:I

    .line 242
    iput v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_INDIVIDUAL_RINGTONE:I

    .line 243
    iput v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_ALARM_TONE:I

    .line 256
    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 265
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->handler:Landroid/os/Handler;

    .line 267
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$1;

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/music/list/activity/MpMainTabActivity$1;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->localObserver:Landroid/database/ContentObserver;

    .line 300
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$2;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 778
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$4;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->DiscPlusImageInit:Landroid/os/Handler;

    .line 868
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$5;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$5;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHandler:Landroid/os/Handler;

    .line 2728
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$14;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$14;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2774
    new-array v0, v5, [I

    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VOICE_CALL_RINGTONE:I

    aput v1, v0, v2

    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_INDIVIDUAL_RINGTONE:I

    aput v1, v0, v3

    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_ALARM_TONE:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->setAsRingtoneOptionNonVT:[I

    .line 3030
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$15;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$15;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mPlayMusicReceiver:Landroid/content/BroadcastReceiver;

    .line 3040
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$16;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$16;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 3093
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$17;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$17;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mUnmountHandler:Landroid/os/Handler;

    .line 3125
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$18;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$18;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mKillGarbageReciver:Landroid/content/BroadcastReceiver;

    .line 3136
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$19;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$19;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 3222
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$20;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpMainTabActivity$20;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 202
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

.method static synthetic access$000(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/android/music/common/util/BatteryChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/music/list/activity/MpMainTabActivity;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/music/list/activity/MpMainTabActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/music/list/activity/MpMainTabActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMediaScannerRunCheck:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/music/list/activity/MpMainTabActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->activityCheck:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/music/list/activity/MpMainTabActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/music/list/activity/MpMainTabActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/android/music/common/data/MusicAddData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/music/list/activity/MpMainTabActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->setAsRingtoneOptionNonVT:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/music/list/activity/MpMainTabActivity;I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/music/list/activity/MpMainTabActivity;->setRingtone(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getMusicMenu(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1530
    .line 1532
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getMusicMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "|"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1541
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v3

    .line 1547
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1548
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1549
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/music/list/data/MpListDataController;->getListMenuData(I)Lcom/android/music/list/data/MpListDisplayData;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    if-ne v0, p1, :cond_2

    move v0, v2

    .line 1547
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1

    .line 1554
    :cond_1
    return v3

    :cond_2
    move v0, v3

    goto :goto_2
.end method

.method private initIndexer(Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1672
    .line 1674
    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 1675
    const v0, 0x7f030006

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1676
    iput-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    move-object v1, v0

    .line 1680
    :goto_0
    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    const v2, 0x7f0c0022

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-interface {v0, v1}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setIndexView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    .line 1681
    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v0}, Lcom/android/music/list/interfaces/MpSetViewInterface;->getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-result-object v1

    .line 1682
    if-eqz v1, :cond_3

    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v0

    invoke-static {v0}, Lcom/android/music/common/util/ListUtil;->isEnableFastScroll(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1685
    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1686
    if-nez v0, :cond_2

    .line 1736
    :cond_0
    :goto_1
    return-void

    .line 1678
    :cond_1
    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    move-object v1, v0

    goto :goto_0

    .line 1689
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1694
    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v0

    invoke-static {v0}, Lcom/android/music/common/util/ListType;->getIndexerKeyIndex(I)I

    move-result v0

    .line 1696
    iput-object v3, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 1697
    iget-object v2, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v2

    iget-object v3, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v3}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a006e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/android/music/common/util/ListUtil;->getTwCursorIndexerByListType(ILandroid/database/Cursor;ILjava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 1700
    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 1701
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->invalidate()V

    .line 1702
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSubscrollLimit(I)V

    .line 1703
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 1705
    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1706
    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v2, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1722
    new-instance v0, Lcom/android/music/list/activity/MpMainTabActivity$1indexEvent;

    iget-object v2, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct {v0, p0, v2}, Lcom/android/music/list/activity/MpMainTabActivity$1indexEvent;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;Lcom/android/music/list/view/AbstractMpListView;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V

    .line 1726
    :cond_3
    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_4

    .line 1728
    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iput-object p2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->MyTag:Ljava/lang/String;

    .line 1730
    :cond_4
    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v0}, Lcom/android/music/list/view/MpListGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .line 1733
    instance-of v0, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    if-eqz v0, :cond_0

    .line 1734
    check-cast p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iput-object p2, p0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->MyTag:Ljava/lang/String;

    goto :goto_1
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "com.android.music"

    const-string v8, "activity"

    .line 823
    .line 825
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 826
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

    move-result-object v0

    .line 828
    if-eqz v0, :cond_2

    .line 830
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 832
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 833
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 834
    const-string v2, "external"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "internal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v7

    .line 837
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2

    move v0, v1

    .line 864
    :goto_1
    return v0

    .line 839
    :catch_0
    move-exception v0

    move v1, v6

    .line 846
    :goto_2
    const-string v2, "MpMainTabActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 848
    const-string v0, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 849
    const-string v0, "com.android.music"

    invoke-virtual {p0, v9}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move v0, v1

    .line 862
    goto :goto_1

    .line 851
    :catch_1
    move-exception v0

    move v0, v6

    .line 858
    :goto_3
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 859
    const-string v1, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 860
    const-string v1, "com.android.music"

    invoke-virtual {p0, v9}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 851
    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_3

    .line 839
    :catch_3
    move-exception v0

    goto :goto_2

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1
.end method

.method private isMenuChanged()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1565
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getMusicMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1569
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "|"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1573
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1574
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1579
    :cond_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private makeViews(II)Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    const-string v10, "onCreate - 7 - 1 - 1 - MpListID.ITEM_GROUP"

    const-string v7, "TimeCheck"

    .line 1612
    const-string v0, "TimeCheck"

    const-string v0, "onCreate - 7 - 1 - 1"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    new-instance v6, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    invoke-direct {v6, p0, v5}, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;Lcom/android/music/list/activity/MpMainTabActivity$1;)V

    .line 1617
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    move v4, v0

    .line 1619
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1649
    :goto_1
    const-string v0, "TimeCheck"

    const-string v0, "onCreate - 7 - 1 - 2"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1658
    const-string v1, "TimeCheck"

    const-string v1, "onCreate - 7 - 1 - 3"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-object v1, v6, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v1, v0}, Lcom/android/music/list/view/MpListGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1661
    iget-object v1, v6, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1, v0}, Lcom/android/music/list/view/AbstractMpListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1665
    const-string v0, "TimeCheck"

    const-string v0, "onCreate - 7 - 1 - 5"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    return-object v6

    :cond_0
    move v4, v8

    .line 1617
    goto :goto_0

    .line 1621
    :pswitch_0
    const-string v0, "TimeCheck"

    const-string v0, "onCreate - 7 - 1 - 1 - MpListID.ITEM_GROUP"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    new-instance v0, Lcom/android/music/list/view/MpListGroupView;

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListGroupView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1623
    const-string v0, "TimeCheck"

    const-string v0, "onCreate - 7 - 1 - 1 - MpListID.ITEM_GROUP"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1627
    :pswitch_1
    const-string v0, "TimeCheck"

    const-string v0, "onCreate - 7 - 1 - 1 - MpListID.ITEM_ONELINE"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    new-instance v0, Lcom/android/music/list/view/MpListOneLineView;

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListOneLineView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1629
    const-string v0, "TimeCheck"

    const-string v0, "onCreate - 7 - 1 - 1 - MpListID.ITEM_ONELINE"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1633
    :pswitch_2
    const-string v0, "TimeCheck"

    const-string v0, "onCreate - 7 - 1 - 1 - MpListID.ITEM_THUMNAIL_ONELINE - 1"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    new-instance v0, Lcom/android/music/list/view/MpListThumnailOneLineView;

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListThumnailOneLineView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1635
    const-string v0, "TimeCheck"

    const-string v0, "onCreate - 7 - 1 - 1 - MpListID.ITEM_THUMNAIL_ONELINE - 2"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    new-instance v0, Lcom/android/music/list/view/MpListGridView;

    invoke-direct {v0, p0, p2, v8}, Lcom/android/music/list/view/MpListGridView;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, v6, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    .line 1637
    const-string v0, "TimeCheck"

    const-string v0, "onCreate - 7 - 1 - 1 - MpListID.ITEM_THUMNAIL_ONELINE - 3"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1641
    :pswitch_3
    const-string v0, "TimeCheck"

    const-string v0, "onCreate - 7 - 1 - 1 - MpListID.ITEM_THUMNAIL_TWOLINE - 1"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    new-instance v0, Lcom/android/music/list/view/MpListThumnailTwoLineView;

    iget-boolean v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/MpListThumnailTwoLineView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1643
    const-string v0, "TimeCheck"

    const-string v0, "onCreate - 7 - 1 - 1 - MpListID.ITEM_THUMNAIL_TWOLINE - 2"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    new-instance v0, Lcom/android/music/list/view/MpListGridView;

    invoke-direct {v0, p0, p2, v8}, Lcom/android/music/list/view/MpListGridView;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, v6, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    .line 1645
    const-string v0, "TimeCheck"

    const-string v0, "onCreate - 7 - 1 - 1 - MpListID.ITEM_THUMNAIL_TWOLINE - 3"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private onRotateProcess()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1477
    new-instance v1, Lcom/android/music/common/manager/MusicAppManageFilter;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 1480
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 1481
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v3

    .line 1485
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1486
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 1488
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 1489
    iget-object v2, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1491
    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1492
    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getSelectedItemPosition()I

    move-result v2

    .line 1493
    if-ne v2, v4, :cond_2

    .line 1494
    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getLastVisiblePosition()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    :goto_0
    move v2, v0

    .line 1505
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 1506
    iput v2, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 1508
    const/4 v0, 0x1

    iput v0, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 1509
    const/16 v0, 0xa

    iput v0, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 1514
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/music/common/manager/MusicAppManager;->launchDiscPlus(Landroid/content/Context;Lcom/android/music/common/manager/MusicAppManageFilter;)Z

    .line 1520
    return-void

    .line 1498
    :cond_1
    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    .line 1499
    invoke-virtual {v0}, Lcom/android/music/list/view/MpListGridView;->getSelectedItemPosition()I

    move-result v2

    .line 1500
    if-ne v2, v4, :cond_0

    .line 1501
    invoke-virtual {v0}, Lcom/android/music/list/view/MpListGridView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/music/list/view/MpListGridView;->getLastVisiblePosition()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private registerContentObserverOnAudioMedia()V
    .locals 4

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 285
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 287
    return-void
.end method

.method private setRingtone(I)Landroid/net/Uri;
    .locals 14
    .parameter

    .prologue
    .line 2780
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

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

    .line 2786
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->deleteUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2831
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2832
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2834
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

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

    .line 2835
    const-string v1, "file://"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2836
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 2837
    const-wide/16 v9, 0x0

    .line 2838
    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2840
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

    .line 2844
    if-eqz v1, :cond_0

    .line 2845
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2846
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 2848
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2

    move-wide v9, v2

    .line 2850
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-nez v1, :cond_c

    .line 2851
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

    .line 2855
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2857
    if-eqz v0, :cond_b

    .line 2858
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2859
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v2

    .line 2861
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

    .line 2875
    :goto_3
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_9

    .line 2876
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2877
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

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

    .line 2881
    :goto_4
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2882
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

    .line 2886
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->updateContentValue(ILandroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2887
    const/4 v0, 0x0

    .line 2930
    :cond_2
    :goto_5
    return-object v0

    .line 2864
    :catch_0
    move-exception v0

    move-object v1, v11

    move-wide v2, v9

    .line 2865
    :goto_6
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

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

    .line 2866
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2867
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2868
    const-string v4, "com.android.music"

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    move-object v0, v1

    move-wide v12, v2

    move-wide v1, v12

    .line 2873
    goto/16 :goto_3

    .line 2869
    :catch_1
    move-exception v0

    move-object v1, v11

    move-wide v2, v9

    .line 2870
    :goto_7
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2871
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2872
    const-string v4, "com.android.music"

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2890
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v1, "strUri does not.... content://media/"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    const/4 v0, 0x0

    goto :goto_5

    .line 2898
    :cond_4
    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VOICE_CALL_RINGTONE:I

    if-eq p1, v1, :cond_5

    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_INDIVIDUAL_RINGTONE:I

    if-eq p1, v1, :cond_5

    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VIDEO_CALL_RINGTONE:I

    if-ne p1, v1, :cond_6

    .line 2901
    :cond_5
    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VOICE_CALL_RINGTONE:I

    if-ne p1, v1, :cond_8

    .line 2902
    const/4 v1, 0x1

    .line 2903
    invoke-static {p0, v1, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 2923
    :cond_6
    :goto_8
    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VOICE_CALL_RINGTONE:I

    if-eq p1, v1, :cond_7

    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VIDEO_CALL_RINGTONE:I

    if-ne p1, v1, :cond_2

    .line 2925
    :cond_7
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 2926
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 2905
    :cond_8
    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_INDIVIDUAL_RINGTONE:I

    if-ne p1, v1, :cond_6

    .line 2906
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v1

    .line 2908
    invoke-virtual {v1, v0}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2909
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2910
    const-string v3, "ringtone_filepath"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2911
    const-string v1, "ringtone_uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2912
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2914
    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 2869
    :catch_2
    move-exception v0

    move-object v1, v11

    goto :goto_7

    :catch_3
    move-exception v0

    move-wide v2, v9

    goto :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_7

    .line 2864
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

.method private unregisterContentObserverOnAudioMedia()V
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 291
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->localObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateContentValue(ILandroid/net/Uri;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v0, "activity"

    const-string v5, "MusicPlayer"

    const-string v0, "1"

    .line 2934
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

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

    .line 2940
    :try_start_0
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2941
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2948
    iget v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_INDIVIDUAL_RINGTONE:I

    if-eq p1, v2, :cond_0

    iget v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VOICE_CALL_RINGTONE:I

    if-ne p1, v2, :cond_1

    .line 2950
    :cond_0
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2959
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

    .line 2988
    :goto_1
    const/4 v0, 0x1

    .line 3001
    :goto_2
    return v0

    .line 2951
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VIDEO_CALL_RINGTONE:I

    if-ne p1, v2, :cond_2

    .line 2952
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v3, "IDX_VIDEO_CALL_RINGTONE, Don\'t update DB"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2989
    :catch_0
    move-exception v0

    .line 2990
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2991
    const-string v1, "MusicPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException occured :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 2999
    goto :goto_2

    .line 2956
    :cond_2
    :try_start_3
    const-string v2, "is_alarm"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 2994
    :catch_1
    move-exception v0

    .line 2995
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2996
    const-string v1, "MusicPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnsupportedOperationException occured :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 2998
    goto :goto_2

    .line 2960
    :catch_2
    move-exception v0

    .line 2967
    :try_start_4
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

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

    .line 2968
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2969
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2970
    const-string v1, "com.android.music"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2972
    :catch_3
    move-exception v0

    .line 2979
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2980
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2981
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
    .line 324
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v1, "MusicPlayerUtil.sService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    return-object v0
.end method

.method public GetView(Ljava/lang/String;Z)Landroid/view/View;
    .locals 2
    .parameter "tag"
    .parameter "set"

    .prologue
    .line 2647
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 2649
    .local v0, viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    if-nez v0, :cond_0

    .line 2650
    const/4 v1, 0x0

    .line 2655
    :goto_0
    return-object v1

    .line 2652
    :cond_0
    if-eqz p2, :cond_1

    .line 2653
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    goto :goto_0

    .line 2655
    :cond_1
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    goto :goto_0
.end method

.method public changeTab(I)Z
    .locals 3
    .parameter "listType"

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1312
    .local v0, tabNo:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1313
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 1314
    const/4 v1, 0x1

    .line 1316
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkNoTracks(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3319
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 3320
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    .line 3325
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    .line 3326
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 3327
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3329
    :cond_0
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    .line 3330
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

    .line 3332
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3333
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

    .line 3335
    invoke-direct {p0, v0, p1}, Lcom/android/music/list/activity/MpMainTabActivity;->initIndexer(Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;Ljava/lang/String;)V

    .line 3336
    invoke-virtual {p0, v4, p1}, Lcom/android/music/list/activity/MpMainTabActivity;->showNoTracksView(ZLjava/lang/String;)V

    .line 3349
    :goto_0
    return-void

    .line 3342
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/music/list/activity/MpMainTabActivity;->showNoTracksView(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public checkPlayButtonEnable()V
    .locals 5

    .prologue
    .line 1321
    iget-boolean v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1324
    :try_start_0
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mButtonIconPlayerLayout:Landroid/view/View;

    .line 1327
    .local v2, playerButton:Landroid/view/View;
    if-nez v2, :cond_1

    .line 1364
    .end local v2           #playerButton:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1335
    .restart local v2       #playerButton:Landroid/view/View;
    :cond_1
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 1337
    .local v0, corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1341
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1360
    .end local v0           #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    .end local v2           #playerButton:Landroid/view/View;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1361
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1352
    .end local v1           #e1:Landroid/os/RemoteException;
    .restart local v0       #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    .restart local v2       #playerButton:Landroid/view/View;
    :cond_2
    const/16 v3, 0x8

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f030009

    const/4 v8, 0x0

    const/4 v5, 0x0

    const-string v7, "createTabContent "

    const-string v6, "TimeCheck"

    .line 2037
    const-string v0, "TimeCheck"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTabContent "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2041
    const-string v0, "TimeCheck"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTabContent "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 2045
    if-nez v0, :cond_1

    .line 2053
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/data/MpListDisplayData;

    .line 2054
    iget-object v0, v0, Lcom/android/music/list/data/MpListDisplayData;->mListName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2060
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/data/MpListDisplayData;

    iget v1, v0, Lcom/android/music/list/data/MpListDisplayData;->mItemLayout:I

    .line 2061
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2063
    invoke-direct {p0, v1, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->makeViews(II)Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    move-result-object v0

    .line 2064
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 2070
    const-string v1, "TimeCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createTabContent "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - 2 - 1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter()I

    move-result v1

    .line 2081
    const-string v3, "TimeCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createTabContent "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - 3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget-object v3, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v3}, Lcom/android/music/list/view/MpListGridView;->initViewAdapter()V

    .line 2084
    packed-switch v1, :pswitch_data_0

    .line 2107
    :goto_1
    const-string v1, "TimeCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createTabContent "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - 4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 2111
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2112
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/music/list/view/MpListGridView;->setVisibility(I)V

    .line 2113
    iget-object v3, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 2114
    invoke-virtual {v3}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v0

    .line 2116
    const-string v1, "TimeCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createTabContent "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " - 5"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iget-boolean v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    invoke-virtual {v3, v1, v0}, Lcom/android/music/list/view/AbstractMpListView;->showCheck(ZI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2119
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2120
    const v0, 0x7f0c002a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 2121
    const v0, 0x7f0c002b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2122
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2123
    const v0, 0x7f0c002d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2124
    const v1, 0x7f0c002e

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2125
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->setSoftKey(ILandroid/widget/Button;Landroid/widget/Button;)V

    .line 2126
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2128
    const-string v0, "TimeCheck"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTabContent "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - 6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 2172
    :goto_2
    return-object v0

    .line 2056
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 2086
    :pswitch_0
    const-string v1, "TimeCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createTabContent "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - 3 - 1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    invoke-direct {p0, v0, p1}, Lcom/android/music/list/activity/MpMainTabActivity;->initIndexer(Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;Ljava/lang/String;)V

    .line 2088
    const-string v1, "TimeCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createTabContent "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - 3 - 2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2090
    const-string v1, "TimeCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createTabContent "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - 3 - 3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2095
    :pswitch_1
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1, v5, v8}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2096
    invoke-direct {p0, v0, p1}, Lcom/android/music/list/activity/MpMainTabActivity;->initIndexer(Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;Ljava/lang/String;)V

    .line 2098
    :cond_3
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2099
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2101
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :pswitch_2
    move-object v0, v2

    .line 2104
    goto/16 :goto_2

    .line 2131
    :cond_4
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-eqz v0, :cond_5

    .line 2132
    const-string v0, "TimeCheck"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTabContent "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - 7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 2134
    goto/16 :goto_2

    .line 2136
    :cond_5
    const-string v0, "TimeCheck"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTabContent "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - 8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2138
    const-string v0, "TimeCheck"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTabContent "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - 8 - 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    const v0, 0x7f0c002a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2141
    const-string v1, "TimeCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createTabContent "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " - 8 - 2"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    const v4, 0x7f0c002f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mButtonIconPlayerLayout:Landroid/view/View;

    .line 2143
    const-string v1, "TimeCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createTabContent "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " - 8 - 3"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    const v1, 0x7f0c0030

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/music/common/util/IconTextButton;

    .line 2145
    const-string v4, "TimeCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createTabContent "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - 8 - 4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    const v4, 0x7f020075

    const v5, 0x7f0a00ed

    invoke-virtual {v1, v4, v5}, Lcom/android/music/common/util/IconTextButton;->setImageAndText(II)V

    .line 2148
    const-string v4, "TimeCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createTabContent "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - 8 - 5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    new-instance v4, Lcom/android/music/list/activity/MpMainTabActivity$10;

    invoke-direct {v4, p0}, Lcom/android/music/list/activity/MpMainTabActivity$10;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    invoke-virtual {v1, v4}, Lcom/android/music/common/util/IconTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2167
    const-string v1, "TimeCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createTabContent "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " - 8 - 6"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2170
    const-string v0, "TimeCheck"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTabContent "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - 9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 2172
    goto/16 :goto_2

    .line 2084
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentTab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3474
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public launchDiscPlus()V
    .locals 0

    .prologue
    .line 1472
    invoke-direct {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->onRotateProcess()V

    .line 1473
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x3

    .line 2026
    if-ne p1, v0, :cond_1

    .line 2027
    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 2028
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    .line 2033
    :goto_0
    return-void

    .line 2032
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 3496
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    .line 3497
    if-eqz v0, :cond_0

    .line 3498
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3499
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    .line 3503
    :goto_0
    iget v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpListGridView;->setNumColumns(I)V

    .line 3506
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRequestedOrientation() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getRequestedOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3508
    return-void

    .line 3501
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f0a0016

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2394
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2395
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 2397
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 2399
    packed-switch v0, :pswitch_data_0

    .line 2608
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 2403
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2412
    sget-object v2, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 2416
    :try_start_0
    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2426
    :goto_1
    :try_start_1
    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 2427
    :try_start_2
    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    move-object v3, v2

    move v2, v5

    .line 2433
    :goto_2
    if-nez v3, :cond_0

    .line 2435
    const-string v3, "No string"

    .line 2438
    :cond_0
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    iget v2, v2, Lcom/android/music/common/data/MusicAddData;->mId:I

    if-ne v4, v2, :cond_1

    invoke-virtual {p0, v9}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->deleteUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v9}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 2441
    :cond_2
    const v1, 0x7f0a00fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00b6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00a8

    new-instance v3, Lcom/android/music/list/activity/MpMainTabActivity$11;

    invoke-direct {v3, p0}, Lcom/android/music/list/activity/MpMainTabActivity$11;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2504
    :goto_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextAlert:Landroid/app/AlertDialog;

    .line 2505
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 2417
    :catch_0
    move-exception v4

    .line 2419
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    move v4, v6

    goto :goto_1

    .line 2428
    :catch_1
    move-exception v2

    move v5, v6

    .line 2430
    :goto_4
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v5

    goto :goto_2

    .line 2453
    :cond_3
    const v2, 0x7f0a0038

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2454
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2455
    invoke-virtual {p0, v9}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 2457
    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2463
    :goto_5
    const v1, 0x7f0a00a8

    new-instance v2, Lcom/android/music/list/activity/MpMainTabActivity$13;

    invoke-direct {v2, p0}, Lcom/android/music/list/activity/MpMainTabActivity$13;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00a9

    new-instance v3, Lcom/android/music/list/activity/MpMainTabActivity$12;

    invoke-direct {v3, p0}, Lcom/android/music/list/activity/MpMainTabActivity$12;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 2461
    :cond_4
    const v1, 0x7f0a00fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 2511
    :pswitch_1
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->deleteUri:Landroid/net/Uri;

    .line 2514
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2515
    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "mime_type"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2517
    if-eqz v0, :cond_d

    .line 2519
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2520
    const-string v2, "mime_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 2522
    :goto_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 2526
    :goto_7
    if-eqz v0, :cond_5

    .line 2528
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2529
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2530
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2531
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2532
    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 2533
    :catch_2
    move-exception v0

    .line 2534
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v1, "CONTEXTMENU_SHARE_TRACK_VIA, ActivityNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2522
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2537
    :cond_5
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

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

    .line 2544
    :pswitch_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 2549
    :pswitch_3
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 2551
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 2555
    new-instance v2, Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v4

    invoke-direct {v2, v4, v7}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2557
    iget-object v4, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-nez v4, :cond_7

    .line 2558
    const/4 v0, -0x1

    .line 2561
    :goto_8
    iget-object v4, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v5, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v2, v7, v0, v3}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v5, v4, v6

    .line 2563
    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v0, v0, v6

    if-eqz v0, :cond_6

    .line 2564
    iget-object v0, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v0, v0, v6

    iget-boolean v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    if-ne v0, v7, :cond_9

    const-string v0, "0"

    :goto_9
    aput-object v0, v1, v6

    .line 2566
    iget-object v0, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v0, v0, v6

    iget-boolean v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    if-eqz v0, :cond_a

    .line 2567
    iget-object v0, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    .line 2574
    :goto_a
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v2, "onOptionsItemSelected():%s,%s,%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v1, v6

    aput-object v4, v3, v6

    aget-object v4, v1, v7

    aput-object v4, v3, v7

    aget-object v4, v1, v8

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    :cond_6
    iget v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->itemIndex:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    .line 2578
    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([ZZ)V

    .line 2579
    iget v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->itemIndex:I

    add-int/lit8 v2, v2, 0x1

    aput-boolean v7, v0, v2

    .line 2581
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2582
    const-string v3, "ListType"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2583
    const-string v3, "TitleText"

    const v4, 0x7f0a0035

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2585
    const-string v3, "Check"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2586
    const-string v3, "CheckListType"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2588
    const-string v3, "CheckedList"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 2589
    const-string v0, "Conditions"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2590
    const-string v0, "RootListType"

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2591
    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2560
    :cond_7
    iget-object v4, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_8

    :cond_8
    move v0, v6

    goto/16 :goto_8

    .line 2564
    :cond_9
    const-string v0, "1"

    goto/16 :goto_9

    .line 2569
    :cond_a
    iget-object v0, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 2570
    iget-object v0, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    aput-object v0, v1, v7

    goto/16 :goto_a

    .line 2572
    :cond_b
    const-string v0, "-1"

    aput-object v0, v1, v7

    goto/16 :goto_a

    .line 2598
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2599
    const-string v1, "ListType"

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2600
    const-string v1, "TitleText"

    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistTitle:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2601
    const-string v1, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistConditions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2602
    const-string v1, "CheckListType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2603
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2428
    :catch_3
    move-exception v2

    goto/16 :goto_4

    :cond_c
    move-object v2, v3

    goto/16 :goto_6

    :cond_d
    move-object v0, v3

    goto/16 :goto_7

    .line 2399
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
    .locals 23
    .parameter "savedInstanceState"

    .prologue
    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "onCreate entered."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "SpeedCheck - MpMainTapActivity : onCreate entered."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 1"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, ""

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    .line 557
    invoke-static/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 558
    sget-object v19, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    if-nez v19, :cond_0

    .line 559
    const-string v19, ""

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    sput-object v19, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    .line 563
    :goto_0
    sget-object v19, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    const v20, 0x7f0a00f3

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Toast;->setText(I)V

    .line 564
    sget-object v19, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Toast;->setDuration(I)V

    .line 565
    sget-object v19, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    .line 766
    .end local p1
    :goto_1
    return-void

    .line 561
    .restart local p1
    :cond_0
    sget-object v19, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    .line 569
    :cond_1
    const/16 v19, 0x0

    sput-object v19, Lcom/android/music/list/activity/MpMainTabActivity;->mScanToast:Landroid/widget/Toast;

    .line 572
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 2"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/music/list/data/MpListDataController;->InitContext(Landroid/content/Context;)V

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070004

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionMenus:[Ljava/lang/String;

    .line 578
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 3"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->requestFeature(I)Z

    .line 582
    const v19, 0x7f03001a

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 4"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 596
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 597
    .local v4, bundle:Landroid/os/Bundle;
    if-eqz v4, :cond_2

    .line 598
    const-string v19, "Check"

    const/16 v20, 0x0

    move-object v0, v4

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    .line 600
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 601
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    .line 602
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    .line 603
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mPlaylistTabListID:Ljava/util/ArrayList;

    .line 604
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwTabHost;->clearAllTabs()V

    .line 607
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 5"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/music/common/util/MusicValueSaveController;->getCurrentTab(Landroid/content/Context;)I

    move-result v5

    .line 610
    .local v5, currentTab:I
    const/4 v9, 0x0

    .line 611
    .local v9, iCurrentTabIndex:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getMusicMenu(I)I

    move-result v9

    .line 613
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 6"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setMoreTab(Z)V

    .line 620
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 621
    const/4 v9, 0x0

    .line 623
    :cond_3
    const/4 v10, 0x0

    .line 624
    .local v10, iImage:I
    const/4 v14, 0x0

    .line 625
    .local v14, itemType:I
    const/4 v15, 0x0

    .line 626
    .local v15, listType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/music/list/data/MpListDisplayData;

    .line 627
    .local v6, displayData:Lcom/android/music/list/data/MpListDisplayData;
    iget-object v3, v6, Lcom/android/music/list/data/MpListDisplayData;->mListName:Ljava/lang/String;

    .line 628
    .local v3, InitialTab:Ljava/lang/String;
    iget v14, v6, Lcom/android/music/list/data/MpListDisplayData;->mItemLayout:I

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 631
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->makeViews(II)Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    move-result-object v18

    .line 632
    .local v18, view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 7 - 2"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 638
    .local v16, nSize:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    move v0, v8

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 639
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 7 - 0"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #displayData:Lcom/android/music/list/data/MpListDisplayData;
    check-cast v6, Lcom/android/music/list/data/MpListDisplayData;

    .line 645
    .restart local v6       #displayData:Lcom/android/music/list/data/MpListDisplayData;
    move-object v0, v6

    iget-object v0, v0, Lcom/android/music/list/data/MpListDisplayData;->mListName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 646
    .local v17, tabName:Ljava/lang/String;
    iget v10, v6, Lcom/android/music/list/data/MpListDisplayData;->mPicture:I

    .line 647
    iget v14, v6, Lcom/android/music/list/data/MpListDisplayData;->mItemLayout:I

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 650
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 7 - 3"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Lcom/sec/android/touchwiz/widget/TwTabHost$TabContentFactory;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 655
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 7 - 4"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 583
    .end local v3           #InitialTab:Ljava/lang/String;
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v5           #currentTab:I
    .end local v6           #displayData:Lcom/android/music/list/data/MpListDisplayData;
    .end local v8           #i:I
    .end local v9           #iCurrentTabIndex:I
    .end local v10           #iImage:I
    .end local v11           #intent:Landroid/content/Intent;
    .end local v14           #itemType:I
    .end local v15           #listType:I
    .end local v16           #nSize:I
    .end local v17           #tabName:Ljava/lang/String;
    .end local v18           #view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    .restart local p1
    :catch_0
    move-exception v7

    .line 584
    .local v7, e:Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "setContentView(R.layout.list_main_tab) RuntimeException -> finish and reStart"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    .line 588
    new-instance v11, Landroid/content/Intent;

    const-class v19, Lcom/android/music/list/activity/MpMainTabActivity;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    .restart local v11       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 659
    .end local v7           #e:Ljava/lang/RuntimeException;
    .end local p1
    .restart local v3       #InitialTab:Ljava/lang/String;
    .restart local v4       #bundle:Landroid/os/Bundle;
    .restart local v5       #currentTab:I
    .restart local v6       #displayData:Lcom/android/music/list/data/MpListDisplayData;
    .restart local v8       #i:I
    .restart local v9       #iCurrentTabIndex:I
    .restart local v10       #iImage:I
    .restart local v14       #itemType:I
    .restart local v15       #listType:I
    .restart local v16       #nSize:I
    .restart local v18       #view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    .line 661
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 8"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/music/list/activity/MpMainTabActivity$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity$3;-><init>(Lcom/android/music/list/activity/MpMainTabActivity;)V

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setOnTabChangedListener(Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;)V

    .line 717
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 9"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->setDefaultKeyMode(I)V

    .line 721
    new-instance v13, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.MEDIA_MOUNTED"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 723
    .local v13, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.MEDIA_UNMOUNTED"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    const-string v19, "android.intent.action.MEDIA_EJECT"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 725
    const-string v19, "file"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 726
    const-string v19, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    const-string v19, "android.intent.action.MEDIA_SCANNER_STARTED"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 730
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 731
    new-instance v12, Landroid/content/IntentFilter;

    const-string v19, "com.android.music.kill.garbageActivity"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 733
    .local v12, intentKillGarbageActivityFilter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mKillGarbageReciver:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 738
    .end local v12           #intentKillGarbageActivityFilter:Landroid/content/IntentFilter;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->DiscPlusImageInit:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-wide/16 v21, 0x190

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getOrientation()I

    move-result v19

    rem-int/lit8 v19, v19, 0x2

    if-nez v19, :cond_6

    .line 741
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    .line 760
    :goto_3
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 10"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;->mConnection:Landroid/content/ServiceConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    .line 765
    const-string v19, "TimeCheck"

    const-string v20, "onCreate - 11"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 743
    :cond_6
    const/16 v19, 0x6

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    goto :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2179
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v8

    .line 2180
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v7, v0

    .line 2181
    iget v9, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 2182
    iget v1, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->itemIndex:I

    .line 2183
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v10

    .line 2184
    const v1, 0x7f0a00c7

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextMenuTitle:Ljava/lang/String;

    .line 2185
    new-instance v1, Lcom/android/music/common/data/MusicAddData;

    invoke-direct {v1}, Lcom/android/music/common/data/MusicAddData;-><init>()V

    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    .line 2189
    iget-boolean v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2294
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2295
    return-void

    .line 2197
    :cond_1
    const v1, 0x7f0a0016

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 2200
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v10, v1, v2, v3, v4}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2201
    invoke-interface {v11, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2202
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 2203
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    const-string v2, "_data"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    .line 2206
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    iget-object v2, v2, Lcom/android/music/common/data/MusicAddData;->mData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, v1, Lcom/android/music/common/data/MusicAddData;->mHashCode:I

    .line 2208
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    iget v2, v2, Lcom/android/music/common/data/MusicAddData;->mId:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->deleteUri:Landroid/net/Uri;

    .line 2209
    const-string v1, "title"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextMenuTitle:Ljava/lang/String;

    .line 2211
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/music/list/activity/MpMainTabActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2212
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2214
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2216
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    iget v2, v2, Lcom/android/music/common/data/MusicAddData;->mId:I

    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 2225
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2226
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2248
    :goto_2
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2249
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0a0038

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2250
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f0a0027

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2251
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x2

    const v4, 0x7f0a0028

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2252
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x3

    const v4, 0x7f0a0035

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2254
    invoke-virtual {p0, p1}, Lcom/android/music/list/activity/MpMainTabActivity;->onPrepareContextMenu(Landroid/view/ContextMenu;)Z

    .line 2257
    :cond_3
    const v1, 0x7f0a0017

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2259
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v2, v3, v4}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2260
    const/4 v2, 0x2

    invoke-virtual {v10, v1, v2}, Lcom/android/music/common/data/MusicDB;->getMergedCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v2

    .line 2261
    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2262
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2264
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v4

    .line 2265
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistTitle:[Ljava/lang/String;

    .line 2266
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistTitle:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "name"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    .line 2267
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistTitle:[Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v8, 0x2

    invoke-virtual {v4, v8, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumID(ILandroid/database/Cursor;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    .line 2269
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2270
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistConditions:[Ljava/lang/String;

    .line 2271
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistConditions:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "0"

    aput-object v8, v5, v6

    .line 2272
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistConditions:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    .line 2273
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistConditions:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2274
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->playlistTitle:[Ljava/lang/String;

    const/4 v5, 0x2

    const-string v6, "thumbnail_uri"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2278
    if-eqz v3, :cond_4

    if-eqz v3, :cond_5

    const-string v4, "Music_Default_Playlist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2280
    :cond_4
    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextMenuTitle:Ljava/lang/String;

    .line 2281
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextMenuTitle:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2282
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0a0038

    invoke-interface {p1, v1, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2283
    const/4 v1, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const v5, 0x7f0a0037

    invoke-interface {p1, v1, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2284
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContextAddData:Lcom/android/music/common/data/MusicAddData;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/music/common/data/MusicAddData;->mId:I

    .line 2285
    const/4 v1, 0x2

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcom/android/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    iget-wide v3, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->deleteUri:Landroid/net/Uri;

    .line 2290
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2220
    :cond_6
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2227
    :catch_0
    move-exception v1

    .line 2228
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2232
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2233
    const-string v2, "com.android.music"

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2235
    :catch_1
    move-exception v1

    .line 2242
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 2243
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2244
    const-string v2, "com.android.music"

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    const v4, 0x7f0a00cd

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2672
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreateDialog(I)Landroid/app/Dialog;

    .line 2673
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2675
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001c

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2676
    const v0, 0x7f0c005d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 2677
    const v1, 0x7f0c005e

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2679
    packed-switch p1, :pswitch_data_0

    .line 2721
    :goto_0
    :pswitch_0
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2724
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2725
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_1
    return-object v0

    .line 2681
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2684
    :pswitch_2
    const v4, 0x7f0a00ce

    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2687
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2690
    :pswitch_4
    const v4, 0x7f0a00cf

    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2693
    :pswitch_5
    const v4, 0x7f0a00cc

    invoke-virtual {p0, v4}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2694
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2709
    :pswitch_6
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f0a004a

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0a004c

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const v2, 0x7f0a004d

    invoke-virtual {p0, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2713
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 2714
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2715
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2716
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 2679
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
    .locals 8
    .parameter

    .prologue
    const v4, 0x7f020020

    const/4 v7, 0x0

    .line 1745
    if-nez p1, :cond_0

    move v0, v7

    .line 1854
    :goto_0
    return v0

    .line 1747
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_1

    .line 1748
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    .line 1749
    :cond_1
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-eqz v0, :cond_2

    move v0, v7

    .line 1750
    goto :goto_0

    .line 1751
    :cond_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1774
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    .line 1778
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getOptionMenus()Ljava/util/ArrayList;

    move-result-object v1

    .line 1781
    const-string v2, ""

    .line 1784
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 1785
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mOptionMenuGridList:I

    packed-switch v0, :pswitch_data_0

    move-object v3, v2

    move v2, v4

    .line 1825
    :goto_1
    const/4 v0, 0x1

    move v4, v0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 1826
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1828
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1831
    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 1825
    :cond_3
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 1787
    :pswitch_0
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1788
    const v2, 0x7f020021

    move-object v3, v0

    .line 1789
    goto :goto_1

    .line 1791
    :pswitch_1
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v2, v4

    move-object v3, v0

    .line 1792
    goto :goto_1

    .line 1834
    :cond_4
    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v6

    if-nez v6, :cond_6

    .line 1835
    const/4 v0, 0x2

    if-eq v5, v0, :cond_5

    const/4 v0, 0x5

    if-ne v5, v0, :cond_3

    .line 1836
    :cond_5
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionMenus:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-interface {p1, v7, v5, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->optionMenuIcon:[I

    aget v5, v6, v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 1841
    :cond_6
    const/16 v6, 0x9

    if-eq v5, v6, :cond_7

    const/16 v6, 0xb

    if-ne v5, v6, :cond_8

    :cond_7
    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getNotMergedCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1843
    :cond_8
    const/16 v0, 0xc

    if-ne v5, v0, :cond_9

    .line 1844
    invoke-interface {p1, v7, v5, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 1847
    :cond_9
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionMenus:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-interface {p1, v7, v5, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->optionMenuIcon:[I

    aget v5, v6, v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 1854
    :cond_a
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto/16 :goto_0

    .line 1785
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 353
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mUnmountHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mUnmountHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    :cond_0
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->DiscPlusImageInit:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 358
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->DiscPlusImageInit:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    :cond_1
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    invoke-static {v5}, Lcom/android/music/common/util/MusicPlayerUtil;->unbindFromService(Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;)V

    .line 380
    :try_start_0
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpMainTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    iget-boolean v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-eqz v5, :cond_2

    .line 387
    :try_start_1
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mKillGarbageReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpMainTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    :cond_2
    :goto_1
    iget-boolean v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mRestartActivity:Z

    if-nez v5, :cond_3

    .line 405
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->clearStatics()V

    .line 417
    :cond_3
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v5}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v5, v6, :cond_4

    .line 418
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 420
    :cond_4
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v5, :cond_5

    .line 421
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v5}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 423
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v5}, Lcom/android/music/common/util/BatteryChecker;->closeAlertDialog()V

    .line 431
    :cond_5
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextAlert:Landroid/app/AlertDialog;

    if-eqz v5, :cond_6

    .line 433
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->cancel()V

    .line 436
    :cond_6
    const/4 v3, 0x0

    .line 437
    .local v3, tabName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 439
    .local v4, viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    if-eqz v5, :cond_a

    .line 441
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabListID:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 442
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v5}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v3

    .line 443
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 444
    .restart local v4       #viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    if-eqz v4, :cond_9

    .line 445
    iget-object v5, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 446
    iget-object v5, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 447
    iput-object v7, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    .line 450
    :cond_7
    iget-object v5, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v5, :cond_8

    iget-object v5, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v5, :cond_8

    .line 452
    :try_start_2
    iget-object v5, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    iget-object v6, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 458
    :goto_3
    iput-object v7, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 461
    :cond_8
    iget-object v5, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->closeCursor()V

    .line 441
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 381
    .end local v1           #i:I
    .end local v3           #tabName:Ljava/lang/String;
    .end local v4           #viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 382
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v6, "onDestroy : mMediaReceiver is not registered."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 388
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 389
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v6, "onDestroy : mKillGarbageReciver is not registered."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 453
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #i:I
    .restart local v3       #tabName:Ljava/lang/String;
    .restart local v4       #viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 454
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v6, "IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 455
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v5

    move-object v0, v5

    .line 456
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v6, "IllegalArgumentException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 466
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #i:I
    :cond_a
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    if-eqz v5, :cond_c

    .line 467
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, mCurrentTabTag:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 470
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v5, v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v5, :cond_c

    .line 472
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v5, v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v5, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-eqz v5, :cond_b

    .line 473
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v5, v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v5, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->musicClose()V

    .line 474
    :cond_b
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    invoke-virtual {v5}, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->clearData()V

    .line 485
    .end local v2           #mCurrentTabTag:Ljava/lang/String;
    :cond_c
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 486
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onDestroy()V

    .line 487
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1978
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 1979
    .local v3, optionID:I
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 1982
    .local v2, mCurrentTabTag:Ljava/lang/String;
    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 1984
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    packed-switch v4, :pswitch_data_0

    .line 2021
    .end local p0
    :goto_0
    return v7

    .line 1987
    .restart local p0
    :pswitch_0
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    iget-boolean v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    invoke-virtual {v4, p0, v5, v7}, Lcom/android/music/list/view/MpListGridView;->initAdapter(Landroid/content/Context;ZZ)V

    .line 1988
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v4}, Lcom/android/music/list/view/MpListGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1989
    .local v0, adapter:Landroid/widget/Adapter;
    instance-of v4, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    if-eqz v4, :cond_0

    .line 1990
    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v2, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->MyTag:Ljava/lang/String;

    .line 1991
    :cond_0
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v8}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    .line 1993
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    iget v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mGridViewColumn:I

    invoke-virtual {v4, v5}, Lcom/android/music/list/view/MpListGridView;->setNumColumns(I)V

    .line 1994
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v4, v6}, Lcom/android/music/list/view/MpListGridView;->setVisibility(I)V

    .line 1996
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iput v7, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    .line 1997
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iput v6, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mOptionMenuGridList:I

    .line 1998
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2001
    .restart local p0
    :pswitch_1
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    iget-boolean v5, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/music/list/view/MpListGridView;->initAdapter(Landroid/content/Context;ZZ)V

    .line 2002
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v6}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    .line 2004
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v4, v8}, Lcom/android/music/list/view/MpListGridView;->setVisibility(I)V

    .line 2006
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iput v6, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    .line 2007
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iput v7, v4, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mOptionMenuGridList:I

    .line 2008
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mScrollView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 2017
    .restart local p0
    :cond_1
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 2018
    .local v1, currentView:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-object v4, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v3}, Lcom/android/music/list/view/AbstractMpListView;->optionMenuOperate(I)V

    goto/16 :goto_0

    .line 1984
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

    const/4 v3, 0x0

    .line 1372
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v1, "MpPlay MpMainTabActivity onPause1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 1374
    iput-boolean v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->activityCheck:Z

    .line 1375
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1377
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_2

    .line 1379
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->saveCheck()V

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-boolean v0, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    if-ne v0, v4, :cond_1

    .line 1386
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v1, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListPosition:I

    .line 1391
    :cond_2
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-eqz v0, :cond_3

    .line 1392
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1397
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_4

    .line 1400
    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1404
    :cond_4
    :goto_0
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 1406
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    if-ne v0, v4, :cond_5

    .line 1408
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v0}, Lcom/android/music/list/view/MpListGridView;->cancelContextAlert()V

    .line 1412
    :cond_5
    sput-boolean v3, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    .line 1413
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v0, :cond_6

    .line 1414
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 1417
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1423
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mPlayMusicReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1428
    :goto_2
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onPause()V

    .line 1429
    return-void

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause : mLowBatteryReceiver is not registered."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1424
    :catch_1
    move-exception v0

    .line 1425
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause : mPlayMusicReceiver is not registered."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1401
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public onPrepareContextMenu(Landroid/view/ContextMenu;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2301
    .line 2305
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v0

    .line 2318
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->deleteUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2319
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2321
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2322
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2323
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2324
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2325
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2326
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v0, v4

    .line 2389
    :goto_0
    return v0

    .line 2330
    :cond_0
    if-nez v1, :cond_1

    move v0, v4

    move v1, v4

    .line 2379
    :goto_1
    if-eqz v1, :cond_5

    .line 2380
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2384
    :goto_2
    if-eqz v0, :cond_6

    .line 2385
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2389
    :goto_3
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 2334
    :cond_1
    invoke-static {v1}, Lcom/android/music/common/util/UriUtil;->IsUsedMediaProvider(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v4

    move v1, v4

    .line 2336
    goto :goto_1

    .line 2340
    :cond_2
    if-nez v0, :cond_3

    move v0, v4

    move v2, v4

    .line 2368
    :goto_4
    const-string v3, "content://media/external"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "content://media/internal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "content://drm/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    move v0, v4

    move v1, v4

    .line 2373
    goto :goto_1

    .line 2344
    :cond_3
    new-instance v2, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-direct {v2}, Lcom/android/music/common/manager/MusicDrmManager;-><init>()V

    .line 2347
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v0

    .line 2348
    if-eqz v0, :cond_8

    .line 2349
    invoke-virtual {v2}, Lcom/android/music/common/manager/MusicDrmManager;->getOptionInfo()Landroid/drm/mobile2/Drm2Options;

    move-result-object v0

    .line 2351
    if-nez v0, :cond_4

    move v0, v4

    move v2, v4

    .line 2353
    goto :goto_4

    .line 2355
    :cond_4
    iget-boolean v2, v0, Landroid/drm/mobile2/Drm2Options;->bRingtone:Z

    .line 2356
    iget-boolean v0, v0, Landroid/drm/mobile2/Drm2Options;->bSendAs:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2359
    :catch_0
    move-exception v0

    .line 2360
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2361
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 2362
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v4

    .line 2363
    goto :goto_0

    .line 2382
    :cond_5
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 2387
    :cond_6
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_7
    move v1, v2

    goto/16 :goto_1

    :cond_8
    move v0, v5

    move v2, v5

    goto :goto_4
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3006
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 3007
    const v0, 0x7f0c005d

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    .line 3008
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 3010
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 3011
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 3014
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const v4, 0x7f020020

    const/4 v7, 0x0

    .line 1863
    if-nez p1, :cond_0

    move v0, v7

    .line 1972
    :goto_0
    return v0

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_1

    .line 1866
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    .line 1867
    :cond_1
    iget-boolean v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-eqz v0, :cond_2

    move v0, v7

    .line 1868
    goto :goto_0

    .line 1869
    :cond_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1892
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    .line 1896
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabDisplayData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpListDisplayData;->getOptionMenus()Ljava/util/ArrayList;

    move-result-object v1

    .line 1899
    const-string v2, ""

    .line 1902
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 1903
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mOptionMenuGridList:I

    packed-switch v0, :pswitch_data_0

    move-object v3, v2

    move v2, v4

    .line 1943
    :goto_1
    const/4 v0, 0x1

    move v4, v0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 1944
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1946
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1949
    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 1943
    :cond_3
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 1905
    :pswitch_0
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1906
    const v2, 0x7f020021

    move-object v3, v0

    .line 1907
    goto :goto_1

    .line 1909
    :pswitch_1
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v2, v4

    move-object v3, v0

    .line 1910
    goto :goto_1

    .line 1952
    :cond_4
    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getCount()I

    move-result v6

    if-nez v6, :cond_6

    .line 1953
    const/4 v0, 0x2

    if-eq v5, v0, :cond_5

    const/4 v0, 0x5

    if-ne v5, v0, :cond_3

    .line 1954
    :cond_5
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionMenus:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-interface {p1, v7, v5, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->optionMenuIcon:[I

    aget v5, v6, v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 1959
    :cond_6
    const/16 v6, 0x9

    if-eq v5, v6, :cond_7

    const/16 v6, 0xb

    if-ne v5, v6, :cond_8

    :cond_7
    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getNotMergedCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1961
    :cond_8
    const/16 v0, 0xc

    if-ne v5, v0, :cond_9

    .line 1962
    invoke-interface {p1, v7, v5, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 1965
    :cond_9
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mOptionMenus:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-interface {p1, v7, v5, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity;->optionMenuIcon:[I

    aget v5, v6, v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 1972
    :cond_a
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto/16 :goto_0

    .line 1903
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 772
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, mCurrentTabTag:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->checkNoTracks(Ljava/lang/String;)V

    .line 775
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onRestart()V

    .line 776
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "TimeCheck"

    .line 940
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 1"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 2"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    sget-boolean v1, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    if-eqz v1, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    .line 959
    sput-boolean v10, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    .line 960
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onResume()V

    .line 1218
    :goto_0
    return-void

    .line 971
    :cond_0
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v1

    .line 972
    invoke-virtual {v1, v8, v9, v9, v9}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 973
    if-eqz v1, :cond_1

    .line 974
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 978
    :cond_1
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 3"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 4"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 999
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1000
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1001
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1084
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "musicPlayer.service.startUpdateStatus"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1085
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mPlayMusicReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1087
    invoke-static {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMediaScannerRunCheck:Z

    .line 1089
    invoke-static {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1090
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    const v2, 0x7f0a00ee

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 1091
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1094
    :cond_2
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 5"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->checkPlayButtonEnable()V

    .line 1099
    iput-boolean v8, p0, Lcom/android/music/list/activity/MpMainTabActivity;->activityCheck:Z

    .line 1101
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 7"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1105
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 8"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onResume()V

    .line 1118
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 10"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    .line 1121
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v1, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1122
    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->GetCreateMusicHandler()Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    .line 1123
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/4 v2, 0x3

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1125
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 11"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/common/manager/MusicAppManager;->getManagFilter()Lcom/android/music/common/manager/MusicAppManageFilter;

    move-result-object v2

    .line 1135
    if-eqz v2, :cond_3

    .line 1137
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnResume: manageFilter is not null -> check runningstate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_3
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 12"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    if-eqz v2, :cond_c

    iget v1, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    const/16 v4, 0xd

    if-eq v1, v4, :cond_4

    iget v1, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    const/16 v4, 0xc

    if-ne v1, v4, :cond_c

    .line 1145
    :cond_4
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v4, "OnResume:call changeTap[%d], setSelection[%d]"

    new-array v5, v11, [Ljava/lang/Object;

    iget v6, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    iget v6, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    sub-int/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget v1, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->changeTab(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1149
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1150
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 1151
    iget-object v4, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->clearAdapter()V

    .line 1152
    iget-object v4, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_b

    .line 1153
    iget-object v4, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v5, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v8, v5}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1154
    invoke-direct {p0, v1, v3}, Lcom/android/music/list/activity/MpMainTabActivity;->initIndexer(Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;Ljava/lang/String;)V

    .line 1163
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v1, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1164
    iget v4, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    const/4 v5, 0x3

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/android/music/list/view/AbstractMpListView;->setSelection(I)V

    .line 1169
    new-instance v1, Lcom/android/music/common/manager/MusicAppManageFilter;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 1170
    const/16 v4, 0xa

    iput v4, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 1171
    const/4 v4, -0x1

    iput v4, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 1172
    iget v4, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    iput v4, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 1173
    iget v2, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    iput v2, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 1175
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/music/common/manager/MusicAppManager;->setManageFilter(Lcom/android/music/common/manager/MusicAppManageFilter;)V

    .line 1183
    :cond_6
    :goto_2
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 13"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const v1, 0x7f0a0016

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1186
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 1187
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 1188
    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/music/list/activity/MpMainTabActivity;->changeTab(I)Z

    .line 1192
    :cond_8
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 14"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const v1, 0x7f0a0016

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget v1, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    if-ne v1, v8, :cond_9

    .line 1197
    const v1, 0x7f0a0017

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1199
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v1, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    if-eqz v1, :cond_9

    .line 1200
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v1, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v1}, Lcom/android/music/list/view/MpListGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 1201
    move-object v0, v2

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1202
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1203
    check-cast v2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-virtual {v2}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 1208
    :cond_9
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 15"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-boolean v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    if-eqz v1, :cond_a

    .line 1211
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 1212
    if-eqz p0, :cond_a

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v1, :cond_a

    .line 1213
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->resumeCheck()V

    .line 1217
    :cond_a
    const-string v1, "TimeCheck"

    const-string v1, "onResume - 16"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1157
    :cond_b
    iget-object v4, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4, v10, v9}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter(ZLandroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1158
    invoke-direct {p0, v1, v3}, Lcom/android/music/list/activity/MpMainTabActivity;->initIndexer(Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;Ljava/lang/String;)V

    .line 1159
    iget-object v4, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_1

    .line 1177
    :cond_c
    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 1178
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 1179
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget v1, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListPosition:I

    invoke-virtual {v2, v1}, Lcom/android/music/list/view/AbstractMpListView;->setSelection(I)V

    goto/16 :goto_2
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const v5, 0x7f0a0017

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v6, "TimeCheck"

    .line 1222
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onStart()V

    .line 1236
    sget-boolean v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mEntrance:Z

    if-eqz v0, :cond_2

    .line 1237
    invoke-direct {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->isMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1239
    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1240
    sput-boolean v4, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mEntrance:Z

    .line 1241
    iput-boolean v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mRestartActivity:Z

    .line 1242
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->finish()V

    .line 1308
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1250
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 1251
    if-eqz v0, :cond_1

    .line 1256
    iget v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    if-ne v1, v3, :cond_1

    .line 1257
    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    iget-boolean v1, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mHasCheck:Z

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/music/list/view/MpListGridView;->initAdapter(Landroid/content/Context;ZZ)V

    .line 1262
    :cond_1
    sput-boolean v4, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mEntrance:Z

    .line 1266
    :cond_2
    const-string v0, "TimeCheck"

    const-string v0, "onStart - 1"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/android/music/common/util/MusicPlayerUtil;->registerIntentFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 1280
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    if-eqz v0, :cond_6

    .line 1282
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1284
    :goto_1
    if-eqz v1, :cond_5

    .line 1286
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v2, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1287
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    move-object v1, v0

    move-object v0, v2

    .line 1291
    :goto_2
    if-eqz v0, :cond_3

    .line 1292
    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1293
    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v0, v3}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setEnable(Z)V

    .line 1296
    :cond_3
    if-eqz v1, :cond_4

    .line 1297
    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    if-eqz v0, :cond_4

    .line 1298
    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v0, v3}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setEnable(Z)V

    .line 1304
    :cond_4
    const-string v0, "TimeCheck"

    const-string v0, "onStart - 2"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-direct {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->registerContentObserverOnAudioMedia()V

    goto/16 :goto_0

    :cond_5
    move-object v1, v2

    move-object v0, v2

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method

.method protected onStop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 491
    const/4 v1, 0x0

    .line 492
    .local v1, mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 494
    .local v2, viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v3}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 495
    iget-object v3, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v3}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v3, v6}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setEnable(Z)V

    .line 496
    iget-object v3, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v3}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v3}, Lcom/android/music/list/interfaces/MpSetViewInterface;->getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    move-result-object v1

    .line 498
    :cond_0
    if-eqz v1, :cond_1

    .line 499
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const v5, 0x7f0a006e

    invoke-virtual {p0, v5}, Lcom/android/music/list/activity/MpMainTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwArrayIndexer;-><init>(Ljava/util/List;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 504
    :cond_1
    if-eqz v2, :cond_2

    :try_start_0
    iget-object v3, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v3, :cond_2

    .line 505
    iget-object v3, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v3}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v4, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 513
    :cond_2
    :goto_0
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 516
    sget-boolean v3, Lcom/android/music/list/activity/MpMainTabActivity;->isShownmediaMessageBox:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 517
    sget-object v3, Lcom/android/music/list/activity/MpMainTabActivity;->mediaMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 518
    sput-boolean v6, Lcom/android/music/list/activity/MpMainTabActivity;->isShownmediaMessageBox:Z

    .line 522
    :cond_3
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextAlert:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    .line 524
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->contextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 529
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/android/music/list/activity/MpMainTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 534
    :goto_1
    invoke-direct {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->unregisterContentObserverOnAudioMedia()V

    .line 536
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onStop()V

    .line 537
    return-void

    .line 506
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 507
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v4, "IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 509
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 530
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 531
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity;->TAG:Ljava/lang/String;

    const-string v4, "onStop : mActivityUpdateReceiver is not registered."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public showNoTracksView(ZLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 3352
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mViewHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 3353
    if-nez v0, :cond_0

    .line 3398
    :goto_0
    return-void

    .line 3356
    :cond_0
    iget v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridListExchage:I

    .line 3359
    if-eqz p1, :cond_4

    .line 3360
    if-ne v1, v6, :cond_3

    .line 3361
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v1, v3}, Lcom/android/music/list/view/MpListGridView;->setVisibility(I)V

    .line 3366
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    if-nez v1, :cond_2

    .line 3367
    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    .line 3368
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3374
    iget-object v2, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3375
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    const v2, 0x7f0c0044

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3376
    iget-object v2, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/music/common/util/ListUtil;->getNoItemString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3377
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 3378
    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3379
    iget-object v2, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 3383
    :cond_2
    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3384
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    .line 3362
    :cond_3
    if-nez v1, :cond_1

    .line 3363
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1, v3}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    goto :goto_1

    .line 3386
    :cond_4
    iget-object v2, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 3387
    iget-object v2, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mNoTracks:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3389
    :cond_5
    if-ne v1, v6, :cond_7

    .line 3390
    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v0, v4}, Lcom/android/music/list/view/MpListGridView;->setVisibility(I)V

    .line 3396
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpMainTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    .line 3391
    :cond_7
    if-nez v1, :cond_6

    .line 3392
    iget-object v1, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v1, :cond_6

    .line 3393
    iget-object v0, v0, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0, v4}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    goto :goto_2
.end method
