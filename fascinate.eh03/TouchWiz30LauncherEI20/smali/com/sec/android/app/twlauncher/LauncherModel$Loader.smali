.class public Lcom/sec/android/app/twlauncher/LauncherModel$Loader;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Loader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;
    }
.end annotation


# instance fields
.field final mAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

.field final mSamsungAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel;)V
    .locals 1
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    .line 600
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    .line 606
    return-void
.end method

.method static synthetic access$602(Lcom/sec/android/app/twlauncher/LauncherModel$Loader;Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 592
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    return-object p1
.end method


# virtual methods
.method public startLoader(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 609
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 615
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 616
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mIsBusy:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$202(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    .line 618
    .local v0, oldThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;
    if-eqz v0, :cond_1

    .line 619
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    const/4 p2, 0x1

    .line 623
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->stopLocked()V

    .line 626
    :cond_1
    new-instance v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader;Landroid/content/Context;Ljava/lang/Thread;Z)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    .line 627
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->start()V

    .line 629
    .end local v0           #oldThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;
    :cond_2
    monitor-exit v1

    .line 630
    return-void

    .line 629
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    #getter for: Lcom/sec/android/app/twlauncher/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->stopLocked()V

    .line 637
    :cond_0
    monitor-exit v0

    .line 638
    return-void

    .line 637
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
