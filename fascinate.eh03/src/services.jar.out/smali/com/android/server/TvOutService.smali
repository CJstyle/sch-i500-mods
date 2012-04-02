.class public Lcom/android/server/TvOutService;
.super Landroid/os/ITvOutService$Stub;
.source "TvOutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TvOutService$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEFAULT_TVSTATUS:I = 0x0

.field static final DEFAULT_TVSYSTEM:I = 0x2

.field private static HDMI_SUBTITLE_HEIGHT:I = 0x0

.field static final HDMI_SUBTITLE_MAX_HEIGHT:I = 0x130

.field static final HDMI_SUBTITLE_MAX_WIDTH:I = 0x740

.field private static HDMI_SUBTITLE_WIDTH:I = 0x0

.field public static final LOCALE_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.locale.changed"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "TvOut-Observer"

.field static final TVSTATUS_OFF:I = 0x0

.field static final TVSTATUS_ON:I = 0x1

.field static final TVSYSTEM_NTSC:I = 0x1

.field static final TVSYSTEM_PAL:I = 0x2

.field private static mIsScreenOff:Z

.field private static mIsTvWaitResume:Z

.field private static mTvCableConnected:Z

.field private static mTvSuspend:Z

.field private static sRotation:I

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private bitmap_subtitle:Landroid/graphics/Bitmap;

.field private canvas_subtile:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHeadsetNotification:Landroid/app/Notification;

.field final mLock:Ljava/lang/Object;

.field private mPlaySounds:Z

.field private mPrevSubtitle:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTvStatus:I

.field private mTvSystem:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private tvout:Landroid/hardware/TvOut;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    sput v0, Lcom/android/server/TvOutService;->sRotation:I

    .line 90
    sput-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    .line 91
    sput-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 93
    sput-boolean v0, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 97
    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    .line 98
    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    .line 114
    sput-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const-string v2, "1"

    .line 177
    invoke-direct {p0}, Landroid/os/ITvOutService$Stub;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TvOutService;->mLock:Ljava/lang/Object;

    .line 95
    iput-object v1, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 101
    iput-object v1, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    .line 104
    iput-object v1, p0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    .line 952
    new-instance v0, Lcom/android/server/TvOutService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TvOutService$2;-><init>(Lcom/android/server/TvOutService;)V

    iput-object v0, p0, Lcom/android/server/TvOutService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    const-string v0, "TvOut-Observer"

    const-string v1, "TVOU_DEBUG TvOutService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput-object p1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    .line 181
    const-string v0, "persist.service.mount.playsnd"

    const-string v1, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/TvOutService;->mPlaySounds:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->init()V

    .line 186
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    .line 188
    sget-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    sget-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/server/TvOutService$1;

    invoke-direct {v1, p0}, Lcom/android/server/TvOutService$1;-><init>(Lcom/android/server/TvOutService;)V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->sRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TvOutService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/TvOutService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/TvOutService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/TvOutService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/TvOutService;->updatetvsystem()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/TvOutService;->updatetvstatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/TvOutService;->tvOutSetImageString()V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-boolean p0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    return p0
.end method

