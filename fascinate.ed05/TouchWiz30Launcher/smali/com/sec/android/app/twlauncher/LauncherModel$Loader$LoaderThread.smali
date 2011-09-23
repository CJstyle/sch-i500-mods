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

.field private mLoadAndBindStepFinished:Z

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
    .line 675
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 676
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    .line 677
    iput-object p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 678
    iput-boolean p4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    .line 679
    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 668
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mLoadAndBindStepFinished:Z

    return p1
.end method

.method private bindWorkspace()V
    .locals 11

    .prologue
    .line 1264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1268
    .local v6, t:J
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 1269
    .local v4, oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-nez v4, :cond_0

    .line 1271
    const-string v9, "Launcher.Model"

    const-string v10, "LoaderThread running with no launcher"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :goto_0
    return-void

    .line 1277
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$3;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$3;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1287
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1288
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 1289
    move v5, v3

    .line 1290
    .local v5, start:I
    add-int/lit8 v9, v3, 0x6

    if-gt v9, v0, :cond_1

    const/4 v9, 0x6

    move v1, v9

    .line 1291
    .local v1, chunkSize:I
    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;

    invoke-direct {v10, p0, v4, v5, v1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;II)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1288
    add-int/lit8 v3, v3, 0x6

    goto :goto_1

    .line 1290
    .end local v1           #chunkSize:I
    :cond_1
    sub-int v9, v0, v3

    move v1, v9

    goto :goto_2

    .line 1300
    .end local v5           #start:I
    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$5;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$5;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1309
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$6;

    invoke-direct {v10, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$6;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1317
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$7;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$7;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1330
    invoke-interface {v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v2

    .line 1331
    .local v2, currentScreen:I
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1333
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_4

    .line 1334
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1335
    .local v8, widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget v9, v8, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->screen:I

    if-ne v9, v2, :cond_3

    .line 1336
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$8;

    invoke-direct {v10, p0, v4, v8}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$8;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1333
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1347
    .end local v8           #widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 1348
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1349
    .restart local v8       #widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget v9, v8, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->screen:I

    if-eq v9, v2, :cond_5

    .line 1350
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$9;

    invoke-direct {v10, p0, v4, v8}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$9;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1347
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1362
    .end local v8           #widget:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$10;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$10;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1372
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1374
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_8

    .line 1375
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 1376
    .local v8, widget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget v9, v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->screen:I

    if-ne v9, v2, :cond_7

    .line 1377
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$11;

    invoke-direct {v10, p0, v4, v8}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$11;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1374
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1388
    .end local v8           #widget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_a

    .line 1389
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 1390
    .restart local v8       #widget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget v9, v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->screen:I

    if-eq v9, v2, :cond_9

    .line 1391
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$12;

    invoke-direct {v10, p0, v4, v8}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$12;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1388
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1403
    .end local v8           #widget:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_a
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$13;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$13;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1413
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v9, v9, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$14;

    invoke-direct {v10, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$14;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1424
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

    .line 875
    iget-wide v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v2, v6

    .line 896
    :goto_0
    return v2

    .line 879
    :cond_0
    iget v0, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .local v0, x:I
    :goto_1
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_3

    .line 880
    iget v1, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .local v1, y:I
    :goto_2
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 881
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    aget-object v2, p1, v2

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 882
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

    .line 887
    const/4 v2, 0x0

    goto :goto_0

    .line 880
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 879
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 891
    .end local v1           #y:I
    :cond_3
    iget v0, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    :goto_3
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_5

    .line 892
    iget v1, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .restart local v1       #y:I
    :goto_4
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_4

    .line 893
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    aget-object v2, p1, v2

    aget-object v2, v2, v0

    aput-object p2, v2, v1

    .line 892
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 891
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v1           #y:I
    :cond_5
    move v2, v6

    .line 896
    goto/16 :goto_0
.end method

.method private loadAllAppsByBatch()V
    .locals 42

    .prologue
    .line 1484
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v31

    .line 1488
    .local v31, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 1489
    .local v23, oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-nez v23, :cond_0

    .line 1491
    const-string v37, "Launcher.Model"

    const-string v38, "LoaderThread running with no launcher (loadAllAppsByBatch)"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :goto_0
    return-void

    .line 1495
    :cond_0
    new-instance v22, Landroid/content/Intent;

    const-string v37, "android.intent.action.MAIN"

    const/16 v38, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1496
    .local v22, mainIntent:Landroid/content/Intent;
    const-string v37, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    .line 1499
    .local v25, packageManager:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    .line 1500
    .local v9, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v24, 0x0

    .line 1501
    .local v24, order:Landroid/database/Cursor;
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    .local v35, toRemove:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v5, 0x7fffffff

    .line 1506
    .local v5, N:I
    const/4 v15, 0x0

    .line 1507
    .local v15, i:I
    const/4 v10, -0x1

    .line 1508
    .local v10, batchSize:I
    :cond_1
    :goto_1
    if-ge v15, v5, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    move/from16 v37, v0

    if-nez v37, :cond_d

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1300(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v37

    monitor-enter v37

    .line 1510
    if-nez v15, :cond_4

    .line 1515
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/app/twlauncher/AllAppsList;->clear()V

    .line 1516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27

    .line 1517
    .local v27, qiaTime:J
    const/16 v38, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 1519
    const-string v38, "Launcher.Model"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "queryIntentActivities took "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v40

    sub-long v40, v40, v27

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "ms"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    if-nez v9, :cond_2

    .line 1523
    monitor-exit v37

    goto/16 :goto_0

    .line 1628
    .end local v27           #qiaTime:J
    :catchall_0
    move-exception v38

    monitor-exit v37
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v38

    .line 1525
    .restart local v27       #qiaTime:J
    :cond_2
    :try_start_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 1527
    const-string v38, "Launcher.Model"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "queryIntentActivities got "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " apps"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    if-nez v5, :cond_3

    .line 1531
    monitor-exit v37

    goto/16 :goto_0

    .line 1534
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1402(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1500(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v38

    if-nez v38, :cond_5

    .line 1537
    move v10, v5

    .line 1549
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v24

    .line 1552
    .end local v27           #qiaTime:J
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v33

    .line 1554
    .local v33, t2:J
    move/from16 v29, v15

    .line 1555
    .local v29, startIndex:I
    const/16 v20, 0x0

    .local v20, j:I
    :goto_3
    if-ge v15, v5, :cond_6

    move/from16 v0, v20

    move v1, v10

    if-ge v0, v1, :cond_6

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v38

    new-instance v39, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1600(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v40

    move-object/from16 v0, v39

    move-object v1, v6

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/IconCache;)V

    invoke-virtual/range {v38 .. v39}, Lcom/sec/android/app/twlauncher/AllAppsList;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 1558
    add-int/lit8 v15, v15, 0x1

    .line 1555
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 1539
    .end local v20           #j:I
    .end local v29           #startIndex:I
    .end local v33           #t2:J
    .restart local v27       #qiaTime:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1500(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v10

    goto :goto_2

    .line 1561
    .end local v27           #qiaTime:J
    .restart local v20       #j:I
    .restart local v29       #startIndex:I
    .restart local v33       #t2:J
    :cond_6
    if-eqz v24, :cond_a

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v38

    if-eqz v38, :cond_a

    .line 1563
    :cond_7
    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1564
    .local v17, id:J
    const/16 v38, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 1565
    .local v12, cn:Landroid/content/ComponentName;
    const/16 v38, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1566
    .local v36, topNum:I
    const/16 v38, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1567
    .local v26, pageNum:I
    const/16 v38, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1569
    .local v11, cellNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/app/twlauncher/AllAppsList;->size()I

    move-result v8

    .line 1570
    .local v8, appN:I
    const/16 v19, 0x0

    .line 1571
    .local v19, isExist:Z
    const/16 v21, 0x0

    .local v21, k:I
    :goto_4
    move/from16 v0, v21

    move v1, v8

    if-ge v0, v1, :cond_8

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AllAppsList;->get(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v7

    .line 1573
    .local v7, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object v0, v7

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v38, v0

    if-eqz v38, :cond_b

    .line 1574
    move-object v0, v7

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 1575
    .local v13, cn1:Landroid/content/ComponentName;
    invoke-virtual {v12, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_b

    .line 1576
    move/from16 v0, v36

    move-object v1, v7

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 1577
    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 1578
    iput v11, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1579
    move/from16 v0, v36

    move-object v1, v7

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1580
    move/from16 v0, v26

    move-object v1, v7

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1581
    iput v11, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1582
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object v1, v7

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 1584
    const-string v38, "Launcher.Model"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "ApplicationInfo title="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object v0, v7

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " top="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object v0, v7

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " page="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object v0, v7

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " cell="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object v0, v7

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    const/16 v19, 0x1

    .line 1593
    .end local v7           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v13           #cn1:Landroid/content/ComponentName;
    :cond_8
    if-nez v19, :cond_9

    .line 1594
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1596
    :cond_9
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v38

    if-nez v38, :cond_7

    .line 1599
    .end local v8           #appN:I
    .end local v11           #cellNum:I
    .end local v12           #cn:Landroid/content/ComponentName;
    .end local v17           #id:J
    .end local v19           #isExist:Z
    .end local v21           #k:I
    .end local v26           #pageNum:I
    .end local v36           #topNum:I
    :cond_a
    if-gt v15, v10, :cond_c

    const/16 v38, 0x1

    move/from16 v14, v38

    .line 1600
    .local v14, first:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v38

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object v6, v0

    .line 1601
    .local v6, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v38

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v38

    new-instance v39, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move v3, v14

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$17;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V

    invoke-virtual/range {v38 .. v39}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1625
    const-string v38, "Launcher.Model"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "batch of "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    sub-int v40, v15, v29

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " icons processed in "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v40

    sub-long v40, v40, v33

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "ms"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    monitor-exit v37
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1800(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v37

    if-lez v37, :cond_1

    if-ge v15, v5, :cond_1

    .line 1633
    :try_start_2
    const-string v37, "Launcher.Model"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "sleeping for "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1800(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "ms"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1800(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1636
    :catch_0
    move-exception v37

    goto/16 :goto_1

    .line 1571
    .end local v6           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v14           #first:Z
    .restart local v7       #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v8       #appN:I
    .restart local v11       #cellNum:I
    .restart local v12       #cn:Landroid/content/ComponentName;
    .restart local v17       #id:J
    .restart local v19       #isExist:Z
    .restart local v21       #k:I
    .restart local v26       #pageNum:I
    .restart local v36       #topNum:I
    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4

    .line 1599
    .end local v7           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v8           #appN:I
    .end local v11           #cellNum:I
    .end local v12           #cn:Landroid/content/ComponentName;
    .end local v17           #id:J
    .end local v19           #isExist:Z
    .end local v21           #k:I
    .end local v26           #pageNum:I
    .end local v36           #topNum:I
    :cond_c
    const/16 v38, 0x0

    move/from16 v14, v38

    goto/16 :goto_5

    .line 1640
    .end local v20           #j:I
    .end local v29           #startIndex:I
    .end local v33           #t2:J
    :cond_d
    if-eqz v24, :cond_e

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1642
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    move/from16 v37, v0

    if-nez v37, :cond_f

    .line 1643
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 1644
    .local v30, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 1649
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v30           #str:Ljava/lang/String;
    :cond_f
    const-string v37, "Launcher.Model"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "cached all "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " apps in "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v39

    sub-long v39, v39, v31

    invoke-virtual/range {v38 .. v40}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "ms"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1800(Lcom/sec/android/app/twlauncher/LauncherModel;)I

    move-result v39

    if-lez v39, :cond_10

    const-string v39, " (including delay)"

    :goto_7
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    const-string v39, ""

    goto :goto_7
.end method

.method private loadAndBindAllApps()V
    .locals 4

    .prologue
    .line 1439
    monitor-enter p0

    .line 1440
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1100(Lcom/sec/android/app/twlauncher/LauncherModel;)Z

    move-result v0

    .line 1441
    .local v0, loaded:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1442
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindAllApps loaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    if-nez v0, :cond_1

    .line 1446
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAllAppsByBatch()V

    .line 1447
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v1, :cond_0

    .line 1448
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1454
    :cond_0
    :goto_0
    return-void

    .line 1442
    .end local v0           #loaded:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1452
    .restart local v0       #loaded:Z
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->onlyBindAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 4

    .prologue
    .line 714
    monitor-enter p0

    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel;)Z

    move-result v0

    .line 716
    .local v0, loaded:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$302(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 717
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindWorkspace loaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    if-nez v0, :cond_0

    .line 724
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadWorkspace()V

    .line 725
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$302(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 733
    :goto_0
    return-void

    .line 717
    .end local v0           #loaded:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 732
    .restart local v0       #loaded:Z
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->bindWorkspace()V

    goto :goto_0
.end method

.method private loadWorkspace()V
    .locals 71

    .prologue
    .line 900
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v64

    .line 902
    .local v64, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v15, v0

    .line 903
    .local v15, context:Landroid/content/Context;
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 904
    .local v5, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    .line 905
    .local v53, manager:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v68

    .line 906
    .local v68, widgets:Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v53 .. v53}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v47

    .line 907
    .local v47, isSafeMode:Z
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    .line 909
    .local v38, hostViews:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Landroid/appwidget/AppWidgetHostView;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 910
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

    .line 911
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

    .line 912
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

    .line 913
    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto :goto_0

    .line 915
    .end local v25           #appInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 916
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

    move-result-object v59

    check-cast v59, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 917
    .local v59, sappInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v59

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 918
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v59

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    goto :goto_1

    .line 920
    .end local v59           #sappInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 923
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 925
    .local v50, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v6, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 928
    .local v10, c:Landroid/database/Cursor;
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    sget v7, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    sget v8, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    filled-new-array {v6, v7, v8}, [I

    move-result-object v6

    const-class v7, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, [[[Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 931
    .local v54, occupied:[[[Lcom/sec/android/app/twlauncher/ItemInfo;
    :try_start_0
    const-string v6, "_id"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 932
    .local v43, idIndex:I
    const-string v6, "intent"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 934
    .local v46, intentIndex:I
    const-string v6, "title"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 936
    .local v12, titleIndex:I
    const-string v6, "iconType"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 938
    .local v16, iconTypeIndex:I
    const-string v6, "icon"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 939
    .local v11, iconIndex:I
    const-string v6, "iconPackage"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 941
    .local v17, iconPackageIndex:I
    const-string v6, "iconResource"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 943
    .local v18, iconResourceIndex:I
    const-string v6, "container"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 945
    .local v33, containerIndex:I
    const-string v6, "itemType"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 947
    .local v49, itemTypeIndex:I
    const-string v6, "appWidgetId"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 949
    .local v27, appWidgetIdIndex:I
    const-string v6, "screen"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v61

    .line 951
    .local v61, screenIndex:I
    const-string v6, "cellX"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 953
    .local v29, cellXIndex:I
    const-string v6, "cellY"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 955
    .local v30, cellYIndex:I
    const-string v6, "spanX"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v62

    .line 957
    .local v62, spanXIndex:I
    const-string v6, "spanY"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v63

    .line 959
    .local v63, spanYIndex:I
    const-string v6, "uri"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v67

    .line 960
    .local v67, uriIndex:I
    const-string v6, "displayMode"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 971
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

    .line 973
    :try_start_1
    move-object v0, v10

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 975
    .local v48, itemType:I
    packed-switch v48, :pswitch_data_0

    goto :goto_2

    .line 978
    :pswitch_0
    move-object v0, v10

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v45

    .line 980
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

    .line 985
    .local v8, intent:Landroid/content/Intent;
    if-nez v48, :cond_5

    .line 986
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v7, v53

    move-object v9, v15

    invoke-virtual/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v44

    .line 994
    .local v44, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    :goto_3
    if-eqz v44, :cond_6

    .line 995
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

    .line 997
    move-object v0, v8

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 998
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-wide v0, v6

    move-object/from16 v2, v44

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->id:J

    .line 999
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1000
    .local v32, container:I
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v44

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->container:J

    .line 1001
    move-object v0, v10

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v44

    iput v0, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->screen:I

    .line 1002
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v44

    iput v0, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->cellX:I

    .line 1003
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v44

    iput v0, v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->cellY:I

    .line 1005
    move-object/from16 v0, v44

    iget v0, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->screen:I

    move v6, v0

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 1007
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1012
    :cond_4
    packed-switch v32, :pswitch_data_1

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$800(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v37

    .line 1020
    .local v37, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object/from16 v0, v37

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 1209
    .end local v8           #intent:Landroid/content/Intent;
    .end local v32           #container:I
    .end local v37           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v44           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v45           #intentDescription:Ljava/lang/String;
    .end local v48           #itemType:I
    :catch_0
    move-exception v6

    move-object/from16 v36, v6

    .line 1210
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

    .line 1214
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
    .end local v61           #screenIndex:I
    .end local v62           #spanXIndex:I
    .end local v63           #spanYIndex:I
    .end local v67           #uriIndex:I
    :catchall_0
    move-exception v6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v6

    .line 981
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
    .restart local v61       #screenIndex:I
    .restart local v62       #spanXIndex:I
    .restart local v63       #spanYIndex:I
    .restart local v67       #uriIndex:I
    :catch_1
    move-exception v36

    .local v36, e:Ljava/net/URISyntaxException;
    goto/16 :goto_2

    .line 989
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

    .line 1014
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

    .line 1028
    .end local v32           #container:I
    :cond_6
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 1029
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

    .line 1030
    const/4 v6, 0x0

    move-wide/from16 v0, v41

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1036
    .end local v41           #id:J
    .end local v44           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v45           #intentDescription:Ljava/lang/String;
    :pswitch_2
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 1037
    .restart local v41       #id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object v0, v6

    move-wide/from16 v1, v41

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$800(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v37

    .line 1039
    .restart local v37       #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->title:Ljava/lang/CharSequence;

    .line 1041
    move-wide/from16 v0, v41

    move-object/from16 v2, v37

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;->id:J

    .line 1042
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1043
    .restart local v32       #container:I
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v37

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;->container:J

    .line 1044
    move-object v0, v10

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v37

    iput v0, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->screen:I

    .line 1045
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v37

    iput v0, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->cellX:I

    .line 1046
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v37

    iput v0, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->cellY:I

    .line 1049
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1053
    packed-switch v32, :pswitch_data_2

    .line 1059
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->id:J

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1055
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1063
    .end local v32           #container:I
    .end local v37           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v41           #id:J
    :pswitch_4
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 1064
    .restart local v41       #id:J
    move-object v0, v10

    move/from16 v1, v67

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v66

    .line 1067
    .local v66, uri:Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual/range {v66 .. v66}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v56

    .line 1071
    .local v56, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v56, :cond_7

    if-nez v47, :cond_7

    .line 1072
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1074
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object v0, v6

    move-wide/from16 v1, v41

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$900(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v24

    .line 1076
    .local v24, liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    move-object v0, v10

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v45

    .line 1077
    .restart local v45       #intentDescription:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1078
    .restart local v8       #intent:Landroid/content/Intent;
    if-eqz v45, :cond_8

    .line 1080
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

    .line 1086
    :cond_8
    :goto_5
    :try_start_7
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    .line 1087
    move-wide/from16 v0, v41

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->id:J

    .line 1088
    move-object/from16 v0, v66

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 1089
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1090
    .restart local v32       #container:I
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->container:J

    .line 1091
    move-object v0, v10

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->screen:I

    .line 1092
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->cellX:I

    .line 1093
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->cellY:I

    .line 1094
    move-object v0, v8

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 1095
    move-object v0, v10

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    .line 1098
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v19, v15

    move-object/from16 v20, v10

    move/from16 v21, v16

    move/from16 v22, v17

    move/from16 v23, v18

    .line 1102
    invoke-static/range {v19 .. v24}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1000(Landroid/content/Context;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V

    .line 1105
    packed-switch v32, :pswitch_data_3

    .line 1110
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->id:J

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1107
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1116
    .end local v8           #intent:Landroid/content/Intent;
    .end local v24           #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .end local v32           #container:I
    .end local v41           #id:J
    .end local v45           #intentDescription:Ljava/lang/String;
    .end local v56           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v66           #uri:Landroid/net/Uri;
    :pswitch_6
    move-object v0, v10

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1117
    .local v26, appWidgetId:I
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v41, v0

    .line 1119
    .restart local v41       #id:J
    move-object/from16 v0, v68

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v55

    .line 1122
    .local v55, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v47, :cond_a

    if-eqz v55, :cond_9

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object v6, v0

    if-eqz v6, :cond_9

    move-object/from16 v0, v55

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    .line 1124
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

    .line 1126
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1128
    :cond_a
    new-instance v28, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1129
    .local v28, appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move-wide/from16 v0, v41

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->id:J

    .line 1130
    move-object v0, v10

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->screen:I

    .line 1131
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->cellX:I

    .line 1132
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->cellY:I

    .line 1133
    move-object v0, v10

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanX:I

    .line 1134
    move-object v0, v10

    move/from16 v1, v63

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanY:I

    .line 1136
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1137
    .restart local v32       #container:I
    const/16 v6, -0x64

    move/from16 v0, v32

    move v1, v6

    if-eq v0, v1, :cond_b

    .line 1138
    const-string v6, "Launcher.Model"

    const-string v7, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1142
    :cond_b
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    move-wide v0, v6

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->container:J

    .line 1145
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1154
    .end local v26           #appWidgetId:I
    .end local v28           #appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    .end local v32           #container:I
    .end local v41           #id:J
    .end local v55           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_7
    move-object v0, v10

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 1156
    .restart local v41       #id:J
    new-instance v60, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-direct/range {v60 .. v60}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;-><init>()V

    .line 1157
    .local v60, sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    move-wide/from16 v0, v41

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->id:J

    .line 1158
    move-object v0, v10

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v60

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->screen:I

    .line 1159
    move-object v0, v10

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v60

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->cellX:I

    .line 1160
    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v60

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->cellY:I

    .line 1161
    move-object v0, v10

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v60

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanX:I

    .line 1162
    move-object v0, v10

    move/from16 v1, v63

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v60

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanY:I

    .line 1163
    move-object v0, v10

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    move-object/from16 v1, v60

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    .line 1165
    move-object v0, v10

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1166
    .restart local v32       #container:I
    const/16 v6, -0x64

    move/from16 v0, v32

    move v1, v6

    if-eq v0, v1, :cond_c

    .line 1167
    const-string v6, "Launcher.Model"

    const-string v7, "SamsungWidget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1171
    :cond_c
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide v6, v0

    move-wide v0, v6

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->container:J

    .line 1173
    move-object v0, v10

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v45

    .line 1174
    .restart local v45       #intentDescription:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1176
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

    .line 1180
    :try_start_9
    move-object v0, v8

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 1183
    const/4 v6, 0x0

    move-object/from16 v0, v53

    move-object v1, v8

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v57

    .line 1184
    .local v57, ri:Landroid/content/pm/ResolveInfo;
    if-nez v57, :cond_d

    .line 1185
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

    .line 1186
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 1177
    .end local v57           #ri:Landroid/content/pm/ResolveInfo;
    .restart local v8       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v36

    .restart local v36       #e:Ljava/net/URISyntaxException;
    goto/16 :goto_2

    .line 1190
    .end local v36           #e:Ljava/net/URISyntaxException;
    .restart local v57       #ri:Landroid/content/pm/ResolveInfo;
    :cond_d
    :try_start_a
    move-object/from16 v0, v57

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v53

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 1197
    :try_start_b
    move-object/from16 v0, v57

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 1200
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->checkItemPlacement([[[Lcom/sec/android/app/twlauncher/ItemInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mSamsungAppWidgets:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1191
    :catch_3
    move-exception v6

    move-object/from16 v36, v6

    .line 1192
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

    .line 1193
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v50

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_2

    .line 1214
    .end local v32           #container:I
    .end local v36           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v41           #id:J
    .end local v45           #intentDescription:Ljava/lang/String;
    .end local v48           #itemType:I
    .end local v57           #ri:Landroid/content/pm/ResolveInfo;
    .end local v60           #sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1217
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_f

    .line 1218
    sget-object v6, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v31

    .line 1221
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

    .line 1222
    move-object/from16 v0, v50

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    .line 1224
    .restart local v41       #id:J
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
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

    .line 1221
    :goto_8
    add-int/lit8 v39, v39, 0x1

    goto :goto_7

    .line 1230
    :catch_4
    move-exception v6

    move-object/from16 v36, v6

    .line 1231
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

    .line 1236
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

    move-result-object v52

    check-cast v52, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1237
    .local v52, loadInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move-object/from16 v0, v52

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move v6, v0

    const/4 v7, -0x1

    if-le v6, v7, :cond_10

    .line 1238
    move-object/from16 v0, v52

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

    move-object/from16 v1, v52

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto :goto_9

    .line 1240
    .end local v52           #loadInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_11
    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->clear()V

    .line 1243
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loaded workspace in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v64

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const-string v6, "Launcher.Model"

    const-string v7, "workspace layout: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const/16 v70, 0x0

    .local v70, y:I
    :goto_a
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    move/from16 v0, v70

    move v1, v6

    if-ge v0, v1, :cond_16

    .line 1246
    const-string v51, ""

    .line 1247
    .local v51, line:Ljava/lang/String;
    const/16 v58, 0x0

    .local v58, s:I
    :goto_b
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    move/from16 v0, v58

    move v1, v6

    if-ge v0, v1, :cond_15

    .line 1248
    if-lez v58, :cond_12

    .line 1249
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 1251
    :cond_12
    const/16 v69, 0x0

    .local v69, x:I
    :goto_c
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    move/from16 v0, v69

    move v1, v6

    if-ge v0, v1, :cond_14

    .line 1252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v54, v58

    aget-object v7, v7, v69

    aget-object v7, v7, v70

    if-eqz v7, :cond_13

    const-string v7, "#"

    :goto_d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 1251
    add-int/lit8 v69, v69, 0x1

    goto :goto_c

    .line 1252
    :cond_13
    const-string v7, "."

    goto :goto_d

    .line 1247
    :cond_14
    add-int/lit8 v58, v58, 0x1

    goto :goto_b

    .line 1255
    .end local v69           #x:I
    :cond_15
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    add-int/lit8 v70, v70, 0x1

    goto :goto_a

    .line 1081
    .end local v51           #line:Ljava/lang/String;
    .end local v58           #s:I
    .end local v70           #y:I
    .restart local v5       #contentResolver:Landroid/content/ContentResolver;
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v24       #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .restart local v41       #id:J
    .restart local v45       #intentDescription:Ljava/lang/String;
    .restart local v48       #itemType:I
    .restart local v56       #providerInfo:Landroid/content/pm/ProviderInfo;
    .restart local v66       #uri:Landroid/net/Uri;
    .restart local p0
    :catch_5
    move-exception v6

    goto/16 :goto_5

    .line 1258
    .end local v5           #contentResolver:Landroid/content/ContentResolver;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v24           #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .end local v41           #id:J
    .end local v45           #intentDescription:Ljava/lang/String;
    .end local v48           #itemType:I
    .end local v56           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v66           #uri:Landroid/net/Uri;
    .end local p0
    .restart local v70       #y:I
    :cond_16
    return-void

    .line 975
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1012
    :pswitch_data_1
    .packed-switch -0x64
        :pswitch_1
    .end packed-switch

    .line 1053
    :pswitch_data_2
    .packed-switch -0x64
        :pswitch_3
    .end packed-switch

    .line 1105
    :pswitch_data_3
    .packed-switch -0x64
        :pswitch_5
    .end packed-switch
.end method

.method private onlyBindAllApps()V
    .locals 4

    .prologue
    .line 1457
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 1458
    .local v1, oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-nez v1, :cond_0

    .line 1460
    const-string v2, "Launcher.Model"

    const-string v3, "LoaderThread running with no launcher (onlyBindAllApps)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :goto_0
    return-void

    .line 1465
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1467
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

.method private waitForIdle()V
    .locals 6

    .prologue
    .line 739
    monitor-enter p0

    .line 740
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 742
    .local v0, workspaceWaitTime:J
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$1;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 754
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mLoadAndBindStepFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 756
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v2

    goto :goto_0

    .line 762
    :cond_0
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for previous step to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    monitor-exit p0

    .line 767
    return-void

    .line 766
    .end local v0           #workspaceWaitTime:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private waitForOtherThread()V
    .locals 2

    .prologue
    .line 693
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, done:Z
    :goto_0
    if-nez v0, :cond_0

    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    const/4 v0, 0x1

    goto :goto_0

    .line 703
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 705
    .end local v0           #done:Z
    :cond_1
    return-void

    .line 699
    .restart local v0       #done:Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    const-string v2, "Launcher.Model"

    .line 1656
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mWaitThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mIsLaunching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoader.mLoaderThread.mLoadAndBindStepFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mLoadAndBindStepFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v4, "Launcher.Model"

    .line 770
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->waitForOtherThread()V

    .line 775
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 776
    .local v0, cbk:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v3

    .line 780
    .local v1, loadWorkspaceFirst:Z
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 781
    :try_start_0
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    if-eqz v3, :cond_3

    move v3, v5

    :goto_1
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 783
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    if-eqz v1, :cond_4

    .line 790
    const-string v2, "Launcher.Model"

    const-string v2, "step 1: loading workspace"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAndBindWorkspace()V

    .line 798
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 799
    :try_start_1
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    if-eqz v3, :cond_0

    .line 800
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 802
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 805
    if-eqz v1, :cond_5

    .line 806
    const-string v2, "Launcher.Model"

    const-string v2, "step 2: loading all apps"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAndBindAllApps()V

    .line 815
    :goto_3
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    .line 817
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 820
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->access$602(Lcom/sec/android/app/twlauncher/LauncherModel$Loader;Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    .line 821
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 829
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$2;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 834
    return-void

    .end local v1           #loadWorkspaceFirst:Z
    :cond_1
    move v1, v5

    .line 776
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    .restart local v1       #loadWorkspaceFirst:Z
    :cond_3
    move v3, v6

    .line 781
    goto :goto_1

    .line 783
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 793
    :cond_4
    const-string v2, "Launcher.Model"

    const-string v2, "step 1: special: loading all apps"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAndBindAllApps()V

    goto :goto_2

    .line 802
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 809
    :cond_5
    const-string v2, "Launcher.Model"

    const-string v2, "step 2: special: loading workspace"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->loadAndBindWorkspace()V

    goto :goto_3

    .line 821
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
    .line 837
    monitor-enter p0

    .line 838
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    .line 839
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 840
    monitor-exit p0

    .line 841
    return-void

    .line 840
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

    .line 851
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 852
    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->mStopped:Z

    if-eqz v2, :cond_0

    .line 853
    monitor-exit v1

    move-object v1, v4

    .line 869
    :goto_0
    return-object v1

    .line 856
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 857
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 860
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    .line 861
    .local v0, callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 862
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 864
    :cond_2
    if-nez v0, :cond_3

    .line 865
    const-string v2, "Launcher.Model"

    const-string v3, "no mCallbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    monitor-exit v1

    move-object v1, v4

    goto :goto_0

    .line 869
    :cond_3
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 870
    .end local v0           #callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
