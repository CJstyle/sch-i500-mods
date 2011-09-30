.class Lcom/sec/android/app/twlauncher/Launcher$1;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const-string v6, "Launcher"

    .line 576
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 577
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 579
    const-string v4, "Launcher"

    const-string v4, "ACTION_SCREEN_OFF"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v4, "phone_lock_status"

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 581
    .local v2, result:Z
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$202(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    .line 594
    .end local v2           #result:Z
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 583
    const-string v4, "Launcher"

    const-string v4, "ACTION_USER_PRESENT"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->updateWallpaperVisiblity()V

    .line 585
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/Launcher;->access$300(Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$202(Lcom/sec/android/app/twlauncher/Launcher;Z)Z

    goto :goto_0

    .line 586
    :cond_2
    const-string v4, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 587
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v5, "launcher.db"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->deleteDatabase(Ljava/lang/String;)Z

    move-result v3

    .line 588
    .local v3, ret:Z
    const-string v4, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleted a database file = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$1;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/Launcher;->access$400(Lcom/sec/android/app/twlauncher/Launcher;)V

    goto :goto_0
.end method
