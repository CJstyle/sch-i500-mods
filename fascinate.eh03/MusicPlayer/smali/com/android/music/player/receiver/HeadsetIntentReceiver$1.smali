.class final Lcom/android/music/player/receiver/HeadsetIntentReceiver$1;
.super Landroid/os/Handler;
.source "HeadsetIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/receiver/HeadsetIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 73
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_LONGPRESS_TIMEOUT message arrived. mIsHeadsetControlActive is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DISABLED"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->access$100(Ljava/lang/String;)V

    .line 75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 76
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    :goto_1
    invoke-static {}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->access$000()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    :goto_2
    invoke-static {v1}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->access$002(Z)Z

    .line 82
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-void

    .line 74
    :cond_1
    const-string v2, "ENABLED"

    goto :goto_0

    .line 79
    .restart local v0       #context:Landroid/content/Context;
    :cond_2
    const-string v1, "togglepause"

    invoke-static {v0, v1}, Lcom/android/music/player/receiver/HeadsetIntentReceiver;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method
