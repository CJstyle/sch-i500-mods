.class Lcom/android/music/player/activity/MusicPlayer$2;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/player/activity/MusicPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$2;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "cradle_dock_connected"

    .line 627
    const-string v2, "MusicPlayer"

    const-string v3, "OnSharedPreferenceChangeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v2, "cradle_dock_connected"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$2;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v2}, Lcom/android/music/player/activity/MusicPlayer;->access$200(Lcom/android/music/player/activity/MusicPlayer;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "cradle_dock_connected"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 630
    .local v0, isDockConnected:Z
    if-ne v0, v5, :cond_2

    .line 631
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$2;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v2}, Lcom/android/music/player/activity/MusicPlayer;->access$300(Lcom/android/music/player/activity/MusicPlayer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 633
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$2;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 634
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$2;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iput-boolean v5, v2, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerMode:Z

    .line 635
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$2;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v2}, Lcom/android/music/player/activity/MusicPlayer;->access$300(Lcom/android/music/player/activity/MusicPlayer;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020110

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 641
    :goto_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$2;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 642
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$2;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v2}, Lcom/android/music/player/activity/MusicPlayer;->access$300(Lcom/android/music/player/activity/MusicPlayer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 650
    .end local v0           #isDockConnected:Z
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_1
    return-void

    .line 638
    .restart local v0       #isDockConnected:Z
    :cond_1
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$2;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iput-boolean v4, v2, Lcom/android/music/player/activity/MusicPlayer;->mSpeakerMode:Z

    .line 639
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$2;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v2}, Lcom/android/music/player/activity/MusicPlayer;->access$300(Lcom/android/music/player/activity/MusicPlayer;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02010f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 647
    :cond_2
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$2;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v2}, Lcom/android/music/player/activity/MusicPlayer;->access$300(Lcom/android/music/player/activity/MusicPlayer;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
