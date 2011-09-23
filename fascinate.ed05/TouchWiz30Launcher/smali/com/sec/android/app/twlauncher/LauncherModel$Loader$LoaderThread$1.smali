.class Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->waitForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)V
    .locals 0
    .parameter

    .prologue
    .line 743
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$1;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 744
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$1;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    monitor-enter v0

    .line 745
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$1;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->access$402(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Z)Z

    .line 747
    const-string v1, "Launcher.Model"

    const-string v2, "done with previous binding step"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$1;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 750
    monitor-exit v0

    .line 751
    return-void

    .line 750
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
