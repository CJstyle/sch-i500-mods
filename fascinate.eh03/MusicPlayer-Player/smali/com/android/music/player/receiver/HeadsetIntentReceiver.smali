.class public Lcom/android/music/player/receiver/HeadsetIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetIntentReceiver.java"


# static fields
.field private static mDown:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mIsHeadsetControlActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mIsHeadsetControlActive:Z

    .line 23
    sput-boolean v0, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mDown:Z

    .line 71
    new-instance v0, Lcom/android/music/player/receiver/HeadsetIntentReceiver$1;

    invoke-direct {v0}, Lcom/android/music/player/receiver/HeadsetIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mIsHeadsetControlActive:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    sput-boolean p0, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mIsHeadsetControlActive:Z

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-static {p0}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->sendCmdToCorePlayerService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 88
    return-void
.end method

.method public static resetHeadsetReceiver()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mIsHeadsetControlActive:Z

    .line 27
    sput-boolean v0, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mDown:Z

    .line 28
    sget-object v0, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 29
    return-void
.end method

.method private static sendCmdToCorePlayerService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCmdToCorePlayerService(), CMD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->log(Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "from"

    const-class v2, Lcom/android/music/player/receiver/HeadsetIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 33
    const-string v2, "onReceive() called"

    invoke-static {v2}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->log(Ljava/lang/String;)V

    .line 35
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 36
    .local v1, mAudioManager:Landroid/media/AudioManager;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 38
    .local v0, event:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x72

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyEvent.ACTION_DOWN,  mDown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mDown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsPlayerActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mIsHeadsetControlActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->log(Ljava/lang/String;)V

    .line 43
    sget-boolean v2, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mDown:Z

    if-nez v2, :cond_0

    .line 44
    sput-boolean v4, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mDown:Z

    .line 45
    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    sput-boolean v4, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mIsHeadsetControlActive:Z

    .line 50
    :cond_2
    sget-object v2, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 51
    sget-boolean v2, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mIsHeadsetControlActive:Z

    if-eqz v2, :cond_0

    .line 52
    const-string v2, "togglepause"

    invoke-static {p1, v2}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->sendCmdToCorePlayerService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyEvent.ACTION_UP, mIsPlayerActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mIsHeadsetControlActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->log(Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mDown:Z

    .line 58
    sget-object v2, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
