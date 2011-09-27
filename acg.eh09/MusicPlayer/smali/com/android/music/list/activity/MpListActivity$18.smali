.class Lcom/android/music/list/activity/MpListActivity$18;
.super Ljava/lang/Object;
.source "MpListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpListActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2592
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "optionPopupDialogId"
    .parameter "position"

    .prologue
    .line 2595
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v4, v4, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOptionPopupSelectedListener:onClick(position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    const/4 v3, 0x0

    .line 2610
    .local v3, ringUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v4}, Lcom/android/music/list/activity/MpListActivity;->access$500(Lcom/android/music/list/activity/MpListActivity;)[I

    move-result-object v4

    aget p2, v4, p2

    .line 2612
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v4, v4, Lcom/android/music/list/activity/MpListActivity;->IDX_ALARM_TONE:I

    if-ne p2, v4, :cond_1

    .line 2613
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v4, p2}, Lcom/android/music/list/activity/MpListActivity;->access$600(Lcom/android/music/list/activity/MpListActivity;I)Landroid/net/Uri;

    move-result-object v3

    .line 2614
    if-eqz v3, :cond_0

    .line 2615
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v4}, Lcom/android/music/list/activity/MpListActivity;->access$000(Lcom/android/music/list/activity/MpListActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v2

    .line 2617
    .local v2, mMusicDB:Lcom/android/music/common/data/MusicDB;
    invoke-virtual {v2, v3}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2619
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "content://com.sec.android.app.clockpackage/alarmlist/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2623
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "set_alarm"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2624
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v4, v1}, Lcom/android/music/list/activity/MpListActivity;->startActivity(Landroid/content/Intent;)V

    .line 2634
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mMusicDB:Lcom/android/music/common/data/MusicDB;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2635
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/music/list/activity/MpListActivity;->dismissDialog(I)V

    .line 2638
    return-void

    .line 2628
    :cond_1
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v4, v4, Lcom/android/music/list/activity/MpListActivity;->IDX_VOICE_CALL_RINGTONE:I

    if-eq p2, v4, :cond_2

    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v4, v4, Lcom/android/music/list/activity/MpListActivity;->IDX_INDIVIDUAL_RINGTONE:I

    if-eq p2, v4, :cond_2

    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v4, v4, Lcom/android/music/list/activity/MpListActivity;->IDX_VIDEO_CALL_RINGTONE:I

    if-ne p2, v4, :cond_0

    .line 2631
    :cond_2
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v4, p2}, Lcom/android/music/list/activity/MpListActivity;->access$600(Lcom/android/music/list/activity/MpListActivity;I)Landroid/net/Uri;

    goto :goto_0
.end method
