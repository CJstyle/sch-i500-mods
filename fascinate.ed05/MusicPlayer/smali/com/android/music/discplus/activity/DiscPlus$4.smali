.class Lcom/android/music/discplus/activity/DiscPlus$4;
.super Landroid/content/BroadcastReceiver;
.source "DiscPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/activity/DiscPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/activity/DiscPlus;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/activity/DiscPlus;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 451
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-virtual {v2}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/discplus/util/DiscPlusManager;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v1

    .line 453
    .local v1, mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {v1, v0}, Lcom/android/music/discplus/util/DiscPlusManager;->setMediaScannerReceive(Ljava/lang/String;)V

    .line 457
    :cond_0
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v2}, Lcom/android/music/discplus/activity/DiscPlus;->access$400(Lcom/android/music/discplus/activity/DiscPlus;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 459
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v2, v3}, Lcom/android/music/discplus/activity/DiscPlus;->access$502(Lcom/android/music/discplus/activity/DiscPlus;Z)Z

    .line 460
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-virtual {v2}, Lcom/android/music/discplus/activity/DiscPlus;->switchToMusicPlayer()V

    .line 470
    :cond_1
    :goto_0
    return-void

    .line 461
    :cond_2
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 462
    :cond_3
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v2, v3}, Lcom/android/music/discplus/activity/DiscPlus;->access$502(Lcom/android/music/discplus/activity/DiscPlus;Z)Z

    .line 463
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-virtual {v2}, Lcom/android/music/discplus/activity/DiscPlus;->switchToMusicPlayer()V

    goto :goto_0

    .line 464
    :cond_4
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 465
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v2, v3}, Lcom/android/music/discplus/activity/DiscPlus;->access$502(Lcom/android/music/discplus/activity/DiscPlus;Z)Z

    .line 466
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-virtual {v2}, Lcom/android/music/discplus/activity/DiscPlus;->switchToMusicPlayer()V

    goto :goto_0

    .line 467
    :cond_5
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus$4;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/music/discplus/activity/DiscPlus;->access$502(Lcom/android/music/discplus/activity/DiscPlus;Z)Z

    goto :goto_0
.end method