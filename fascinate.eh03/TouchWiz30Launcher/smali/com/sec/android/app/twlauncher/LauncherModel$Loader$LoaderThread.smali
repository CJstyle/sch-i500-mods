.class Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;
.super Ljava/lang/Thread;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mStopped:Z

.field private mWaitThread:Ljava/lang/Thread;

.field final synthetic this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader;Landroid/content/Context;Ljava/lang/Thread;Z)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "waitThread"
    .parameter "isLaunching"

    .prologue
    .line 707
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 708
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    .line 709
    iput-object p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 710
    iput-boolean p4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    .line 711
    return-void
.end method

.method private bindWorkspace()V
    .locals 11

    .prologue
    .line 1296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1300
    .local v6, t:J
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 1301
    .local v4, oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-nez v4, :cond_0

    .line 1303
    const-string v9, "Launcher.Model"

    const-string v10, "LoaderThread running with no launcher"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :goto_0
    return-void

    .line 1309
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$3;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$3;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1319
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1320
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 1321
    move v5, v3

    .line 1322
    .local v5, start:I
    add-int/lit8 v9, v3, 0x6

    if-gt v9, v0, :cond_1

    const/4 v9, 0x6

    move v1, v9

    .line 1323
    .local v1, chunkSize:I
    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;

    invoke-direct {v10, p0, v4, v5, v1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;II)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1320
    add-int/lit8 v3, v3, 0x6

    goto :goto_1

    .line 1322
    .end local v1           #chunkSize:I
    :cond_1
    sub-int v9, v0, v3

    move v1, v9

    goto :goto_2

    .line 1332
    .end local v5           #start:I
    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$5;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$5;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1341
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$6;

    invoke-direct {v10, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$6;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1349
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$7;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$7;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1362
    invoke-interface {v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v2

    .line 1363
    .local v2, currentScreen:I
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1365
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_4

    .line 1366
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1367
    .local v8, widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget v9, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v9, v2, :cond_3

    .line 1368
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$8;

    invoke-direct {v10, p0, v4, v8}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$8;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1365
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1379
    .end local v8           #widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 1380
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1381
    .restart local v8       #widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget v9, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-eq v9, v2, :cond_5

    .line 1382
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$9;

    invoke-direct {v10, p0, v4, v8}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$9;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1379
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1394
    .end local v8           #widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$10;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$10;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1404
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1406
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_8

    .line 1407
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 1408
    .local v8, widget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget v9, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v9, v2, :cond_7

    .line 1409
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$11;

    invoke-direct {v10, p0, v4, v8}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$11;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1406
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1420
    .end local v8           #widget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_a

    .line 1421
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 1422
    .restart local v8       #widget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget v9, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-eq v9, v2, :cond_9

    .line 1423
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$12;

    invoke-direct {v10, p0, v4, v8}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$12;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1420
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1435
    .end local v8           #widget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_a
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$13;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$13;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1445
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$14;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$14;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1456
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$15;

    invoke-direct {v10, p0, v6, v7}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$15;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;J)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z
    .locals 7
    .parameter "occupied"
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 907
    iget-wide v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v2, v6

    .line 928
    :goto_0
    return v2

    .line 911
    :cond_0
    iget v0, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .local v0, x:I
    :goto_1
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_3

    .line 912
    iget v1, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .local v1, y:I
    :goto_2
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 913
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    aget-object v2, p1, v2

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 914
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into cell ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") occupied by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    aget-object v4, p1, v4

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v2, 0x0

    goto :goto_0

    .line 912
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 911
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 923
    .end local v1           #y:I
    :cond_3
    iget v0, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    :goto_3
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_5

    .line 924
    iget v1, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .restart local v1       #y:I
    :goto_4
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_4

    .line 925
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    aget-object v2, p1, v2

    aget-object v2, v2, v0

    aput-object p2, v2, v1

    .line 924
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 923
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v1           #y:I
    :cond_5
    move v2, v6

    .line 928
    goto/16 :goto_0
.end method

.method private loadAllAppsByBatch()V
    .locals 29

    .prologue
    .line 1516
    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 1521
    if-nez v5, :cond_1

    .line 1523
    const-string v5, "Launcher.Model"

    const-string v6, "LoaderThread running with no launcher (loadAllAppsByBatch)"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_0
    :goto_0
    return-void

    .line 1527
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1528
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1531
    const/4 v6, 0x0

    .line 1532
    const/4 v9, 0x0

    .line 1533
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    const v11, 0x7fffffff

    .line 1538
    const/4 v12, 0x0

    .line 1539
    const/4 v13, -0x1

    move/from16 v27, v13

    move-object v13, v6

    move/from16 v6, v27

    move-object/from16 v28, v9

    move v9, v12

    move-object/from16 v12, v28

    .line 1540
    :goto_1
    if-ge v9, v11, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    move v14, v0

    if-nez v14, :cond_10

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v14, v0

    iget-object v14, v14, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v14}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1300(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 1542
    if-nez v9, :cond_13

    .line 1547
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AllAppsList;->clear()V

    .line 1549
    const/4 v6, 0x0

    invoke-virtual {v8, v7, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1555
    if-nez v6, :cond_2

    .line 1556
    monitor-exit v14

    goto :goto_0

    .line 1702
    :catchall_0
    move-exception v5

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1558
    :cond_2
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    .line 1562
    if-nez v11, :cond_3

    .line 1564
    monitor-exit v14

    goto :goto_0

    .line 1567
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v12, v0

    iget-object v12, v12, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1402(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v12, v0

    iget-object v12, v12, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v12}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1500(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v12

    if-nez v12, :cond_4

    move v12, v11

    .line 1582
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-static {v13}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v13

    move-object v15, v6

    move/from16 v27, v11

    move v11, v12

    move/from16 v12, v27

    .line 1588
    :goto_3
    const/4 v6, 0x0

    move/from16 v16, v9

    move v9, v6

    :goto_4
    move/from16 v0, v16

    move v1, v12

    if-ge v0, v1, :cond_5

    if-ge v9, v11, :cond_5

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v17

    new-instance v18, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1600(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v19

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/IconCache;)V

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/AllAppsList;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 1591
    add-int/lit8 v6, v16, 0x1

    .line 1588
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v6

    goto :goto_4

    .line 1572
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v12, v0

    iget-object v12, v12, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v12}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1500(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v12

    goto :goto_2

    .line 1595
    :cond_5
    const/16 v6, 0x2000

    invoke-virtual {v8, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v9, v0

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel;->mInstalledAppSet:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 1597
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 1598
    move-object v0, v6

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mInstalledAppSet:Ljava/util/HashSet;

    move-object/from16 v17, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1602
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1600(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/IconCache;->flush()V

    .line 1604
    if-eqz v13, :cond_b

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1606
    :cond_8
    const/4 v6, 0x0

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1607
    const/4 v6, 0x1

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1608
    const/4 v9, 0x2

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1609
    const/16 v19, 0x3

    move-object v0, v13

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1610
    const/16 v20, 0x4

    move-object v0, v13

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1612
    const/16 v21, 0x5

    move-object v0, v13

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/twlauncher/AllAppsList;->size()I

    move-result v22

    .line 1615
    const/16 v23, 0x0

    .line 1616
    const/16 v24, 0x0

    :goto_6
    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AllAppsList;->get(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v25

    .line 1618
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 1619
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    .line 1620
    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 1621
    move v0, v9

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 1622
    move/from16 v0, v19

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 1623
    move/from16 v0, v20

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1624
    move v0, v9

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1625
    move/from16 v0, v19

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1626
    move/from16 v0, v20

    move-object/from16 v1, v25

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1627
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 1629
    const-string v22, "Launcher.Model"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ApplicationInfo title="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " top="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " page="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " cell="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const/16 v22, 0x1

    .line 1638
    :goto_7
    if-nez v22, :cond_a

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->isStoredExternalStorageUnmounted(Landroid/content/ComponentName;)Z

    move-result v22

    if-nez v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->isStoredExternalStorageMounted(Landroid/content/ComponentName;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 1644
    :cond_9
    new-instance v17, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 1645
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 1646
    move v0, v9

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 1647
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 1648
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1649
    move-object v0, v6

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 1650
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1651
    const/high16 v9, 0x1020

    move-object/from16 v0, v17

    move-object v1, v6

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 1652
    const/4 v9, 0x0

    move v0, v9

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    .line 1653
    const-string v9, "default_application"

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1654
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 1659
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f020094

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v9, v0

    invoke-static {v6, v9}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v6

    new-instance v9, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    invoke-virtual {v6, v9}, Lcom/sec/android/app/twlauncher/AllAppsList;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 1670
    :cond_a
    :goto_9
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1673
    :cond_b
    move/from16 v0, v16

    move v1, v11

    if-gt v0, v1, :cond_f

    const/4 v6, 0x1

    .line 1674
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v9, v0

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v17

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v17

    new-instance v18, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v5

    move v3, v6

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1702
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1800(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v6

    if-lez v6, :cond_12

    move/from16 v0, v16

    move v1, v12

    if-ge v0, v1, :cond_12

    .line 1709
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1800(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v6

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move v6, v11

    move/from16 v9, v16

    move v11, v12

    move-object v12, v13

    move-object v13, v15

    .line 1710
    goto/16 :goto_1

    .line 1616
    :cond_c
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_6

    .line 1657
    :cond_d
    :try_start_3
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    goto/16 :goto_8

    .line 1667
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_9

    .line 1673
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 1710
    :catch_0
    move-exception v6

    move v6, v11

    move/from16 v9, v16

    move v11, v12

    move-object v12, v13

    move-object v13, v15

    goto/16 :goto_1

    .line 1714
    :cond_10
    if-eqz v12, :cond_11

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1716
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    move v5, v0

    if-nez v5, :cond_0

    .line 1717
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-static {v7, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    :cond_12
    move v6, v11

    move/from16 v9, v16

    move v11, v12

    move-object v12, v13

    move-object v13, v15

    goto/16 :goto_1

    :cond_13
    move-object v15, v13

    move-object v13, v12

    move v12, v11

    move v11, v6

    goto/16 :goto_3

    :cond_14
    move/from16 v22, v23

    goto/16 :goto_7
.end method

.method private loadAndBindAllApps()V
    .locals 3

    .prologue
    .line 1471
    monitor-enter p0

    .line 1472
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1100(Lcom/sec/android/app/twlauncher/LauncherModel;)Z

    move-result v0

    .line 1473
    .local v0, loaded:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1474
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    if-nez v0, :cond_1

    .line 1478
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAllAppsByBatch()V

    .line 1479
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v1, :cond_0

    .line 1480
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1474
    .end local v0           #loaded:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1484
    .restart local v0       #loaded:Z
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->onlyBindAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 3

    .prologue
    .line 746
    monitor-enter p0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel;)Z

    move-result v0

    .line 748
    .local v0, loaded:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$302(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 749
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    if-nez v0, :cond_0

    .line 756
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadWorkspace()V

    .line 757
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$302(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 765
    :goto_0
    return-void

    .line 749
    .end local v0           #loaded:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 764
    .restart local v0       #loaded:Z
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->bindWorkspace()V

    goto :goto_0
.end method

.method private loadWorkspace()V
    .locals 67

    .prologue
    .line 932
    const-wide/16 v62, 0x0

    .line 934
    .local v62, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v15, v0

    .line 935
    .local v15, context:Landroid/content/Context;
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 936
    .local v5, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v52

    .line 937
    .local v52, manager:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v66

    .line 938
    .local v66, widgets:Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v52 .. v52}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v47

    .line 939
    .local v47, isSafeMode:Z
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    .line 941
    .local v38, hostViews:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Landroid/appwidget/AppWidgetHostView;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .local v40, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 943
    .local v25, appInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move v6, v0

    const/4 v7, -0x1

    if-le v6, v7, :cond_0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object v6, v0

    if-eqz v6, :cond_0

    .line 944
    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object v7, v0

    move-object/from16 v0, v38

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto :goto_0

    .line 947
    .end local v25           #appInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :goto_1
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 949
    .local v57, sappInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 950
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    goto :goto_1

    .line 952
    .end local v57           #sappInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 955
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v50, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v6, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 960
    .local v10, c:Landroid/database/Cursor;
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    sget v7, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    sget v8, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    filled-new-array {v6, v7, v8}, [I

    move-result-object v6

    const-class v7, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, [[[Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 963
    .local v53, occupied:[[[Lcom/sec/android/app/twlauncher/ItemInfo;
    :try_start_0
    const-string v6, "_id"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 964
    .local v43, idIndex:I
    const-string v6, "intent"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 966
    .local v46, intentIndex:I
    const-string v6, "title"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 968
    .local v12, titleIndex:I
    const-string v6, "iconType"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 970
    .local v16, iconTypeIndex:I
    const-string v6, "icon"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 971
    .local v11, iconIndex:I
    const-string v6, "iconPackage"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 973
    .local v17, iconPackageIndex:I
    const-string v6, "iconResource"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 975
    .local v18, iconResourceIndex:I
    const-string v6, "container"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 977
    .local v33, containerIndex:I
    const-string v6, "itemType"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 979
    .local v49, itemTypeIndex:I
    const-string v6, "appWidgetId"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 981
    .local v27, appWidgetIdIndex:I
    const-string v6, "screen"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v59

    .line 983
    .local v59, screenIndex:I
    const-string v6, "cellX"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 985
    .local v29, cellXIndex:I
    const-string v6, "cellY"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 987
    .local v30, cellYIndex:I
    const-string v6, "spanX"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v60

    .line 989
    .local v60, spanXIndex:I
    const-string v6, "spanY"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v61

    .line 991
    .local v61, spanYIndex:I
    const-string v6, "uri"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v65

    .line 992
    .local v65, uriIndex:I
    const-string v6, "displayMode"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 1003
    .local v35, displayModeIndex:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    move v6, v0

    if-nez v6, :cond_e

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_e

    .line 1005
    :try_start_1
    move-object v0, v10

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 1007
    .local v48, itemType:I
    packed-switch v48, :pswitch_data_0

    goto :goto_2

    .line 1010
    :pswitch_0
    move-object v0, v10

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v45

    .line 1012
    .local v45, intentDescription:Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_2
    move-object/from16 v0, v45

    move v1, v6

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 1017
    .local v8, intent:Landroid/content/Intent;
    if-nez v48, :cond_5

    .line 1018
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v7, v52

    move-object v9, v15

    invoke-virtual/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v44

    .line 1026
    .local v44, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    :goto_3
    if-eqz v44, :cond_6

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v0, v6

    move-object v1, v15

    move-object/from16 v2, v44

    move-object v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ShortcutInfo;Landroid/database/Cursor;I)V

    .line 1029
    move-object v0, v8

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1030
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-wide v0, v6

    move-object/from16 v2, v44

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1031
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1032
    .local v32, container:I
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v44

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1033
    move-object v0, v10

    move/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v44

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1034
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v44

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1035
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v44

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1037
    move-object/from16 v0, v44

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move v6, v0

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 1039
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1044
    :cond_4
    packed-switch v32, :pswitch_data_1

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$800(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v37

    .line 1052
    .local v37, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object/from16 v0, v37

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 1241
    .end local v8           #intent:Landroid/content/Intent;
    .end local v32           #container:I
    .end local v37           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v44           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v45           #intentDescription:Ljava/lang/String;
    .end local v48           #itemType:I
    :catch_0
    move-exception v6

    move-object/from16 v36, v6

    .line 1242
    .local v36, e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "Launcher.Model"

    const-string v7, "Desktop items loading interrupted:"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1246
    .end local v11           #iconIndex:I
    .end local v12           #titleIndex:I
    .end local v16           #iconTypeIndex:I
    .end local v17           #iconPackageIndex:I
    .end local v18           #iconResourceIndex:I
    .end local v27           #appWidgetIdIndex:I
    .end local v29           #cellXIndex:I
    .end local v30           #cellYIndex:I
    .end local v33           #containerIndex:I
    .end local v35           #displayModeIndex:I
    .end local v36           #e:Ljava/lang/Exception;
    .end local v43           #idIndex:I
    .end local v46           #intentIndex:I
    .end local v49           #itemTypeIndex:I
    .end local v59           #screenIndex:I
    .end local v60           #spanXIndex:I
    .end local v61           #spanYIndex:I
    .end local v65           #uriIndex:I
    :catchall_0
    move-exception v6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1013
    .restart local v11       #iconIndex:I
    .restart local v12       #titleIndex:I
    .restart local v16       #iconTypeIndex:I
    .restart local v17       #iconPackageIndex:I
    .restart local v18       #iconResourceIndex:I
    .restart local v27       #appWidgetIdIndex:I
    .restart local v29       #cellXIndex:I
    .restart local v30       #cellYIndex:I
    .restart local v33       #containerIndex:I
    .restart local v35       #displayModeIndex:I
    .restart local v43       #idIndex:I
    .restart local v45       #intentDescription:Ljava/lang/String;
    .restart local v46       #intentIndex:I
    .restart local v48       #itemType:I
    .restart local v49       #itemTypeIndex:I
    .restart local v59       #screenIndex:I
    .restart local v60       #spanXIndex:I
    .restart local v61       #spanYIndex:I
    .restart local v65       #uriIndex:I
    :catch_1
    move-exception v36

    .local v36, e:Ljava/net/URISyntaxException;
    goto/16 :goto_2

    .line 1021
    .end local v36           #e:Ljava/net/URISyntaxException;
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v13, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v14, v10

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-static/range {v13 .. v20}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$700(Lcom/sec/android/app/twlauncher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v44

    .restart local v44       #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    goto/16 :goto_3

    .line 1046
    .restart local v32       #container:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1060
    .end local v32           #container:I
    :cond_6
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 1061
    .local v41, id:J
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading shortcut "

    .end local v8           #intent:Landroid/content/Intent;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", removing it"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/4 v6, 0x0

    move-wide/from16 v0, v41

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1068
    .end local v41           #id:J
    .end local v44           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v45           #intentDescription:Ljava/lang/String;
    :pswitch_2
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 1069
    .restart local v41       #id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object v0, v6

    move-wide/from16 v1, v41

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$800(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v37

    .line 1071
    .restart local v37       #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1073
    move-wide/from16 v0, v41

    move-object/from16 v2, v37

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1074
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1075
    .restart local v32       #container:I
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v37

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1076
    move-object v0, v10

    move/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v37

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1077
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v37

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1078
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v37

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1081
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1085
    packed-switch v32, :pswitch_data_2

    .line 1091
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1087
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1095
    .end local v32           #container:I
    .end local v37           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v41           #id:J
    :pswitch_4
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 1096
    .restart local v41       #id:J
    move-object v0, v10

    move/from16 v1, v65

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v64

    .line 1099
    .local v64, uri:Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual/range {v64 .. v64}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v55

    .line 1103
    .local v55, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v55, :cond_7

    if-nez v47, :cond_7

    .line 1104
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1106
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object v0, v6

    move-wide/from16 v1, v41

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$900(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v24

    .line 1108
    .local v24, liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    move-object v0, v10

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v45

    .line 1109
    .restart local v45       #intentDescription:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1110
    .restart local v8       #intent:Landroid/content/Intent;
    if-eqz v45, :cond_8

    .line 1112
    const/4 v6, 0x0

    :try_start_6
    move-object/from16 v0, v45

    move v1, v6

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v8

    .line 1118
    :cond_8
    :goto_5
    :try_start_7
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1119
    move-wide/from16 v0, v41

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1120
    move-object/from16 v0, v64

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 1121
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1122
    .restart local v32       #container:I
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1123
    move-object v0, v10

    move/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1124
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1125
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1126
    move-object v0, v8

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 1127
    move-object v0, v10

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    .line 1130
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v19, v15

    move-object/from16 v20, v10

    move/from16 v21, v16

    move/from16 v22, v17

    move/from16 v23, v18

    .line 1134
    invoke-static/range {v19 .. v24}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1000(Landroid/content/Context;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V

    .line 1137
    packed-switch v32, :pswitch_data_3

    .line 1142
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1139
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1148
    .end local v8           #intent:Landroid/content/Intent;
    .end local v24           #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .end local v32           #container:I
    .end local v41           #id:J
    .end local v45           #intentDescription:Ljava/lang/String;
    .end local v55           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v64           #uri:Landroid/net/Uri;
    :pswitch_6
    move-object v0, v10

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1149
    .local v26, appWidgetId:I
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v41, v0

    .line 1151
    .restart local v41       #id:J
    move-object/from16 v0, v66

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v54

    .line 1154
    .local v54, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v47, :cond_a

    if-eqz v54, :cond_9

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object v6, v0

    if-eqz v6, :cond_9

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    .line 1156
    :cond_9
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " appWidgetId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1160
    :cond_a
    new-instance v28, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1161
    .local v28, appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move-wide/from16 v0, v41

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1162
    move-object v0, v10

    move/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1163
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1164
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1165
    move-object v0, v10

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 1166
    move-object v0, v10

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 1168
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1169
    .restart local v32       #container:I
    const/16 v6, -0x64

    move/from16 v0, v32

    move v1, v6

    if-eq v0, v1, :cond_b

    .line 1170
    const-string v6, "Launcher.Model"

    const-string v7, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1174
    :cond_b
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    move-wide v0, v6

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1177
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1186
    .end local v26           #appWidgetId:I
    .end local v28           #appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    .end local v32           #container:I
    .end local v41           #id:J
    .end local v54           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_7
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 1188
    .restart local v41       #id:J
    new-instance v58, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-direct/range {v58 .. v58}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;-><init>()V

    .line 1189
    .local v58, sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    move-wide/from16 v0, v41

    move-object/from16 v2, v58

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1190
    move-object v0, v10

    move/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v58

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1191
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v58

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1192
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v58

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1193
    move-object v0, v10

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v58

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 1194
    move-object v0, v10

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v58

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 1195
    move-object v0, v10

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v58

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    .line 1197
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1198
    .restart local v32       #container:I
    const/16 v6, -0x64

    move/from16 v0, v32

    move v1, v6

    if-eq v0, v1, :cond_c

    .line 1199
    const-string v6, "Launcher.Model"

    const-string v7, "SamsungWidget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1203
    :cond_c
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v58

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1205
    move-object v0, v10

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v45

    .line 1206
    .restart local v45       #intentDescription:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1208
    .restart local v8       #intent:Landroid/content/Intent;
    const/4 v6, 0x0

    :try_start_8
    move-object/from16 v0, v45

    move v1, v6

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v8

    .line 1212
    :try_start_9
    move-object v0, v8

    move-object/from16 v1, v58

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 1215
    const/4 v6, 0x0

    move-object/from16 v0, v52

    move-object v1, v8

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v56

    .line 1216
    .local v56, ri:Landroid/content/pm/ResolveInfo;
    if-nez v56, :cond_d

    .line 1217
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t resolve SamsungWidget\'s activity. Deleting it. id:"

    .end local v8           #intent:Landroid/content/Intent;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 1209
    .end local v56           #ri:Landroid/content/pm/ResolveInfo;
    .restart local v8       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v36

    .restart local v36       #e:Ljava/net/URISyntaxException;
    goto/16 :goto_2

    .line 1222
    .end local v36           #e:Ljava/net/URISyntaxException;
    .restart local v56       #ri:Landroid/content/pm/ResolveInfo;
    :cond_d
    :try_start_a
    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v52

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 1229
    :try_start_b
    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, v58

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 1232
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v58

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1223
    :catch_3
    move-exception v6

    move-object/from16 v36, v6

    .line 1224
    .local v36, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SamsungWidget\'s apk has move to sdcard and unmounted. Deleting it. id:"

    .end local v8           #intent:Landroid/content/Intent;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_2

    .line 1246
    .end local v32           #container:I
    .end local v36           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v41           #id:J
    .end local v45           #intentDescription:Ljava/lang/String;
    .end local v48           #itemType:I
    .end local v56           #ri:Landroid/content/pm/ResolveInfo;
    .end local v58           #sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1249
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_f

    .line 1250
    sget-object v6, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v31

    .line 1253
    .local v31, client:Landroid/content/ContentProviderClient;
    const/16 v39, 0x0

    .local v39, i:I
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v34

    .end local v5           #contentResolver:Landroid/content/ContentResolver;
    .local v34, count:I
    :goto_7
    move/from16 v0, v39

    move/from16 v1, v34

    if-ge v0, v1, :cond_f

    .line 1254
    move-object/from16 v0, v50

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    .line 1260
    .restart local v41       #id:J
    const/4 v6, 0x0

    :try_start_c
    move-wide/from16 v0, v41

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v31

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4

    .line 1253
    :goto_8
    add-int/lit8 v39, v39, 0x1

    goto :goto_7

    .line 1262
    :catch_4
    move-exception v6

    move-object/from16 v36, v6

    .line 1263
    .local v36, e:Landroid/os/RemoteException;
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not remove id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1268
    .end local v31           #client:Landroid/content/ContentProviderClient;
    .end local v34           #count:I
    .end local v36           #e:Landroid/os/RemoteException;
    .end local v39           #i:I
    .end local v41           #id:J
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .end local p0
    :cond_10
    :goto_9
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1269
    .local v51, loadInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move-object/from16 v0, v51

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move v6, v0

    const/4 v7, -0x1

    if-le v6, v7, :cond_10

    .line 1270
    move-object/from16 v0, v51

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v38

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto :goto_9

    .line 1272
    .end local v51           #loadInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_11
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->clear()V

    .line 1290
    return-void

    .line 1113
    .restart local v5       #contentResolver:Landroid/content/ContentResolver;
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v24       #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .restart local v41       #id:J
    .restart local v45       #intentDescription:Ljava/lang/String;
    .restart local v48       #itemType:I
    .restart local v55       #providerInfo:Landroid/content/pm/ProviderInfo;
    .restart local v64       #uri:Landroid/net/Uri;
    .restart local p0
    :catch_5
    move-exception v6

    goto/16 :goto_5

    .line 1007
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1044
    :pswitch_data_1
    .packed-switch -0x64
        :pswitch_1
    .end packed-switch

    .line 1085
    :pswitch_data_2
    .packed-switch -0x64
        :pswitch_3
    .end packed-switch

    .line 1137
    :pswitch_data_3
    .packed-switch -0x64
        :pswitch_5
    .end packed-switch
.end method

.method private onlyBindAllApps()V
    .locals 4

    .prologue
    .line 1489
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 1490
    .local v1, oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-nez v1, :cond_0

    .line 1492
    const-string v2, "Launcher.Model"

    const-string v3, "LoaderThread running with no launcher (onlyBindAllApps)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :goto_0
    return-void

    .line 1497
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1499
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$16;

    invoke-direct {v3, p0, v1, v0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$16;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private waitForOtherThread()V
    .locals 2

    .prologue
    .line 725
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 726
    const/4 v0, 0x0

    .line 727
    .local v0, done:Z
    :goto_0
    if-nez v0, :cond_0

    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    const/4 v0, 0x1

    goto :goto_0

    .line 735
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 737
    .end local v0           #done:Z
    :cond_1
    return-void

    .line 731
    .restart local v0       #done:Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method isLaunching()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 802
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->waitForOtherThread()V

    .line 807
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 808
    .local v0, cbk:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    .line 812
    .local v1, loadWorkspaceFirst:Z
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 813
    :try_start_0
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 815
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    if-eqz v1, :cond_4

    .line 823
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAndBindWorkspace()V

    .line 830
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 831
    :try_start_1
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    if-eqz v3, :cond_0

    .line 832
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 834
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 837
    if-eqz v1, :cond_5

    .line 839
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAndBindAllApps()V

    .line 847
    :goto_3
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    .line 849
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 852
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->access$602(Lcom/sec/android/app/twlauncher/LauncherModel$Loader;Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    .line 853
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 861
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$2;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 866
    return-void

    .end local v1           #loadWorkspaceFirst:Z
    :cond_1
    move v1, v4

    .line 808
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    .restart local v1       #loadWorkspaceFirst:Z
    :cond_3
    move v3, v5

    .line 813
    goto :goto_1

    .line 815
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 826
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAndBindAllApps()V

    goto :goto_2

    .line 834
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 842
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAndBindWorkspace()V

    goto :goto_3

    .line 853
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 869
    monitor-enter p0

    .line 870
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    .line 871
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 872
    monitor-exit p0

    .line 873
    return-void

    .line 872
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    .locals 5
    .parameter "oldCallbacks"

    .prologue
    const/4 v4, 0x0

    .line 883
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 884
    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v2, :cond_0

    .line 885
    monitor-exit v1

    move-object v1, v4

    .line 901
    :goto_0
    return-object v1

    .line 888
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 889
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 892
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 893
    .local v0, callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 894
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 896
    :cond_2
    if-nez v0, :cond_3

    .line 897
    const-string v2, "Launcher.Model"

    const-string v3, "no mCallbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 901
    :cond_3
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 902
    .end local v0           #callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
