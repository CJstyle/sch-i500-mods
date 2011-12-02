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
    .line 1292
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5
    .parameter "focusChange"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1294
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange : focusChange["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mPausedByTransientLossOfFocus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$800(Lcom/android/music/player/service/CorePlayerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    packed-switch p1, :pswitch_data_0

    .line 1322
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1298
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0, v4}, Lcom/android/music/player/service/CorePlayerService;->access$802(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 1300
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, v3}, Lcom/android/music/player/service/CorePlayerService;->pausePlay(Z)V

    goto :goto_0

    .line 1306
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0, v3}, Lcom/android/music/player/service/CorePlayerService;->access$802(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 1308
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, v3}, Lcom/android/music/player/service/CorePlayerService;->pausePlay(Z)V

    goto :goto_0

    .line 1313
    :pswitch_3
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0}, Lcom/android/music/player/service/CorePlayerService;->access$800(Lcom/android/music/player/service/CorePlayerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v0, v4}, Lcom/android/music/player/service/CorePlayerService;->access$802(Lcom/android/music/player/service/CorePlayerService;Z)Z

    .line 1316
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$6;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/16 v1, 0xc8

    const-wide/16 v2, 0x14

    invoke-static {v0, v1, v2, v3}, Lcom/android/music/player/service/CorePlayerService;->access$300(Lcom/android/music/player/service/CorePlayerService;IJ)V

    goto :goto_0

    .line 1296
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
