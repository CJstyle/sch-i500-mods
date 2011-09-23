.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountCallBackBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$VolumeList;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_UNMOUNT:Z = true

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_ADDOBJ:I = 0x4

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final LOCAL_LOGD:Z = true

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "MountService"

.field public static mShowSafeUnmountNotificationWhenUnmounted:Z

.field public static mShowSafeUnmountNotificationWhenUnmountedSd:Z


# instance fields
.field private doSendSorry:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBooted:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountCallBackBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPlaySound:Z

.field private mPms:Lcom/android/server/PackageManagerService;

.field private mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mReady:Z

.field private mSendUmsConnectedOnBoot:Z

.field private mUmsDisabling:Z

.field private mUmsEnabling:Z

.field private final mVolumeList:Lcom/android/server/MountService$VolumeList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v8, "MountService"

    .line 1577
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 249
    iput-boolean v5, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 250
    iput-boolean v5, p0, Lcom/android/server/MountService;->mUmsDisabling:Z

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 254
    iput-boolean v5, p0, Lcom/android/server/MountService;->mBooted:Z

    .line 255
    iput-boolean v5, p0, Lcom/android/server/MountService;->mReady:Z

    .line 256
    iput-boolean v5, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 262
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->handler:Landroid/os/Handler;

    .line 264
    new-instance v1, Lcom/android/server/MountService$VolumeList;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$VolumeList;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    .line 274
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 496
    new-instance v1, Lcom/android/server/MountService$1;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 666
    new-instance v1, Lcom/android/server/MountService$2;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 675
    new-instance v1, Lcom/android/server/MountService$3;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;)V

    iput-object v1, p0, Lcom/android/server/MountService;->doSendSorry:Ljava/lang/Runnable;

    .line 1578
    const-string v1, "MountService"

    const-string v1, "MountService :: "

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 1582
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    .line 1584
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1587
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MountService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1590
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MountService"

    invoke-direct {v1, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1591
    iget-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1592
    new-instance v1, Lcom/android/server/MountService$MountServiceHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 1598
    const-string v1, "simulator"

    const-string v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1599
    iput-boolean v7, p0, Lcom/android/server/MountService;->mReady:Z

    .line 1600
    iput-boolean v7, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1612
    :goto_0
    return-void

    .line 1604
    :cond_0
    new-instance v1, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0xa

    const-string v4, "VoldConnector"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1605
    iput-boolean v5, p0, Lcom/android/server/MountService;->mReady:Z

    .line 1606
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-class v2, Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1607
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1610
    sput-boolean v5, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    .line 1611
    sput-boolean v5, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmountedSd:Z

    goto :goto_0
.end method

.method private ApplyCurrentSdCardPolicy(Z)V
    .locals 13
    .parameter "available"

    .prologue
    const/4 v10, 0x1

    const-string v12, "checking"

    const-string v11, "MountService"

    .line 598
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, int_path:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 601
    .local v5, int_state:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, ext_path:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, ext_state:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v0

    .line 605
    .local v0, check:Z
    const-string v8, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ApplyCurrentSdCardPolicy :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", getAllowStorageCard "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    if-eqz v0, :cond_1

    .line 608
    const-string v8, "mounted"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 609
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    const-string v8, "shared"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 619
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 659
    :goto_1
    iget-object v8, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const v9, 0x1040407

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 641
    :cond_2
    const-string v8, "checking"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 642
    const/16 v6, 0x1e

    .line 643
    .local v6, retries:I
    :goto_2
    const-string v8, "checking"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sub-int v7, v6, v10

    .end local v6           #retries:I
    .local v7, retries:I
    if-ltz v6, :cond_5

    .line 645
    const-wide/16 v8, 0x3e8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    move v6, v7

    .end local v7           #retries:I
    .restart local v6       #retries:I
    goto :goto_2

    .line 646
    .end local v6           #retries:I
    .restart local v7       #retries:I
    :catch_0
    move-exception v3

    .line 647
    .local v3, iex:Ljava/lang/InterruptedException;
    const-string v8, "MountService"

    const-string v8, "Interrupted while waiting for media"

    invoke-static {v11, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 652
    .end local v3           #iex:Ljava/lang/InterruptedException;
    .end local v7           #retries:I
    .restart local v6       #retries:I
    :cond_3
    :goto_3
    if-nez v6, :cond_4

    .line 653
    const-string v8, "MountService"

    const-string v8, "Timed out waiting for media to check"

    invoke-static {v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .end local v6           #retries:I
    :cond_4
    invoke-direct {p0, v4, v10}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;Z)I

    goto :goto_1

    .restart local v7       #retries:I
    :cond_5
    move v6, v7

    .end local v7           #retries:I
    .restart local v6       #retries:I
    goto :goto_3
.end method

.method private declared-synchronized GetCurrentPolicy()Z
    .locals 3

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 594
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowStorageCard(Landroid/content/ComponentName;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 593
    .end local v0           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$VolumeList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountService;Ljava/lang/String;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/MountService;->setInitPlayNotificationSounds()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->ApplyCurrentSdCardPolicy(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doGetShareMethodAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/MountService;->mReady:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/MountService;->isVolumeStateShared()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsDisabling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->setUmsDisabling(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->actionReleasedMassStorage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/MountService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)Lcom/android/server/PackageManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MountService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/MountService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBooted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/MountService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method private actionBeforeMassStorage(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    const-string v4, "MountService"

    .line 688
    iget-object v4, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 689
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 690
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    .local v0, bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/MountService$MountCallBackBinderListener;->mCallback:Landroid/os/storage/IMountCallBackListener;

    invoke-interface {v5, p1}, Landroid/os/storage/IMountCallBackListener;->onBeforeActionMassStorage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 689
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 694
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 695
    .local v3, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MountService"

    const-string v6, "actionBeforeConnectedMassStorage : Listener dead"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 701
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v2           #i:I
    .end local v3           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 697
    .restart local v0       #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 698
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "MountService"

    const-string v6, "actionBeforeConnectedMassStorage : Listener failed"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 701
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 702
    return-void
.end method

.method private actionReleasedMassStorage(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    const-string v4, "MountService"

    .line 705
    iget-object v4, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 706
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v2, v5, v6

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 707
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    .local v0, bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/MountService$MountCallBackBinderListener;->mCallback:Landroid/os/storage/IMountCallBackListener;

    invoke-interface {v5, p1}, Landroid/os/storage/IMountCallBackListener;->onReleasedMassStorage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 706
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 711
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 712
    .local v3, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MountService"

    const-string v6, "actionBeforeConnectedMassStorage : Listener dead"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v5, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 718
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v2           #i:I
    .end local v3           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 714
    .restart local v0       #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 715
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "MountService"

    const-string v6, "actionBeforeConnectedMassStorage : Listener failed"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 718
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 719
    return-void
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .locals 9
    .parameter "path"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    const-string v6, "MountService"

    .line 1398
    const-string v3, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFormatVolume :: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1401
    const-string v3, "MountService"

    const-string v3, "doFormatVolume :: restricts in order to policy"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v3, p0, Lcom/android/server/MountService;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/MountService;->doSendSorry:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v3, v7

    .line 1421
    :goto_0
    return v3

    .line 1407
    :cond_0
    :try_start_0
    const-string v3, "volume format %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1408
    .local v0, cmd:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1409
    const-string v3, "MountService"

    const-string v4, "doFormatVolume :: result = OperationSucceeded"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v8

    .line 1410
    goto :goto_0

    .line 1411
    .end local v0           #cmd:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1412
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1413
    .local v1, code:I
    const/16 v3, 0x191

    if-ne v1, v3, :cond_1

    .line 1414
    const-string v3, "MountService"

    const-string v3, "doFormatVolume :: result = OperationFailedNoMedia"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 1415
    goto :goto_0

    .line 1416
    :cond_1
    const/16 v3, 0x193

    if-ne v1, v3, :cond_2

    .line 1417
    const-string v3, "MountService"

    const-string v3, "doFormatVolume :: result = OperationFailedMediaCorrupt"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    const/4 v3, -0x4

    goto :goto_0

    .line 1420
    :cond_2
    const-string v3, "MountService"

    const-string v3, "doFormatVolume :: result = OperationFailedInternalError"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private doGetShareMethodAvailable(Ljava/lang/String;)Z
    .locals 14
    .parameter "method"

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    const-string v13, "doGetShareMethodAvailable :: method = "

    const-string v11, "MountService"

    .line 1223
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "share status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1229
    .local v5, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1230
    .local v3, line:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1231
    .local v6, tok:[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x3

    if-ge v7, v8, :cond_0

    .line 1232
    const-string v7, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed response to share status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1256
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #tok:[Ljava/lang/String;
    :goto_0
    return v7

    .line 1224
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1225
    .local v1, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to determine whether share method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is available."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1226
    goto :goto_0

    .line 1238
    .end local v1           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #tok:[Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1243
    .local v0, code:I
    const/16 v7, 0xd2

    if-ne v0, v7, :cond_2

    .line 1244
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v8, "available"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1245
    const-string v7, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doGetShareMethodAvailable :: method = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", result = true"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v12

    .line 1246
    goto :goto_0

    .line 1239
    .end local v0           #code:I
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 1240
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v7, "MountService"

    const-string v7, "doGetShareMethodAvailable :: Error parsing code %s"

    new-array v8, v12, [Ljava/lang/Object;

    aget-object v9, v6, v10

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1241
    goto :goto_0

    .line 1248
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .restart local v0       #code:I
    :cond_1
    const-string v7, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doGetShareMethodAvailable :: method = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", result = false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1249
    goto/16 :goto_0

    .line 1251
    :cond_2
    const-string v7, "MountService"

    const-string v7, "doGetShareMethodAvailable :: Unexpected response code %d"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1252
    goto/16 :goto_0

    .line 1255
    .end local v0           #code:I
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_3
    const-string v7, "MountService"

    const-string v7, "doGetShareMethodAvailable :: Got an empty response"

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1256
    goto/16 :goto_0
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "path"
    .parameter "method"

    .prologue
    .line 1428
    const-string v8, "volume shared %s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1432
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v8, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1438
    .local v6, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1439
    .local v4, line:Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1440
    .local v7, tok:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x3

    if-ge v8, v9, :cond_0

    .line 1441
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed response to volume shared "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " command"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    const/4 v8, 0x0

    .line 1465
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #tok:[Ljava/lang/String;
    :goto_0
    return v8

    .line 1433
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 1434
    .local v2, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read response to volume shared "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    const/4 v8, 0x0

    goto :goto_0

    .line 1447
    .end local v2           #ex:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #tok:[Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 1452
    .local v1, code:I
    const/16 v8, 0xd4

    if-ne v1, v8, :cond_2

    .line 1453
    const/4 v8, 0x2

    aget-object v8, v7, v8

    const-string v9, "enabled"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1454
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doGetVolumeShared :: path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", result = true"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    const/4 v8, 0x1

    goto :goto_0

    .line 1448
    .end local v1           #code:I
    :catch_1
    move-exception v8

    move-object v5, v8

    .line 1449
    .local v5, nfe:Ljava/lang/NumberFormatException;
    const-string v8, "MountService"

    const-string v9, "doGetVolumeShared :: Error parsing code %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-object v12, v7, v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/4 v8, 0x0

    goto :goto_0

    .line 1457
    .end local v5           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_1
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doGetVolumeShared :: path = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", method = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", result = false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1460
    :cond_2
    const-string v8, "MountService"

    const-string v9, "doGetVolumeShared :: Unexpected response code %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1464
    .end local v1           #code:I
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    :cond_3
    const-string v8, "MountService"

    const-string v9, "doGetVolumeShared :: Got an empty response"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .locals 10
    .parameter "path"

    .prologue
    const-string v9, "file://"

    const-string v8, "MountService"

    .line 1260
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doMountVolume :: Mouting path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1263
    const-string v4, "MountService"

    const-string v4, "doMountVolume :: restricts in order to policy"

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v4, p0, Lcom/android/server/MountService;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/MountService;->doSendSorry:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1265
    const/4 v4, -0x2

    .line 1339
    :goto_0
    return v4

    .line 1269
    :cond_0
    const/4 v3, 0x0

    .line 1273
    .local v3, rc:I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume mount %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move v4, v3

    .line 1339
    goto :goto_0

    .line 1274
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1278
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v2, 0x0

    .line 1279
    .local v2, in:Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 1280
    .local v0, code:I
    const/16 v4, 0x191

    if-ne v0, v4, :cond_2

    .line 1284
    const-string v4, "MountService"

    const-string v4, "doMountVolume :: result = OperationFailedNoMedia"

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v3, -0x2

    .line 1314
    :goto_2
    if-eqz v2, :cond_1

    .line 1315
    iget-object v4, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1286
    :cond_2
    const/16 v4, 0x192

    if-ne v0, v4, :cond_3

    .line 1287
    const-string v4, "MountService"

    const-string v4, " updating volume state :: media nofs"

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const-string v4, "nofs"

    invoke-direct {p0, p1, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    const-string v4, "MountService"

    const-string v4, "Sending intent :: ACTION_MEDIA_NOFS "

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    new-instance v2, Landroid/content/Intent;

    .end local v2           #in:Landroid/content/Intent;
    const-string v4, "android.intent.action.MEDIA_NOFS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1294
    .restart local v2       #in:Landroid/content/Intent;
    const-string v4, "MountService"

    const-string v4, "doMountVolume :: result = OperationFailedMediaBlank"

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const/4 v3, -0x3

    goto :goto_2

    .line 1296
    :cond_3
    const/16 v4, 0x193

    if-ne v0, v4, :cond_4

    .line 1297
    const-string v4, "MountService"

    const-string v4, "updating volume state media corrupt"

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const-string v4, "unmountable"

    invoke-direct {p0, p1, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v4, "MountService"

    const-string v4, "Sending intent :: ACTION_MEDIA_UNMOUNTABLE "

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    new-instance v2, Landroid/content/Intent;

    .end local v2           #in:Landroid/content/Intent;
    const-string v4, "android.intent.action.MEDIA_UNMOUNTABLE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1304
    .restart local v2       #in:Landroid/content/Intent;
    const-string v4, "MountService"

    const-string v4, "doMountVolume :: result = OperationFailedMediaCorrupt"

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/4 v3, -0x4

    goto/16 :goto_2

    .line 1307
    :cond_4
    const-string v4, "MountService"

    const-string v4, "doMountVolume :: result = OperationFailedInternalError"

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const/4 v3, -0x1

    goto/16 :goto_2
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "path"
    .parameter "method"
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const-string v7, "MountService"

    .line 755
    const-string v1, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShareUnshareVolume :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", method = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v1

    if-nez v1, :cond_1

    .line 758
    const-string v1, "MountService"

    const-string v1, "doShareUnshareVolume :: restricts in order to policy"

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v1, p0, Lcom/android/server/MountService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/MountService;->doSendSorry:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    const-string v1, "ums"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 765
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Method %s not supported"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 769
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "volume %sshare %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    const-string v5, ""

    :goto_1
    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_2
    if-eqz p3, :cond_0

    .line 784
    invoke-direct {p0, v6}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    goto :goto_0

    .line 769
    :cond_3
    :try_start_1
    const-string v5, "un"
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 771
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 772
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    const-string v1, "doShareUnshareVolume :: Failed to share/unshare"

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private doUnmountVolume(Ljava/lang/String;Z)I
    .locals 10
    .parameter "path"
    .parameter "force"

    .prologue
    const/16 v9, 0x194

    const/4 v4, 0x1

    const/4 v8, 0x0

    const-string v7, "MountService"

    .line 1352
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doUnmountVolume :: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v9

    .line 1392
    :goto_0
    return v2

    .line 1360
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1361
    sput-boolean v4, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmountedSd:Z

    .line 1367
    :goto_1
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v2, v2, Lcom/android/server/MountService$VolumeList;->targeting_asec_path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1368
    iget-object v2, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    invoke-virtual {v2, v8, v8}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1372
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "volume unmount %s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    if-eqz p2, :cond_3

    const-string v6, " force"

    :goto_2
    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1375
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1377
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1378
    :try_start_2
    const-string v2, "MountService"

    const-string v3, "doUnmountVolume :: result = OperationSucceeded"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v8

    .line 1379
    goto :goto_0

    .line 1363
    :cond_2
    sput-boolean v4, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    goto :goto_1

    .line 1372
    :cond_3
    :try_start_3
    const-string v6, ""
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1377
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1380
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1383
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 1384
    .local v0, code:I
    if-ne v0, v9, :cond_4

    .line 1385
    const-string v2, "MountService"

    const-string v2, "doUnmountVolume :: result = OperationFailedStorageNotMounted"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const/4 v2, -0x5

    goto :goto_0

    .line 1387
    :cond_4
    const/16 v2, 0x195

    if-ne v0, v2, :cond_5

    .line 1388
    const-string v2, "MountService"

    const-string v2, "doUnmountVolume :: result = OperationFailedStorageBusy"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/4 v2, -0x7

    goto :goto_0

    .line 1391
    :cond_5
    const-string v2, "MountService"

    const-string v2, "doUnmountVolume :: result = OperationFailedInternalError"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getUmsDisabling()Z
    .locals 2

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1782
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/MountService;->mUmsDisabling:Z

    monitor-exit v0

    return v1

    .line 1783
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUmsEnabling()Z
    .locals 4

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1796
    :try_start_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUmsEnabling :: mUmsEnabling = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget-boolean v1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v0

    return v1

    .line 1798
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isVolumeStateShared()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1059
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 1071
    :goto_0
    return v1

    .line 1063
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, int_path:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    .line 1071
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyShareAvailabilityChange(Ljava/lang/String;Z)V
    .locals 8
    .parameter "method"
    .parameter "avail"

    .prologue
    const/4 v7, 0x1

    const-string v6, "MountService"

    .line 1469
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyShareAvailabilityChange :: method = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", avail = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const-string v4, "ums"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1471
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring unsupported share method {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1476
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v2, v5, v7

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 1477
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1479
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v5, p2}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1476
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1480
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1481
    .local v3, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MountService"

    const-string v6, "Listener dead"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1487
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v3           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1483
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 1484
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v5, "MountService"

    const-string v6, "Listener failed"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1487
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1489
    iget-boolean v4, p0, Lcom/android/server/MountService;->mBooted:Z

    if-ne v4, v7, :cond_3

    .line 1490
    invoke-direct {p0, p2}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 1496
    :goto_3
    if-nez p2, :cond_0

    .line 1497
    new-instance v4, Lcom/android/server/MountService$7;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$7;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v4}, Lcom/android/server/MountService$7;->start()V

    goto :goto_0

    .line 1492
    :cond_3
    iput-boolean p2, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_3
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 1104
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1105
    .local v5, vs:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1106
    .local v2, int_path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, ext_path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryOtg()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1110
    .local v3, otg_path:Ljava/lang/String;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyVolumeStateChange :: label = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", oldState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p3}, Lcom/android/server/MountService;->printDebug(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p4}, Lcom/android/server/MountService;->printDebug(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string v4, "notifyVolumeStateChange :: Before -> "

    .line 1117
    .local v4, szLog:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "External ::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1124
    const-string v6, "MountService"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v6, 0x2

    if-ne p4, v6, :cond_3

    .line 1128
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    const/4 v7, 0x1

    invoke-virtual {v6, p2, v7}, Lcom/android/server/MountService$VolumeList;->updatePending(Ljava/lang/String;Z)V

    .line 1134
    :goto_0
    const/4 v1, 0x0

    .line 1135
    .local v1, in:Landroid/content/Intent;
    const/4 v6, 0x7

    if-ne p3, v6, :cond_0

    if-eq p4, p3, :cond_0

    .line 1136
    const-string v6, "MountService"

    const-string v7, "Sending intent :: ACTION_MEDIA_UNSHARED "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MEDIA_UNSHARED"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1140
    :cond_0
    const/4 v6, -0x1

    if-ne p4, v6, :cond_4

    .line 1198
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1199
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1204
    :cond_2
    const-string v4, "notifyVolumeStateChange :: After -> "

    .line 1208
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "External ::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1214
    const-string v6, "MountService"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :goto_2
    return-void

    .line 1130
    .end local v1           #in:Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Lcom/android/server/MountService$VolumeList;->updatePending(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1141
    .restart local v1       #in:Landroid/content/Intent;
    :cond_4
    if-eqz p4, :cond_1

    .line 1143
    const/4 v6, 0x1

    if-ne p4, v6, :cond_5

    .line 1148
    const-string v6, "bad_removal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "nofs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "unmountable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1153
    const-string v6, "MountService"

    const-string v7, "updating volume state for media bad removal nofs and unmountable"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const-string v6, "unmounted"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string v6, "MountService"

    const-string v7, "Sending intent :: ACTION_MEDIA_UNMOUNTED "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #in:Landroid/content/Intent;
    goto/16 :goto_1

    .line 1158
    :cond_5
    const/4 v6, 0x2

    if-eq p4, v6, :cond_1

    .line 1161
    const/4 v6, 0x3

    if-ne p4, v6, :cond_6

    .line 1162
    const-string v6, "MountService"

    const-string v7, "updating volume state checking"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const-string v6, "checking"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    const-string v6, "MountService"

    const-string v7, "Sending intent :: ACTION_MEDIA_CHECKING"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v6, "android.intent.action.MEDIA_CHECKING"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #in:Landroid/content/Intent;
    goto/16 :goto_1

    .line 1166
    :cond_6
    const/4 v6, 0x4

    if-ne p4, v6, :cond_7

    .line 1167
    const-string v6, "MountService"

    const-string v7, "updating volume state mounted"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string v6, "mounted"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1170
    .restart local v1       #in:Landroid/content/Intent;
    const-string v6, "read-only"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1171
    const-string v6, "MountService"

    const-string v7, "Sending intent :: ACTION_MEDIA_MOUNTED"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1172
    :cond_7
    const/4 v6, 0x5

    if-ne p4, v6, :cond_8

    .line 1173
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v6, "android.intent.action.MEDIA_EJECT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1174
    .restart local v1       #in:Landroid/content/Intent;
    const-string v6, "MountService"

    const-string v7, "Sending intent :: ACTION_MEDIA_EJECT"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1175
    :cond_8
    const/4 v6, 0x6

    if-eq p4, v6, :cond_1

    .line 1176
    const/4 v6, 0x7

    if-ne p4, v6, :cond_9

    .line 1179
    const-string v6, "MountService"

    const-string v7, "Updating volume state media mounted"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const-string v6, "unmounted"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1183
    .restart local v1       #in:Landroid/content/Intent;
    const-string v6, "MountService"

    const-string v7, "Sending intent :: ACTION_MEDIA_UNMOUNTED"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v6, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1186
    const-string v6, "MountService"

    const-string v7, "Updating media shared"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const-string v6, "shared"

    invoke-direct {p0, p2, v6}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    new-instance v1, Landroid/content/Intent;

    .end local v1           #in:Landroid/content/Intent;
    const-string v6, "android.intent.action.MEDIA_SHARED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1189
    .restart local v1       #in:Landroid/content/Intent;
    const-string v6, "MountService"

    const-string v7, "Sending intent :: ACTION_MEDIA_SHARED"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1191
    :cond_9
    const/16 v6, 0x8

    if-ne p4, v6, :cond_a

    .line 1192
    const-string v6, "MountService"

    const-string v7, "Live shared mounts not supported yet!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1195
    :cond_a
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled VolumeState {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private printDebug(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 1076
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1077
    const-string v0, "init"

    .line 1100
    .local v0, ret:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1078
    .end local v0           #ret:Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 1079
    const-string v0, "NoMedia"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1080
    .end local v0           #ret:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1081
    const-string v0, "Idle"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1082
    .end local v0           #ret:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1083
    const-string v0, "Pending"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1084
    .end local v0           #ret:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 1085
    const-string v0, "Checking"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1086
    .end local v0           #ret:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 1087
    const-string v0, "Mounted"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1088
    .end local v0           #ret:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 1089
    const-string v0, "Unmounting"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1090
    .end local v0           #ret:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x6

    if-ne p1, v1, :cond_7

    .line 1091
    const-string v0, "Formatting"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1092
    .end local v0           #ret:Ljava/lang/String;
    :cond_7
    const/4 v1, 0x7

    if-ne p1, v1, :cond_8

    .line 1093
    const-string v0, "Shared"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1094
    .end local v0           #ret:Ljava/lang/String;
    :cond_8
    const/16 v1, 0x8

    if-ne p1, v1, :cond_9

    .line 1095
    const-string v0, "SharedMnt"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0

    .line 1097
    .end local v0           #ret:Ljava/lang/String;
    :cond_9
    const-string v0, "unknown"

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method private sendUmsIntent(Z)V
    .locals 3
    .parameter "c"

    .prologue
    const-string v1, "MountService"

    .line 1554
    if-eqz p1, :cond_0

    .line 1555
    const-string v0, "MountService"

    const-string v0, "Sending intent :: ACTION_UMS_CONNECTED "

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :goto_0
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v2, "android.intent.action.UMS_CONNECTED"

    :goto_1
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1563
    return-void

    .line 1557
    :cond_0
    const-string v0, "MountService"

    const-string v0, "Sending intent :: ACTION_UMS_DISCONNECTED "

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1561
    :cond_1
    const-string v2, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_1
.end method

.method private setInitPlayNotificationSounds()V
    .locals 3

    .prologue
    const-string v2, "1"

    .line 2123
    const-string v0, "persist.service.mount.playsnd"

    const-string v1, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mNotificationPlaySound:Z

    .line 2124
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitPlayNotificationSounds :: get default value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/MountService;->mNotificationPlaySound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    return-void
.end method

.method private setUmsDisabling(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1787
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUmsDisabling :: ++ disable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1789
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsDisabling:Z

    .line 1790
    monitor-exit v0

    .line 1792
    return-void

    .line 1790
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setUmsEnabling(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 1803
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUmsEnabling :: ++ enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1806
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1807
    monitor-exit v0

    .line 1809
    return-void

    .line 1807
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "path"
    .parameter "state"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v9, "MountService"

    .line 790
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePublicVolumeState :: path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v6, p1}, Lcom/android/server/MountService$VolumeList;->isVaildVolumePath(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 794
    const-string v6, "MountService"

    const-string v6, "updatePublicVolumeState -> wrong Path.."

    invoke-static {v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :goto_0
    return-void

    .line 798
    :cond_0
    const/4 v3, 0x0

    .line 800
    .local v3, legacyState:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 801
    const-string v6, "MountService"

    const-string v6, "Duplicate state transition (%s -> %s) and path is %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    aput-object p2, v7, v10

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 807
    :cond_1
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v6, v6, Lcom/android/server/MountService$VolumeList;->targeting_asec_path:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 808
    const-string v6, "unmounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 809
    const-string v6, "MountService"

    const-string v6, "mPms.updateExternalMediaStatus(false, false)"

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    invoke-virtual {v6, v8, v8}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 817
    :cond_2
    :goto_1
    move-object v4, v3

    .line 818
    .local v4, oldState:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/MountService$VolumeList;->updateVolumeState(Ljava/lang/String;Ljava/lang/String;)Z

    .line 820
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 821
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v2, v7, v10

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_4

    .line 822
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    iget-object v7, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v7, p1, v4, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 821
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 811
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #oldState:Ljava/lang/String;
    :cond_3
    const-string v6, "mounted"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 812
    const-string v6, "MountService"

    const-string v6, "mPms.updateExternalMediaStatus(ture, false)"

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v6, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/PackageManagerService;

    invoke-virtual {v6, v10, v8}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_1

    .line 825
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    .restart local v4       #oldState:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 826
    .local v5, rex:Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "MountService"

    const-string v8, "Listener dead"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v7, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 832
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v5           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 828
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 829
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v7, "MountService"

    const-string v8, "Listener failed"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 832
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .parameter "perm"

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1568
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1570
    :cond_0
    return-void
.end method

.method private waitForReady()V
    .locals 3

    .prologue
    .line 485
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/MountService;->mReady:Z

    if-nez v1, :cond_0

    .line 486
    const/4 v0, 0x5

    .local v0, retries:I
    :goto_1
    if-lez v0, :cond_2

    .line 487
    iget-boolean v1, p0, Lcom/android/server/MountService;->mReady:Z

    if-eqz v1, :cond_1

    .line 494
    .end local v0           #retries:I
    :cond_0
    return-void

    .line 490
    .restart local v0       #retries:I
    :cond_1
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 486
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 492
    :cond_2
    const-string v1, "MountService"

    const-string v2, "waitForReady :: Waiting too long for mReady!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private warnOnNotMounted()V
    .locals 3

    .prologue
    .line 2115
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    iget-object v1, v1, Lcom/android/server/MountService$VolumeList;->targeting_asec_path:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2117
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2118
    const-string v1, "MountService"

    const-string v2, "warnOnNotMounted :: called when storage not mounted"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_0
    return-void
.end method


# virtual methods
.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .parameter "id"
    .parameter "sizeMb"
    .parameter "fstype"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2175
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: createSecureContainer :: id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sizeMb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fstype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ownerUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const-string v3, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2177
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2178
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2180
    const/4 v2, 0x0

    .line 2181
    .local v2, rc:I
    const-string v3, "asec create %s %d %s %s %d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2183
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2188
    :goto_0
    if-nez v2, :cond_0

    .line 2189
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2190
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2191
    monitor-exit v3

    .line 2193
    :cond_0
    return v2

    .line 2184
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2185
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v2, -0x1

    goto :goto_0

    .line 2191
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .parameter "id"
    .parameter "force"

    .prologue
    .line 2215
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: destroySecureContainer :: id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    const-string v3, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2217
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2218
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2220
    const/4 v2, 0x0

    .line 2222
    .local v2, rc:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec destroy %s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    if-eqz p2, :cond_2

    const-string v7, " force"

    :goto_0
    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2232
    :goto_1
    if-nez v2, :cond_1

    .line 2233
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2234
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2235
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2237
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2240
    :cond_1
    return v2

    .line 2222
    :cond_2
    :try_start_2
    const-string v7, ""
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2223
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2224
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2225
    .local v0, code:I
    const/16 v3, 0x195

    if-ne v0, v3, :cond_3

    .line 2226
    const/4 v2, -0x7

    goto :goto_1

    .line 2228
    :cond_3
    const/4 v2, -0x1

    goto :goto_1

    .line 2237
    .end local v0           #code:I
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .locals 6
    .parameter "id"

    .prologue
    .line 2197
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: finalizeSecureContainer :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2199
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2201
    const/4 v1, 0x0

    .line 2203
    .local v1, rc:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec finalize %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2211
    :goto_0
    return v1

    .line 2208
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2209
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public finishMediaUpdate()V
    .locals 2

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2456
    return-void
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 2076
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: formatVolume :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2078
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2080
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAsecVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "path"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v13, "mounted"

    const-string v12, "removed"

    const-string v11, "MountService"

    .line 2283
    const-string v7, "volume aseced %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p1, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2284
    .local v0, cmd:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2286
    .local v5, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2287
    .local v3, line:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2290
    .local v6, tok:[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2295
    .local v1, code:I
    const/16 v7, 0xd6

    if-ne v1, v7, :cond_1

    .line 2296
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v8, "mounted"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2297
    const-string v7, "MountService"

    const-string v7, "getAsecVolumeState :: result = mounted"

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    const-string v7, "mounted"

    move-object v7, v13

    .line 2308
    .end local v1           #code:I
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :goto_0
    return-object v7

    .line 2291
    .restart local v3       #line:Ljava/lang/String;
    .restart local v6       #tok:[Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 2292
    .local v4, nfe:Ljava/lang/NumberFormatException;
    const-string v7, "MountService"

    const-string v7, "getAsecVolumeState :: Error parsing code %s"

    new-array v8, v9, [Ljava/lang/Object;

    aget-object v9, v6, v10

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    const-string v7, "removed"

    move-object v7, v12

    goto :goto_0

    .line 2300
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .restart local v1       #code:I
    :cond_0
    const-string v7, "MountService"

    const-string v7, "getAsecVolumeState :: result = unmounted"

    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const-string v7, "removed"

    move-object v7, v12

    goto :goto_0

    .line 2303
    :cond_1
    const-string v7, "MountService"

    const-string v7, "getAsecVolumeState :: Unexpected response code %d"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    const-string v7, "removed"

    move-object v7, v12

    goto :goto_0

    .line 2307
    .end local v1           #code:I
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_2
    const-string v7, "MountService"

    const-string v7, "getAsecVolumeState :: Got an empty response"

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    const-string v7, "removed"

    move-object v7, v12

    goto :goto_0
.end method

.method public getDeviceDriverPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "path"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v12, "getDevicePath :: Unexpected response code %d"

    const-string v7, "MountService"

    .line 2244
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v5, p1}, Lcom/android/server/MountService$VolumeList;->getDevicePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2245
    .local v1, devpath:Ljava/lang/String;
    const-string v5, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :::: getDevicePath :: path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", devpath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    if-nez v1, :cond_2

    .line 2251
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "volume devpath %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2252
    .local v3, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2253
    .local v4, tok:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2254
    .local v0, code:I
    const/16 v5, 0xd7

    if-eq v0, v5, :cond_0

    .line 2255
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "getDevicePath :: Unexpected response code %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2266
    .end local v0           #code:I
    .end local v3           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 2267
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2268
    .restart local v0       #code:I
    const/16 v5, 0x196

    if-ne v0, v5, :cond_3

    .line 2269
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "getDevicePath :: can\'t get path \'%s\'"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2258
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v3       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #tok:[Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v4, v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2259
    const-string v5, "MountService"

    const-string v6, "getDevicePath :: vold can not get path or before mount"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2277
    .end local v0           #code:I
    .end local v3           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #tok:[Ljava/lang/String;
    :goto_0
    return-object v5

    .line 2262
    .restart local v0       #code:I
    .restart local v3       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #tok:[Ljava/lang/String;
    :cond_1
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDevicePath :: string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/android/server/MountService$VolumeList;->updateDevicePath(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2264
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v5, p1}, Lcom/android/server/MountService$VolumeList;->getDevicePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .end local v0           #code:I
    .end local v3           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #tok:[Ljava/lang/String;
    :cond_2
    move-object v5, v1

    .line 2277
    goto :goto_0

    .line 2271
    .restart local v0       #code:I
    .restart local v2       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "getDevicePath :: Unexpected response code %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v12, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getPlayNotificationSounds()Z
    .locals 1

    .prologue
    .line 2130
    iget-boolean v0, p0, Lcom/android/server/MountService;->mNotificationPlaySound:Z

    return v0
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .locals 9

    .prologue
    const-string v8, "MountService"

    .line 2145
    const-string v5, "MountService"

    const-string v5, " :::: getSecureContainerList :: "

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    const-string v5, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v5}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2147
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2148
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2151
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2152
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v6}, Lcom/android/server/MountService$VolumeList;->isASECMounted()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2153
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSecureContainerList -> HashSet is not empty !!! ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 2155
    .local v4, rdata:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2156
    .local v1, i:I
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iter:Ljava/util/Iterator;
    move v2, v1

    .line 2157
    .end local v1           #i:I
    .end local p0
    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2158
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v4, v2

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 2160
    :cond_0
    monitor-exit v5

    move-object v5, v4

    .line 2169
    .end local v2           #i:I
    .end local v3           #iter:Ljava/util/Iterator;
    .end local v4           #rdata:[Ljava/lang/String;
    :goto_1
    return-object v5

    .line 2162
    .restart local p0
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2166
    :try_start_1
    iget-object v5, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "asec list"

    const/16 v7, 0x6f

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 2162
    .end local p0
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 2167
    .restart local p0
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 2168
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v5, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSecureContainerList :: NativeDaemonConnectorException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    goto :goto_1
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "Unexpected response code %d"

    const-string v6, "MountService"

    .line 2422
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: getSecureContainerPath :: id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    const-string v4, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2424
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2425
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2428
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v4}, Lcom/android/server/MountService$VolumeList;->isASECMounted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2429
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2430
    const-string v4, "MountService"

    const-string v4, "getSecureContainerPath -> not mounted, just return HashSet data"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v5}, Lcom/android/server/MountService$VolumeList;->getASECMountPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2442
    .end local p0
    :goto_0
    return-object v4

    .line 2436
    .restart local p0
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "asec path %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2437
    .local v2, rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2438
    .local v3, tok:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2439
    .local v0, code:I
    const/16 v4, 0xd3

    if-eq v0, v4, :cond_1

    .line 2440
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2443
    .end local v0           #code:I
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2444
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2445
    .restart local v0       #code:I
    const/16 v4, 0x196

    if-ne v0, v4, :cond_2

    .line 2446
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Container \'%s\' not found"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2442
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2       #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #tok:[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, v3, v4
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2448
    .end local v2           #rsp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #tok:[Ljava/lang/String;
    .restart local v1       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getShowSafeUnmountNotification(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 1935
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShowSafeUnmountNotification :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowSafeUnmountNotificationWhenUnmountedSd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmountedSd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowSafeUnmountNotificationWhenUnmounted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1939
    sget-boolean v0, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmountedSd:Z

    .line 1941
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    goto :goto_0
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 14
    .parameter "path"

    .prologue
    const/4 v12, 0x0

    const-string v13, "MountService"

    .line 2085
    const-string v7, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v7}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2086
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2088
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "storage users %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x70

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 2092
    .local v5, r:[Ljava/lang/String;
    array-length v7, v5

    new-array v1, v7, [I

    .line 2093
    .local v1, data:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_0

    .line 2094
    aget-object v7, v5, v3

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 2097
    .local v6, tok:[Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2093
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2098
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 2099
    .local v4, nfe:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v7, "MountService"

    const-string v8, "getStorageUsers :: Error parsing pid %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v6, v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    const/4 v7, 0x0

    new-array v7, v7, [I

    .line 2109
    .end local v1           #data:[I
    .end local v3           #i:I
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    .end local v5           #r:[Ljava/lang/String;
    .end local v6           #tok:[Ljava/lang/String;
    :goto_1
    return-object v7

    .line 2101
    .restart local v1       #data:[I
    .restart local v3       #i:I
    .restart local v5       #r:[Ljava/lang/String;
    .restart local v6       #tok:[Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 2102
    .local v0, are:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v7, "MountService"

    const-string v8, "getStorageUsers :: out of bounds"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    const/4 v7, 0x0

    new-array v7, v7, [I
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .end local v0           #are:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v6           #tok:[Ljava/lang/String;
    :cond_0
    move-object v7, v1

    .line 2106
    goto :goto_1

    .line 2107
    .end local v1           #data:[I
    .end local v3           #i:I
    .end local v5           #r:[Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 2108
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    const-string v7, "getStorageUsers :: Failed to retrieve storage users list"

    invoke-static {v13, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2109
    new-array v7, v12, [I

    goto :goto_1
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mountPoint"

    .prologue
    .line 1958
    const-string v0, "removed"

    .line 1960
    .local v0, state:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v1, p1}, Lcom/android/server/MountService$VolumeList;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1961
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVolumeState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): Unknown volume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1965
    :cond_0
    return-object v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 2384
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: isSecureContainerMounted :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    const-string v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2386
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2387
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2389
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 2390
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2391
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUsbMassStorageConnected()Z
    .locals 2

    .prologue
    const-string v1, "MountService"

    .line 1812
    const-string v0, "MountService"

    const-string v0, "isUsbMassStorageConnected :: "

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1815
    invoke-direct {p0}, Lcom/android/server/MountService;->GetCurrentPolicy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1816
    const-string v0, "MountService"

    const-string v0, "isUsbMassStorageConnected :: restricts in order to policy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const/4 v0, 0x0

    .line 1820
    :goto_0
    return v0

    :cond_0
    const-string v0, "ums"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->doGetShareMethodAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1915
    const-string v1, "MountService"

    const-string v2, "isUsbMassStorageEnabled :: "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1917
    const/4 v0, 0x0

    .line 1919
    .local v0, bRet:Z
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 1931
    :goto_0
    return v1

    .line 1924
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ums"

    invoke-direct {p0, v1, v2}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1925
    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_0

    .line 1931
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "id"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 2313
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " :::: mountSecureContainer :: id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ownerUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2315
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2316
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2318
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2319
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2320
    const/4 v5, -0x6

    monitor-exit v4

    move v4, v5

    .line 2340
    :goto_0
    return v4

    .line 2322
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2324
    const/4 v3, 0x0

    .line 2325
    .local v3, rc:I
    const-string v4, "asec mount %s %s %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2327
    .local v0, cmd:Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2335
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 2336
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2337
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2338
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move v4, v3

    .line 2340
    goto :goto_0

    .line 2322
    .end local v0           #cmd:Ljava/lang/String;
    .end local v3           #rc:I
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 2328
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v3       #rc:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 2329
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2330
    .local v1, code:I
    const/16 v4, 0x195

    if-eq v1, v4, :cond_1

    .line 2331
    const/4 v3, -0x1

    goto :goto_1

    .line 2338
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 1969
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " :::: mountVolume :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1971
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2019
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 840
    const-string v0, "MountService"

    const-string v1, "onDaemonConnected ::"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v0, Lcom/android/server/MountService$4;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$4;->start()V

    .line 906
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 24
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 912
    const/4 v12, 0x0

    .line 915
    .local v12, in:Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 916
    .local v7, builder:Ljava/lang/StringBuilder;
    const-string v19, "onEvent :: "

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "raw = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    if-eqz p3, :cond_0

    .line 919
    const-string v19, ", cooked ="

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    move-object/from16 v5, p3

    .local v5, arr$:[Ljava/lang/String;
    array-length v14, v5

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v14, :cond_0

    aget-object v18, v5, v11

    .line 921
    .local v18, str:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 924
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v14           #len$:I
    .end local v18           #str:Ljava/lang/String;
    :cond_0
    const-string v19, "MountService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", code = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/16 v19, 0x25d

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 932
    const/16 v19, 0x2

    aget-object v19, p3, v19

    const/16 v20, 0x3

    aget-object v20, p3, v20

    const/16 v21, 0x7

    aget-object v21, p3, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0xa

    aget-object v22, p3, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1050
    :goto_1
    if-eqz v12, :cond_1

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1053
    :cond_1
    const/16 v19, 0x1

    :goto_2
    return v19

    .line 935
    :cond_2
    const/16 v19, 0x26c

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 937
    const/4 v6, 0x0

    .line 938
    .local v6, avail:Z
    const/16 v19, 0x5

    aget-object v19, p3, v19

    const-string v20, "available"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 939
    const/4 v6, 0x1

    .line 941
    :cond_3
    const/16 v19, 0x3

    aget-object v19, p3, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V

    goto :goto_1

    .line 942
    .end local v6           #avail:Z
    :cond_4
    const/16 v19, 0x276

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v19, 0x277

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v19, 0x278

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 948
    :cond_5
    const/16 v19, 0x2

    aget-object v13, p3, v19

    .line 949
    .local v13, label:Ljava/lang/String;
    const/16 v19, 0x3

    aget-object v17, p3, v19

    .line 950
    .local v17, path:Ljava/lang/String;
    const/4 v15, -0x1

    .line 951
    .local v15, major:I
    const/16 v16, -0x1

    .line 954
    .local v16, minor:I
    const/16 v19, 0x6

    :try_start_0
    aget-object v19, p3, v19

    const/16 v20, 0x1

    const/16 v21, 0x6

    aget-object v21, p3, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    sub-int v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 955
    .local v8, devComp:Ljava/lang/String;
    const-string v19, ":"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 956
    .local v9, devTok:[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v9, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 957
    const/16 v19, 0x1

    aget-object v19, v9, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 962
    .end local v8           #devComp:Ljava/lang/String;
    .end local v9           #devTok:[Ljava/lang/String;
    :goto_3
    const/16 v19, 0x276

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 963
    new-instance v19, Lcom/android/server/MountService$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/MountService$5;->start()V

    goto/16 :goto_1

    .line 958
    :catch_0
    move-exception v19

    move-object/from16 v10, v19

    .line 959
    .local v10, ex:Ljava/lang/Exception;
    const-string v19, "MountService"

    const-string v20, "Failed to parse major/minor"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 995
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_6
    const/16 v19, 0x277

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 998
    new-instance v19, Lcom/android/server/MountService$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService$6;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/MountService$6;->start()V

    .line 1017
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "bad_removal"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1018
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 1021
    :cond_7
    const-string v19, "MountService"

    const-string v20, "Sending unmounted event first"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const-string v19, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    new-instance v12, Landroid/content/Intent;

    .end local v12           #in:Landroid/content/Intent;
    const-string v19, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "file://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1024
    .restart local v12       #in:Landroid/content/Intent;
    const-string v19, "MountService"

    const-string v20, "Sending intent :: ACTION_MEDIA_UNMOUNTED "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1027
    const-string v19, "MountService"

    const-string v20, "Sending media removed"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const-string v19, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v19, "MountService"

    const-string v20, "Sending intent :: ACTION_MEDIA_REMOVED "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    new-instance v12, Landroid/content/Intent;

    .end local v12           #in:Landroid/content/Intent;
    const-string v19, "android.intent.action.MEDIA_REMOVED"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "file://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v12       #in:Landroid/content/Intent;
    goto/16 :goto_1

    .line 1031
    :cond_8
    const/16 v19, 0x278

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1032
    const-string v19, "MountService"

    const-string v20, "Sending unmounted event first"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const-string v19, "unmounted"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    new-instance v12, Landroid/content/Intent;

    .end local v12           #in:Landroid/content/Intent;
    const-string v19, "android.intent.action.MEDIA_UNMOUNTED"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "file://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1036
    .restart local v12       #in:Landroid/content/Intent;
    const-string v19, "MountService"

    const-string v20, "Sending intent :: ACTION_MEDIA_UNMOUNTED "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1039
    const-string v19, "MountService"

    const-string v20, "Sending media bad removal"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const-string v19, "bad_removal"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    new-instance v12, Landroid/content/Intent;

    .end local v12           #in:Landroid/content/Intent;
    const-string v19, "android.intent.action.MEDIA_BAD_REMOVAL"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "file://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1042
    .restart local v12       #in:Landroid/content/Intent;
    const-string v19, "MountService"

    const-string v20, "Sending intent :: ACTION_MEDIA_BAD_REMOVAL "

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1044
    :cond_9
    const-string v19, "MountService"

    const-string v20, "Unknown code {%d}"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1047
    .end local v13           #label:Ljava/lang/String;
    .end local v15           #major:I
    .end local v16           #minor:I
    .end local v17           #path:Ljava/lang/String;
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_2
.end method

.method public registerCallBackListener(Landroid/os/storage/IMountCallBackListener;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 1616
    iget-object v2, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1617
    :try_start_0
    new-instance v0, Lcom/android/server/MountService$MountCallBackBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountCallBackBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountCallBackListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    .local v0, bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IMountCallBackListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1620
    iget-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1624
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1625
    return-void

    .line 1621
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1622
    .local v1, rex:Landroid/os/RemoteException;
    const-string v3, "MountService"

    const-string v4, "registerCallBackListener : Failed to link to listener death"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1624
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1643
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1644
    :try_start_0
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_1
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1647
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1651
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1652
    return-void

    .line 1648
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1649
    .local v1, rex:Landroid/os/RemoteException;
    const-string v3, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1651
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "oldId"
    .parameter "newId"

    .prologue
    .line 2395
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: renameSecureContainer :: oldId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    const-string v3, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2397
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2398
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2400
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2405
    :try_start_0
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2406
    :cond_0
    const/4 v4, -0x6

    monitor-exit v3

    move v3, v4

    .line 2418
    :goto_0
    return v3

    .line 2408
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2410
    const/4 v2, 0x0

    .line 2411
    .local v2, rc:I
    const-string v3, "asec rename %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2413
    .local v0, cmd:Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v3, v2

    .line 2418
    goto :goto_0

    .line 2408
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #rc:I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2414
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #rc:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2415
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setPlayNotificationSounds(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires WRITE_SETTINGS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2140
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/MountService;->mNotificationPlaySound:Z

    .line 2141
    const-string v0, "persist.service.mount.playsnd"

    if-eqz p1, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    return-void

    .line 2141
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method public setShowSafeUnmountNotification(Ljava/lang/String;Z)V
    .locals 3
    .parameter "path"
    .parameter "set"

    .prologue
    .line 1946
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowSafeUnmountNotification :: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1948
    sput-boolean p2, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmountedSd:Z

    .line 1952
    :goto_0
    return-void

    .line 1950
    :cond_0
    sput-boolean p2, Lcom/android/server/MountService;->mShowSafeUnmountNotificationWhenUnmounted:Z

    goto :goto_0
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v7, 0x1

    const-string v6, "MountService"

    .line 1824
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ::: setUsbMassStorageEnabled :: enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1826
    const-string v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1828
    invoke-direct {p0}, Lcom/android/server/MountService;->isVolumeStateShared()Z

    move-result v4

    if-ne v4, p1, :cond_1

    .line 1829
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate state change ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/MountService;->isVolumeStateShared()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    :cond_0
    :goto_0
    return-void

    .line 1839
    :cond_1
    const-string v2, "ums"

    .line 1840
    .local v2, method:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1841
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 1853
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1854
    .local v0, inter_path:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1856
    .local v1, inter_vs:Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1857
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->actionBeforeMassStorage(Ljava/lang/String;)V

    .line 1858
    new-instance v3, Lcom/android/server/MountService$UmsEnableCallBack;

    invoke-direct {v3, p0, v0, v2, v7}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1859
    .local v3, umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    iget-object v4, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1866
    .end local v0           #inter_path:Ljava/lang/String;
    .end local v1           #inter_vs:Ljava/lang/String;
    .end local v3           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_2
    if-nez p1, :cond_0

    .line 1867
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsDisabling()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1868
    const-string v4, "MountService"

    const-string v4, "setUsbMassStorageEnabled -> skip (disabling ums mode by other process)"

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1871
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/server/MountService;->setUmsDisabling(Z)V

    .line 1872
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1874
    .restart local v0       #inter_path:Ljava/lang/String;
    invoke-direct {p0, v0, v2, p1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1876
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->actionReleasedMassStorage(Ljava/lang/String;)V

    .line 1878
    invoke-direct {p0, v0}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 1879
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after disabling share method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_4
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->setUmsDisabling(Z)V

    goto :goto_0
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .locals 11
    .parameter "observer"

    .prologue
    const/4 v9, 0x1

    const-string v10, "checking"

    const-string v8, "MountService"

    .line 1666
    const-string v6, "MountService"

    const-string v6, "shutdown :: "

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const-string v6, "android.permission.SHUTDOWN"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1675
    invoke-direct {p0}, Lcom/android/server/MountService;->isVolumeStateShared()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1683
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 1778
    :goto_0
    return-void

    .line 1741
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1742
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1751
    .local v4, state:Ljava/lang/String;
    const-string v6, "checking"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1752
    const-string v6, "MountService"

    const-string v6, "shutdown :: internal -> MEDIA_CHECKING status"

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const/16 v2, 0x1e

    .line 1755
    .local v2, retries:I
    :goto_1
    const-string v6, "checking"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sub-int v3, v2, v9

    .end local v2           #retries:I
    .local v3, retries:I
    if-ltz v2, :cond_3

    .line 1757
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    invoke-virtual {p0, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v2, v3

    .end local v3           #retries:I
    .restart local v2       #retries:I
    goto :goto_1

    .line 1758
    .end local v2           #retries:I
    .restart local v3       #retries:I
    :catch_0
    move-exception v0

    .line 1759
    .local v0, iex:Ljava/lang/InterruptedException;
    const-string v6, "MountService"

    const-string v6, "shutdown :: internal -> Interrupted while waiting for media"

    invoke-static {v8, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 1764
    .end local v0           #iex:Ljava/lang/InterruptedException;
    .end local v3           #retries:I
    .restart local v2       #retries:I
    :cond_1
    :goto_2
    if-nez v2, :cond_2

    .line 1765
    const-string v6, "MountService"

    const-string v6, "shutdown :: internal -> Timed out waiting for media to check"

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    .end local v2           #retries:I
    :cond_2
    new-instance v5, Lcom/android/server/MountService$ShutdownCallBack;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .line 1770
    .local v5, ucb:Lcom/android/server/MountService$ShutdownCallBack;
    iget-object v6, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v5           #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    .restart local v3       #retries:I
    :cond_3
    move v2, v3

    .end local v3           #retries:I
    .restart local v2       #retries:I
    goto :goto_2
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 8
    .parameter "id"
    .parameter "force"

    .prologue
    const/4 v7, 0x0

    const-string v6, "MountService"

    .line 2344
    const-string v4, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: unmountSecureContainer :: id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2346
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2347
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()V

    .line 2349
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2350
    :try_start_0
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2351
    const/4 v5, -0x5

    monitor-exit v4

    move v4, v5

    .line 2380
    :goto_0
    return v4

    .line 2355
    :cond_0
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeList:Lcom/android/server/MountService$VolumeList;

    invoke-virtual {v5}, Lcom/android/server/MountService$VolumeList;->isASECMounted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2356
    const-string v5, "MountService"

    const-string v6, "unmountSecureContainer -> not mounted, after remove hadset, just return true"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2358
    monitor-exit v4

    move v4, v7

    goto :goto_0

    .line 2360
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2362
    const/4 v3, 0x0

    .line 2363
    .local v3, rc:I
    const-string v4, "asec unmount %s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    const/4 v6, 0x1

    if-eqz p2, :cond_3

    const-string v7, " force"

    :goto_1
    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2365
    .local v0, cmd:Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2375
    :goto_2
    if-nez v3, :cond_2

    .line 2376
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2377
    :try_start_2
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2378
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move v4, v3

    .line 2380
    goto :goto_0

    .line 2360
    .end local v0           #cmd:Ljava/lang/String;
    .end local v3           #rc:I
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 2363
    .restart local v3       #rc:I
    :cond_3
    const-string v7, ""

    goto :goto_1

    .line 2366
    .restart local v0       #cmd:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 2367
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2368
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_4

    .line 2369
    const/4 v3, -0x7

    goto :goto_2

    .line 2371
    :cond_4
    const/4 v3, -0x1

    goto :goto_2

    .line 2378
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public unmountVolume(Ljava/lang/String;Z)V
    .locals 6
    .parameter "path"
    .parameter "force"

    .prologue
    const-string v5, "MountService"

    const-string v4, ", force = "

    .line 2023
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " :::: unmountVolume :: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", force = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2025
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2027
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2028
    .local v1, volState:Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unmounting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", force = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getVolumeState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2073
    :cond_0
    :goto_0
    return-void

    .line 2071
    :cond_1
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    .line 2072
    .local v0, ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public unregisterCallBackListener(Landroid/os/storage/IMountCallBackListener;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 1628
    iget-object v2, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1629
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountCallBackBinderListener;

    .line 1630
    .local v0, bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    iget-object v3, v0, Lcom/android/server/MountService$MountCallBackBinderListener;->mCallback:Landroid/os/storage/IMountCallBackListener;

    if-ne v3, p1, :cond_0

    .line 1631
    iget-object v3, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1632
    monitor-exit v2

    .line 1636
    .end local v0           #bl:Lcom/android/server/MountService$MountCallBackBinderListener;
    :goto_0
    return-void

    .line 1635
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1655
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1656
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 1657
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v3, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    if-ne v3, p1, :cond_0

    .line 1658
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1659
    monitor-exit v2

    .line 1663
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_0
    return-void

    .line 1662
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
