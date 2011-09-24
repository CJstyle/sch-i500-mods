.class Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAllAppsByBatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

.field final synthetic val$added:Ljava/util/ArrayList;

.field final synthetic val$first:Z

.field final synthetic val$oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1677
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    iput-boolean p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$first:Z

    iput-object p4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$added:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1679
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1680
    .local v1, t:J
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->tryGetCallbacks(Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    move-result-object v0

    .line 1681
    .local v0, callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-eqz v0, :cond_1

    .line 1682
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$first:Z

    if-eqz v3, :cond_0

    .line 1683
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1702(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1684
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$added:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 1695
    :goto_0
    return-void

    .line 1686
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;->val$added:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1693
    :cond_1
    const-string v3, "Launcher.Model"

    const-string v4, "not binding apps: no Launcher activity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
