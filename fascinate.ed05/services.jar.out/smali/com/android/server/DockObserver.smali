.class Lcom/android/server/DockObserver;
.super Landroid/os/UEventObserver;
.source "DockObserver.java"


# static fields
.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final LOG:Z

.field private static final MSG_DOCK_STATE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsPowerConnected:Z

.field private mKeyguardDisabled:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPowerConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerManager:Lcom/android/server/PowerManagerService;

.field private mPreviousDockState:I

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .locals 3
    .parameter "context"
    .parameter "pm"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 58
    iput v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 59
    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 67
    iput-object v2, p0, Lcom/android/server/DockObserver;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 68
    iput-boolean v1, p0, Lcom/android/server/DockObserver;->mKeyguardDisabled:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/server/DockObserver;->mIsPowerConnected:Z

    .line 70
    iput-object v2, p0, Lcom/android/server/DockObserver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 72
    new-instance v1, Lcom/android/server/DockObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mPowerConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v1, Lcom/android/server/DockObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 91
    iput-object p1, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/server/DockObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 93
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 94
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 96
    const-string v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {p0, v1}, Lcom/android/server/DockObserver;->startObserving(Ljava/lang/String;)V

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/server/DockObserver;->mPowerConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DockObserver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mIsPowerConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/DockObserver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mIsPowerConnected:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/DockObserver;->disableKeyGuardLock()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DockObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/DockObserver;->enableKeyGuardLock()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DockObserver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/DockObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method private disableKeyGuardLock()V
    .locals 3

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mKeyguardDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DockObserver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling the Keyguard lock, Power Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/DockObserver;->mIsPowerConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Dock State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mKeyguardDisabled:Z

    .line 174
    iget-object v0, p0, Lcom/android/server/DockObserver;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DockObserver;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 176
    monitor-exit v0

    .line 178
    :cond_0
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private enableKeyGuardLock()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 181
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mKeyguardDisabled:Z

    if-ne v0, v1, :cond_0

    .line 182
    sget-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reenbling the Keyguard lock, Power Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/DockObserver;->mIsPowerConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Dock State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/server/DockObserver;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DockObserver;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager$KeyguardLock;->reenableControlKeyguard(Z)V

    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mKeyguardDisabled:Z

    .line 188
    :cond_0
    return-void

    .line 185
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final init()V
    .locals 6

    .prologue
    const/16 v4, 0x400

    .line 138
    new-array v0, v4, [C

    .line 141
    .local v0, buffer:[C
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 142
    .local v2, file:Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 143
    .local v3, len:I
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    .end local v2           #file:Ljava/io/FileReader;
    .end local v3           #len:I
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 146
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v5, "This kernel does not have dock station support"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 148
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final update()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 109
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dock UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    monitor-enter p0

    .line 113
    :try_start_0
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, newState:I
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPreviousDockState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eq v1, v2, :cond_2

    .line 117
    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 118
    iput v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 119
    iget-boolean v2, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v2, :cond_2

    .line 123
    iget v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    if-ne v2, v5, :cond_0

    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eqz v2, :cond_1

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/android/server/DockObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/PowerManagerService;->userActivityWithForce(JZZ)V

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DockObserver;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1           #newState:I
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 135
    return-void

    .line 131
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 132
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse switch state from event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 153
    sget-object v1, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 157
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    sget-object v1, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DockObserver;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 159
    iget v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eqz v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/android/server/DockObserver;->update()V

    .line 162
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 163
    monitor-exit p0

    .line 164
    return-void

    .line 163
    .end local v0           #keyguardManager:Landroid/app/KeyguardManager;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