.method public static onRotationChanged(I)V
    .locals 7
    .parameter "rotation"

    .prologue
    const-string v6, "TvOut-Observer"

    .line 780
    const-string v0, "OnRotationChanged"

    .line 783
    .local v0, CCS_TAG:Ljava/lang/String;
    const-string v3, "tvoutservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ITvOutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvOutService;

    move-result-object v2

    .line 786
    .local v2, tvoutService:Landroid/os/ITvOutService;
    if-nez v2, :cond_1

    .line 787
    const-string v3, "TvOut-Observer"

    const-string v3, " setTvoutOrientation TvOutService Not running"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    sget v3, Lcom/android/server/TvOutService;->sRotation:I

    if-eq v3, p0, :cond_0

    .line 795
    sput p0, Lcom/android/server/TvOutService;->sRotation:I

    .line 797
    :try_start_0
    const-string v3, "TvOut-Observer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTvoutOrientation rotation =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-interface {v2, p0}, Landroid/os/ITvOutService;->SetOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 800
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 801
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "TvOut-Observer"

    const-string v3, "setTvoutOrientation   "

    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stayAwake(Z)V
    .locals 2
    .parameter "awake"

    .prologue
    const-string v1, "TvOut-Observer"

    .line 442
    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 443
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    const-string v0, "TvOut-Observer"

    const-string v0, "stayAwake Accuring the lock SCREEN_ON_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const-string v0, "TvOut-Observer"

    const-string v0, "stayAwake relesing the lock SCREEN_ON_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 455
    :cond_2
    const-string v0, "TvOut-Observer"

    const-string v0, "stayAwake mWakeLock is null SCREEN_ON_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private textSizeForSubtitle()I
    .locals 4

    .prologue
    .line 837
    const/4 v0, 0x0

    .line 839
    .local v0, subtitletextsize:I
    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sparse-switch v1, :sswitch_data_0

    .line 854
    const/16 v0, 0x25

    .line 858
    :goto_0
    const-string v1, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textSizeForSubtitle  subtitletextsize =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return v0

    .line 842
    :sswitch_0
    const/16 v0, 0x10

    .line 843
    goto :goto_0

    .line 845
    :sswitch_1
    const/16 v0, 0x14

    .line 846
    goto :goto_0

    .line 848
    :sswitch_2
    const/16 v0, 0x19

    .line 849
    goto :goto_0

    .line 851
    :sswitch_3
    const/16 v0, 0x25

    .line 852
    goto :goto_0

    .line 839
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0x90 -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private tvOutSetImageString()V
    .locals 4

    .prologue
    .line 713
    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    const v2, 0x1040464

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, text:Ljava/lang/String;
    const-string v1, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tvOutSetImageString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v0}, Landroid/hardware/TvOut;->TvOutSetImageString(Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method private updatescreensize()V
    .locals 2

    .prologue
    .line 604
    const-string v0, "TvOut-Observer"

    const-string v1, "updatescreensize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void
.end method

.method private updatetvstatus()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "TvOut-Observer"

    .line 613
    const-string v2, "TvOut-Observer"

    const-string v2, "updatetvstatus"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget v2, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-nez v2, :cond_1

    .line 616
    const-string v2, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatetvstatus tvstatus off  mTvCableConnected :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, intent1:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 623
    const-string v2, "state"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v2, "microphone"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    invoke-static {v0, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 627
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : disable"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 632
    const-string v2, "state"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 633
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v2, "microphone"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    invoke-static {v1, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 636
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : enable"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    .line 640
    invoke-virtual {p0, v5}, Lcom/android/server/TvOutService;->setTvoutCableConnected(I)V

    .line 678
    .end local v0           #intent1:Landroid/content/Intent;
    .end local v1           #intent2:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget v2, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v2, v6, :cond_2

    .line 645
    const-string v2, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatetvstatus tvstatus on  mTvCableConnected :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v2, v6, :cond_0

    .line 649
    const-string v2, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatetvstatus enable tvout    mTvCableConnected :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .restart local v0       #intent1:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 653
    const-string v2, "state"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 654
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string v2, "microphone"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    invoke-static {v0, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 657
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : disable"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .restart local v1       #intent2:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 662
    const-string v2, "state"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    const-string v2, "microphone"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    invoke-static {v1, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 666
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : enable"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->EnableTvOut()V

    .line 670
    invoke-virtual {p0, v6}, Lcom/android/server/TvOutService;->setTvoutCableConnected(I)V

    goto/16 :goto_0

    .line 675
    .end local v0           #intent1:Landroid/content/Intent;
    .end local v1           #intent2:Landroid/content/Intent;
    :cond_2
    const-string v2, "TvOut-Observer"

    const-string v2, "updatetvsystem system shuldnot come here... error in tvout status values"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updatetvsystem()V
    .locals 2

    .prologue
    .line 608
    const-string v0, "TvOut-Observer"

    const-string v1, "updatetvsystem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget v1, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetTvSystem(I)V

    .line 611
    return-void
.end method


# virtual methods
.method public CableConnected(Z)V
    .locals 4
    .parameter "Connected"

    .prologue
    const/4 v3, 0x1

    const-string v2, "TvOut-Observer"

    .line 231
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sput-boolean p1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    .line 234
    if-ne p1, v3, :cond_2

    .line 236
    invoke-virtual {p0, v3}, Lcom/android/server/TvOutService;->setTvoutCableConnected(I)V

    .line 244
    :goto_0
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-nez v0, :cond_3

    .line 246
    :cond_0
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected tvstatus off  mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    .line 278
    :cond_1
    :goto_1
    return-void

    .line 240
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/TvOutService;->setTvoutCableConnected(I)V

    goto :goto_0

    .line 252
    :cond_3
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v3, :cond_1

    .line 254
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected tvstatus on  mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v3, :cond_5

    .line 258
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected enable tvout    mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    if-nez v0, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->EnableTvOut()V

    goto :goto_1

    .line 265
    :cond_4
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected  enable tvout    mIsScreenOff :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 272
    :cond_5
    const-string v0, "TvOut-Observer"

    const-string v0, "updatetvsystem system shuldnot come here... error in tvout status values"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public DisableTvOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    const-string v0, "TvOut-Observer"

    const-string v1, "DisableTvOut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->DisableTvOut()V

    .line 383
    invoke-direct {p0, v2}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 384
    sput-boolean v2, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 385
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 386
    return-void
.end method

.method public DisableTvOutForce()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4000

    const/4 v4, 0x0

    const-string v8, "h2w"

    const-string v5, "TvOut-Observer"

    .line 344
    const-string v2, "TvOut-Observer"

    const-string v2, "DisableTvOut"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, intent1:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 348
    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v2, "microphone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 352
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : disable"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 357
    const-string v2, "state"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v2, "microphone"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    invoke-static {v1, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 361
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : enable"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->DisableTvOut()V

    .line 364
    invoke-direct {p0, v4}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 365
    sput-boolean v4, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 366
    sput-boolean v4, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 367
    return-void
.end method

.method public EnableTvOut()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 302
    const-string v0, "TvOut-Observer"

    const-string v1, "EnableTvOut"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Lcom/android/server/TvOutService;->tvOutSetImageString()V

    .line 304
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v1, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 305
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    .line 309
    :cond_0
    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v2, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->EnableTvOut()V

    .line 312
    invoke-direct {p0, v2}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 314
    :cond_1
    return-void
.end method

.method public EnableTvOutForce()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v5, "TvOut-Observer"

    .line 317
    const-string v2, "TvOut-Observer"

    const-string v2, "EnableTvOut"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, intent1:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v2, "microphone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    invoke-static {v0, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 326
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : disable"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    const-string v2, "state"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v2, "microphone"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    invoke-static {v1, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 335
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : enable"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v3, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v2, v3}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 338
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->EnableTvOut()V

    .line 339
    invoke-direct {p0, v6}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 340
    return-void
.end method

.method public SetCableStatus(Z)V
    .locals 3
    .parameter "status"

    .prologue
    .line 282
    const-string v0, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetCableStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sput-boolean p1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    .line 285
    return-void
.end method

.method public SetOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 492
    const-string v0, "TvOut-Observer"

    const-string v1, "SetOrientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 494
    return-void
.end method

.method public TvOutResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v2, "TvOut-Observer"

    .line 567
    const-string v0, "TvOut-Observer"

    const-string v0, "TvOutResume"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sget-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    if-ne v0, v3, :cond_2

    .line 570
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isTvoutCableConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    :cond_0
    const-string v0, "TvOut-Observer"

    const-string v0, "Call Tvout resume"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v1, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 573
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->TvOutResume(I)V

    .line 574
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 575
    sput-boolean v3, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 586
    :goto_0
    return-void

    .line 579
    :cond_1
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tvout.isEnabled()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 584
    :cond_2
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTvSuspend "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvSuspend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TvOutSetImage(I)V
    .locals 2
    .parameter "paddr"

    .prologue
    .line 591
    const-string v0, "TvOut-Observer"

    const-string v1, "TvOutSetImage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    :cond_0
    return-void
.end method

.method public TvOutSuspend(Ljava/lang/String;)V
    .locals 2
    .parameter "tvText"

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 546
    .local v0, tvouthdmisuspendInit:Z
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isSuspended()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TvOutService;->TvOutSuspendAnalog(Ljava/lang/String;)V

    .line 550
    :cond_1
    return-void
.end method

.method public TvOutSuspendAnalog(Ljava/lang/String;)V
    .locals 4
    .parameter "tvText"

    .prologue
    const/4 v3, 0x1

    const-string v2, "TvOut-Observer"

    .line 510
    const-string v0, "TvOut-Observer"

    const-string v0, "TvOutSuspend"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isTvoutCableConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    sget-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    if-ne v0, v3, :cond_1

    .line 515
    :cond_0
    const-string v0, "TvOut-Observer"

    const-string v0, "Call Suspend"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/TvOut;->TvOutSuspend(Landroid/content/Context;Ljava/lang/String;)V

    .line 517
    sput-boolean v3, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 518
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 530
    :goto_0
    return-void

    .line 522
    :cond_1
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTvSuspend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvSuspend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsTvWaitResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    :cond_2
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTvoutCableConnected()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isTvoutCableConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TvoutSubtitleIsEnable()Z
    .locals 2

    .prologue
    .line 933
    const-string v0, "TvOut-Observer"

    const-string v1, "isHDMISubtitleOn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->TvoutSubtitleIsEnable()Z

    move-result v0

    return v0
.end method

.method public TvoutSubtitlePostString(Ljava/lang/String;I)Z
    .locals 11
    .parameter "mSubTitleText"
    .parameter "chromakey"

    .prologue
    .line 866
    const-string v7, "TvOut-Observer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TvoutSubtitlePostString  string =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v4, 0x0

    .local v4, width:I
    const/4 v0, 0x0

    .local v0, height:I
    const/4 v5, 0x0

    .local v5, x:I
    const/4 v6, 0x0

    .line 870
    .local v6, y:I
    invoke-direct {p0}, Lcom/android/server/TvOutService;->textSizeForSubtitle()I

    move-result v3

    .line 872
    .local v3, textsizehdmi:I
    iget-object v7, p0, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 874
    const/4 v7, 0x0

    .line 904
    :goto_0
    return v7

    .line 877
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 879
    .local v1, mTvoutSubtitleText:Landroid/widget/TextView;
    const/high16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setDrawingCacheQuality(I)V

    .line 880
    const/16 v7, 0x11

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 881
    int-to-float v7, v3

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 882
    const/4 v7, 0x0

    const/4 v8, 0x0

    sget v9, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    sget v10, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 883
    const/high16 v7, -0x100

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setDrawingCacheBackgroundColor(I)V

    .line 884
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 886
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 887
    invoke-virtual {v1}, Landroid/widget/TextView;->buildDrawingCache()V

    .line 888
    invoke-virtual {v1}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 890
    .local v2, sBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 892
    const-string v7, "TvOut-Observer"

    const-string v8, "TvoutHDMIPostSubtitle bitmap is null "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v7, 0x0

    goto :goto_0

    .line 896
    :cond_1
    const/4 v6, 0x0

    .line 897
    iget-object v7, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    const/high16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 898
    iget-object v7, p0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    int-to-float v8, v5

    int-to-float v9, v6

    const/4 v10, 0x0

    invoke-virtual {v7, v2, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 899
    iget-object v7, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget-object v8, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    const/high16 v9, -0x100

    invoke-virtual {v7, v8, v9}, Landroid/hardware/TvOut;->TvoutSubtitlePostBitmap(Landroid/graphics/Bitmap;I)Z

    .line 901
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 903
    iput-object p1, p0, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    .line 904
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public TvoutSubtitleSetStatus(I)Z
    .locals 4
    .parameter "mSubTitleOn"

    .prologue
    const/4 v3, 0x0

    .line 813
    const-string v0, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TvoutSubtitleSetStatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    if-lez p1, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutSubtitleIsEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->TvoutSubtitleGetWidth()I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    .line 820
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->TvoutSubtitleGetHeight()I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    .line 821
    sget v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    .line 822
    iget-object v0, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 823
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    .line 824
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->TvoutSubtitleSetStatus(I)Z

    move-result v0

    .line 832
    :goto_0
    return v0

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, v3}, Landroid/hardware/TvOut;->TvoutSubtitleSetStatus(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 832
    goto :goto_0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    const-string v0, "android.intent.action.locale.changed"

    return-object v0
.end method

.method init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v4, "TvOut-Observer"

    .line 211
    const-string v2, "TvOut-Observer"

    const-string v2, "TVOUT_DEBUG_VIVEK_ANALOG1"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v2, Landroid/hardware/TvOut;

    invoke-direct {v2}, Landroid/hardware/TvOut;-><init>()V

    iput-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    .line 214
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/TvOutService;->mHandler:Landroid/os/Handler;

    .line 215
    iput v5, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    .line 216
    new-instance v1, Lcom/android/server/TvOutService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/TvOutService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/TvOutService$SettingsObserver;-><init>(Lcom/android/server/TvOutService;Landroid/os/Handler;)V

    .line 217
    .local v1, settingsObserver:Lcom/android/server/TvOutService$SettingsObserver;
    iget-object v2, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tv_out"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    invoke-virtual {v1}, Lcom/android/server/TvOutService$SettingsObserver;->observe()V

    .line 219
    const-string v2, "TvOut-Observer"

    const-string v2, "TVOUT_DEBUG_VIVEK_ANALOG2"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.locale.changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/TvOutService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    iget-object v2, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-virtual {p0, v2, v3}, Lcom/android/server/TvOutService;->setWakeMode(Landroid/content/Context;I)V

    .line 226
    const-string v2, "TvOut-Observer"

    const-string v2, "TVOUT_DEBUG_VIVEK_ANALOG3"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 473
    const-string v0, "TvOut-Observer"

    const-string v1, "isEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .locals 2

    .prologue
    .line 692
    const-string v0, "TvOut-Observer"

    const-string v1, "isSuspended"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isSuspended()Z

    move-result v0

    return v0
.end method

.method public isTvoutCableConnected()Z
    .locals 2

    .prologue
    .line 708
    const-string v0, "TvOut-Observer"

    const-string v1, "isTvoutCableConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isTvoutCableConnected()Z

    move-result v0

    return v0
.end method

.method public setTvoutCableConnected(I)V
    .locals 2
    .parameter "tvoutCableConnected"

    .prologue
    .line 731
    const-string v0, "TvOut-Observer"

    const-string v1, "setTvoutCableConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->setTvoutCableConnected(I)V

    .line 733
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mode"

    .prologue
    const-string v4, "TvOut-Observer"

    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, washeld:Z
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 404
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    const/4 v1, 0x1

    .line 406
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 408
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 410
    :cond_1
    const-string v2, "TvOut-Observer"

    const-string v2, "setWakeMode is called  SCREEN_ON_DEBUG"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 413
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-string v3, "TvOut-Observer"

    invoke-virtual {v0, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 414
    const-string v2, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWakeMode setting the mode SCREEN_ON_DEBUG mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_2

    .line 418
    const-string v2, "TvOut-Observer"

    const-string v2, "setWakeMode mWakeLock is null SCREEN_ON_DEBUG"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_2
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 422
    if-eqz v1, :cond_3

    .line 423
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 425
    :cond_3
    return-void
.end method

.method updateTVoutOnScreenOnOff()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "TvOut-Observer"

    .line 736
    sget-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    if-ne v0, v2, :cond_1

    .line 738
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTVoutOnScreenOnOff tvstatus off  mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v2, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v2, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v2, :cond_0

    .line 747
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTVoutOnScreenOnOff tvstatus on  mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v2, :cond_0

    .line 751
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected enable tvout    mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    sget-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    if-nez v0, :cond_2

    .line 754
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->EnableTvOut()V

    goto :goto_0

    .line 758
    :cond_2
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTVoutOnScreenOnOff  enable tvout    mIsScreenOff :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
