.class Lcom/sec/android/app/twlauncher/Launcher$8;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 3892
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$8;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3896
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$8;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 3897
    .local v1, pm:Landroid/os/PowerManager;
    if-eqz v1, :cond_0

    .line 3898
    const-string v3, "Headset"

    invoke-virtual {v1, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 3899
    .local v2, wl:Landroid/os/PowerManager$WakeLock;
    if-eqz v2, :cond_0

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3901
    .end local v2           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$8;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$2900(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3902
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$8;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$2900(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 3903
    .local v0, curVolume:I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$8;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$2900(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    if-le v0, v8, :cond_1

    .line 3904
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$8;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$2900(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v7, v8, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3907
    .end local v0           #curVolume:I
    :cond_1
    return-void
.end method
