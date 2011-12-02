.class Lcom/android/music/player/activity/MusicPlayer$29;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
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
    .line 4399
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$29;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "optionPopupDialogId"
    .parameter "position"

    .prologue
    .line 4400
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$29;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOptionPopupSelectedListener:onClick(position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4402
    const/4 v2, 0x0

    .line 4405
    .local v2, ringUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$29;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3}, Lcom/android/music/player/activity/MusicPlayer;->access$1400(Lcom/android/music/player/activity/MusicPlayer;)[I

    move-result-object v3

    aget p2, v3, p2

    .line 4407
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$29;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v3, v3, Lcom/android/music/player/activity/MusicPlayer;->IDX_ALARM_TONE:I

    if-ne p2, v3, :cond_1

    .line 4408
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$29;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3, p2}, Lcom/android/music/player/activity/MusicPlayer;->access$1500(Lcom/android/music/player/activity/MusicPlayer;I)Landroid/net/Uri;

    move-result-object v2

    .line 4409
    if-eqz v2, :cond_0

    .line 4410
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$29;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v3, v2}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 4412
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "content://com.sec.android.app.clockpackage/alarmlist/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4416
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "set_alarm"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4417
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$29;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v3, v1}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    .line 4427
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4428
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$29;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/music/player/activity/MusicPlayer;->dismissDialog(I)V

    .line 4429
    return-void

    .line 4421
    :cond_1
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$29;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v3, v3, Lcom/android/music/player/activity/MusicPlayer;->IDX_VOICE_CALL_RINGTONE:I

    if-eq p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$29;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v3, v3, Lcom/android/music/player/activity/MusicPlayer;->IDX_INDIVIDUAL_RINGTONE:I

    if-eq p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$29;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget v3, v3, Lcom/android/music/player/activity/MusicPlayer;->IDX_VIDEO_CALL_RINGTONE:I

    if-ne p2, v3, :cond_0

    .line 4424
    :cond_2
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$29;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v3, p2}, Lcom/android/music/player/activity/MusicPlayer;->access$1500(Lcom/android/music/player/activity/MusicPlayer;I)Landroid/net/Uri;

    goto :goto_0
.end method
