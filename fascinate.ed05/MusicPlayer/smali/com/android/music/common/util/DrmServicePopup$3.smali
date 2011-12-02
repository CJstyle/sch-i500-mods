.class Lcom/android/music/common/util/DrmServicePopup$3;
.super Ljava/lang/Object;
.source "DrmServicePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/util/DrmServicePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/util/DrmServicePopup;


# direct methods
.method constructor <init>(Lcom/android/music/common/util/DrmServicePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 371
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPlayListener:onClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v2, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    iget-object v2, v2, Lcom/android/music/common/util/DrmServicePopup;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    invoke-virtual {v2, v5}, Lcom/android/music/common/manager/MusicDrmManager;->setDrmPopupShown(Z)V

    .line 374
    const/4 v0, 0x0

    .line 376
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v2}, Lcom/android/music/common/util/DrmServicePopup;->access$400(Lcom/android/music/common/util/DrmServicePopup;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 377
    iget-object v2, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-virtual {v2}, Lcom/android/music/common/util/DrmServicePopup;->dismiss()V

    .line 378
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Enter from ListView"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v2, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v2}, Lcom/android/music/common/util/DrmServicePopup;->access$300(Lcom/android/music/common/util/DrmServicePopup;)Lcom/android/music/common/util/DrmPopupData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/music/common/util/DrmPopupData;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2, v6}, Lcom/android/music/list/view/AbstractMpListView;->playMusicInPopup(Z)V

    .line 417
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v2, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v2}, Lcom/android/music/common/util/DrmServicePopup;->access$400(Lcom/android/music/common/util/DrmServicePopup;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 384
    iget-object v2, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-virtual {v2}, Lcom/android/music/common/util/DrmServicePopup;->dismiss()V

    .line 385
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Play on ListView"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v2, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v2}, Lcom/android/music/common/util/DrmServicePopup;->access$300(Lcom/android/music/common/util/DrmServicePopup;)Lcom/android/music/common/util/DrmPopupData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/music/common/util/DrmPopupData;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2, v5}, Lcom/android/music/list/view/AbstractMpListView;->playMusicInPopup(Z)V

    goto :goto_0

    .line 390
    :cond_1
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mPlayListener.onClick:CorePlayerService.class"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v2}, Lcom/android/music/common/util/DrmServicePopup;->access$100(Lcom/android/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v2}, Lcom/android/music/common/util/DrmServicePopup;->access$500(Lcom/android/music/common/util/DrmServicePopup;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 399
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v2, "command"

    const-string v3, "com.android.music.musicservicecommand.prepare"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v2, "uri"

    iget-object v3, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v3}, Lcom/android/music/common/util/DrmServicePopup;->access$500(Lcom/android/music/common/util/DrmServicePopup;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v2, "bPlay"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 405
    iget-object v2, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v2}, Lcom/android/music/common/util/DrmServicePopup;->access$100(Lcom/android/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 413
    iget-object v2, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-virtual {v2}, Lcom/android/music/common/util/DrmServicePopup;->dismiss()V

    goto :goto_0

    .line 407
    :cond_2
    const-string v1, "mPlayListener.onClick:: mUri==null"

    .line 408
    .local v1, msg:Ljava/lang/String;
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method
