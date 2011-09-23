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


# static fields
.field private static final ITEMS_CHUNK:I = 0x6


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
    .line 573
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    .line 568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    .line 574
    return-void
.end method

.method static synthetic access$602(Lcom/sec/android/app/twlauncher/LauncherModel$Loader;Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    return-object p1
.end method


# virtual methods
.method public addAppWidgetArray(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "appWidgetInfo"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    return-void
.end method

.method public addFolderArray(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3
    .parameter "folderInfo"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    return-void
.end method

.method public addItemArray(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    return-void
.end method

.method public addSamsungWidgetArray(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 1
    .parameter "sWidgetInfo"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    const-string v2, "Launcher.Model"

    .line 1665
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mItems size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1900(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->dumpState()V

    .line 1671
    :goto_0
    return-void

    .line 1669
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v0, "mLoader.mLoaderThread=null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAppWidgetArray(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 3
    .parameter "appWidgetInfo"

    .prologue
    .line 641
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 642
    .local v1, widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 647
    .end local v1           #widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_1
    return-void
.end method

.method public removeFolderArray(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 5
    .parameter "folderInfo"

    .prologue
    .line 627
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    iget-wide v3, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 629
    .local v1, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 634
    .end local v1           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_1
    return-void
.end method

.method public removeItemArray(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 3
    .parameter "itemInfo"

    .prologue
    .line 613
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 614
    .local v1, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 619
    .end local v1           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_1
    return-void
.end method

.method public removeSamsungWidgetArray(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 3
    .parameter "sWidgetInfo"

    .prologue
    .line 654
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 655
    .local v1, sWidget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 660
    .end local v1           #sWidget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_1
    return-void
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 577
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 579
    :try_start_0
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startLoader isLaunching="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 584
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$202(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    .line 586
    .local v0, oldThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;
    if-eqz v0, :cond_1

    .line 587
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    const/4 p2, 0x1

    .line 591
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->stopLocked()V

    .line 594
    :cond_1
    new-instance v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader;Landroid/content/Context;Ljava/lang/Thread;Z)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    .line 595
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->start()V

    .line 597
    .end local v0           #oldThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;
    :cond_2
    monitor-exit v1

    .line 598
    return-void

    .line 597
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
    .line 601
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mLoaderThread:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->stopLocked()V

    .line 605
    :cond_0
    monitor-exit v0

    .line 606
    return-void

    .line 605
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
