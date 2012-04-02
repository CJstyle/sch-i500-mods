.class Lcom/android/music/common/util/PopupBg$4;
.super Landroid/content/BroadcastReceiver;
.source "PopupBg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/util/PopupBg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/util/PopupBg;


# direct methods
.method constructor <init>(Lcom/android/music/common/util/PopupBg;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/music/common/util/PopupBg$4;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, action:Ljava/lang/String;
    const-string v1, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    sget-boolean v1, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/music/common/util/PopupBg$4;->this$0:Lcom/android/music/common/util/PopupBg;

    iget-object v1, v1, Lcom/android/music/common/util/PopupBg;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/music/common/util/PopupBg$4;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-static {v2}, Lcom/android/music/common/util/PopupBg;->access$000(Lcom/android/music/common/util/PopupBg;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    iget-object v1, p0, Lcom/android/music/common/util/PopupBg$4;->this$0:Lcom/android/music/common/util/PopupBg;

    iget-object v1, v1, Lcom/android/music/common/util/PopupBg;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/music/common/util/PopupBg$4;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-static {v2}, Lcom/android/music/common/util/PopupBg;->access$000(Lcom/android/music/common/util/PopupBg;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/music/common/util/PopupBg$4;->this$0:Lcom/android/music/common/util/PopupBg;

    iget-object v1, v1, Lcom/android/music/common/util/PopupBg;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/music/common/util/PopupBg$4;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-static {v2}, Lcom/android/music/common/util/PopupBg;->access$000(Lcom/android/music/common/util/PopupBg;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
