.class Lcom/sec/android/app/twlauncher/Launcher$9;
.super Landroid/os/Handler;
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
    .line 4263
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$9;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v2, "Launcher"

    .line 4265
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4287
    :cond_0
    :goto_0
    return-void

    .line 4268
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4269
    const-string v0, "Launcher"

    const-string v0, "uninstall succeeded"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$9;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3400(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    goto :goto_0

    .line 4271
    :cond_1
    const-string v0, "Launcher"

    const-string v0, "uninstall failed"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4279
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$9;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isDefaultIMEI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4280
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$9;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->setSomethingsInDefaultIMEI()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)V

    goto :goto_0

    .line 4265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
