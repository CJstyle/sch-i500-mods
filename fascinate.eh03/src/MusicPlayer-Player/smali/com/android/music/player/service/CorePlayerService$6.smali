.class Lcom/android/music/player/service/CorePlayerService$6;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5
    .parameter "focusChange"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, "CorePlayerService"

    .line 730
    packed-switch p1, :pswitch_data_0

    .line 760
    :pswitch_0
    const-string v0, "CorePlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown audio focus change code,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 732
    :pswitch_1
    const-string v0, "CorePlayerService"

    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->access$1702(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 735
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->pause()V

    goto :goto_0

    .line 740
    :pswitch_2
    const-string v0, "CorePlayerService"

    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$100(Lcom/android/music/player/service/CorePlayerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 744
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0, v3}, Lcom/android/music/player/service/CorePlayerService;->access$1702(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0, v3}, Lcom/android/music/player/service/CorePlayerService;->access$1702(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 749
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->pause()V

    goto :goto_0

    .line 753
    :pswitch_3
    const-string v0, "CorePlayerService"

    const-string v0, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$1700(Lcom/android/music/player/service/CorePlayerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0, v1}, Lcom/android/music/player/service/CorePlayerService;->access$1702(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 756
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$1800(Lcom/android/music/player/service/CorePlayerService;)V

    goto :goto_0

    .line 730
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
