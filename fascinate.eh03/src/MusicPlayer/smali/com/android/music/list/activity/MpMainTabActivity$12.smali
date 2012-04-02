.class Lcom/android/music/list/activity/MpMainTabActivity$12;
.super Ljava/lang/Object;
.source "MpMainTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpMainTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpMainTabActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpMainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2628
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$12;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "optionPopupDialogId"
    .parameter "position"

    .prologue
    .line 2631
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$12;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v4}, Lcom/android/music/list/activity/MpMainTabActivity;->access$000(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;

    move-result-object v4

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

    .line 2636
    const/4 v3, 0x0

    .line 2639
    .local v3, ringUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$12;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v4}, Lcom/android/music/list/activity/MpMainTabActivity;->access$800(Lcom/android/music/list/activity/MpMainTabActivity;)[I

    move-result-object v4

    aget p2, v4, p2

    .line 2641
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$12;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget v4, v4, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_ALARM_TONE:I

    if-ne p2, v4, :cond_1

    .line 2642
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$12;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v4, p2}, Lcom/android/music/list/activity/MpMainTabActivity;->access$900(Lcom/android/music/list/activity/MpMainTabActivity;I)Landroid/net/Uri;

    move-result-object v3

    .line 2643
    if-eqz v3, :cond_0

    .line 2644
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$12;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v4}, Lcom/android/music/list/activity/MpMainTabActivity;->access$500(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v2

    .line 2646
    .local v2, mMusicDB:Lcom/android/music/common/data/MusicDB;
    invoke-virtual {v2, v3}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2648
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "content://com.sec.android.app.clockpackage/alarmlist/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2652
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "set_alarm"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2653
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$12;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v4, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 2664
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mMusicDB:Lcom/android/music/common/data/MusicDB;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2667
    :try_start_0
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$12;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/music/list/activity/MpMainTabActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2669
    :goto_1
    return-void

    .line 2657
    :cond_1
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$12;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget v4, v4, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VOICE_CALL_RINGTONE:I

    if-eq p2, v4, :cond_2

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$12;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget v4, v4, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_INDIVIDUAL_RINGTONE:I

    if-eq p2, v4, :cond_2

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$12;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget v4, v4, Lcom/android/music/list/activity/MpMainTabActivity;->IDX_VIDEO_CALL_RINGTONE:I

    if-ne p2, v4, :cond_0

    .line 2660
    :cond_2
    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$12;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v4, p2}, Lcom/android/music/list/activity/MpMainTabActivity;->access$900(Lcom/android/music/list/activity/MpMainTabActivity;I)Landroid/net/Uri;

    goto :goto_0

    .line 2668
    :catch_0
    move-exception v4

    goto :goto_1
.end method
