.class Lcom/android/music/player/activity/MusicPlayer$CallListener;
.super Landroid/telephony/PhoneStateListener;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method private constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$CallListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/player/activity/MusicPlayer;Lcom/android/music/player/activity/MusicPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 724
    invoke-direct {p0, p1}, Lcom/android/music/player/activity/MusicPlayer$CallListener;-><init>(Lcom/android/music/player/activity/MusicPlayer;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 727
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$CallListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged(state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$CallListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v1}, Lcom/android/music/player/activity/MusicPlayer;->access$200(Lcom/android/music/player/activity/MusicPlayer;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "cradle_dock_connected"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 729
    .local v0, isDockConnected:Z
    packed-switch p1, :pswitch_data_0

    .line 742
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 743
    return-void

    .line 731
    :pswitch_0
    if-ne v0, v4, :cond_0

    .line 732
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$CallListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v1}, Lcom/android/music/player/activity/MusicPlayer;->access$300(Lcom/android/music/player/activity/MusicPlayer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 737
    :pswitch_1
    if-ne v0, v4, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$CallListener;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v1}, Lcom/android/music/player/activity/MusicPlayer;->access$300(Lcom/android/music/player/activity/MusicPlayer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
