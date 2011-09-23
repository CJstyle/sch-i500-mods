.class Landroid/widget/CursorHandle$CheckCursorHandle;
.super Ljava/lang/Object;
.source "CursorHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckCursorHandle"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CursorHandle;


# direct methods
.method private constructor <init>(Landroid/widget/CursorHandle;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/CursorHandle;Landroid/widget/CursorHandle$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 690
    invoke-direct {p0, p1}, Landroid/widget/CursorHandle$CheckCursorHandle;-><init>(Landroid/widget/CursorHandle;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const v1, 0x77359400

    .line 693
    iget-object v0, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0, v1}, Landroid/widget/CursorHandle;->access$1102(Landroid/widget/CursorHandle;I)I

    .line 694
    iget-object v0, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0, v1}, Landroid/widget/CursorHandle;->access$1202(Landroid/widget/CursorHandle;I)I

    .line 695
    iget-object v0, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0, v1}, Landroid/widget/CursorHandle;->access$1302(Landroid/widget/CursorHandle;I)I

    .line 696
    iget-object v0, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0, v1}, Landroid/widget/CursorHandle;->access$1402(Landroid/widget/CursorHandle;I)I

    .line 701
    :goto_0
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :goto_1
    iget-object v0, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$200(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$ThreadControl;

    move-result-object v0

    monitor-enter v0

    .line 708
    :try_start_1
    iget-object v1, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$200(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$ThreadControl;

    move-result-object v1

    iget-boolean v1, v1, Landroid/widget/CursorHandle$ThreadControl;->threadRun:Z

    if-nez v1, :cond_0

    .line 709
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    :goto_2
    iget-object v0, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v0}, Landroid/widget/CursorHandle;->hideCursorHandleAndMenuPost()V

    .line 749
    return-void

    .line 713
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$200(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$ThreadControl;

    move-result-object v1

    iget-boolean v1, v1, Landroid/widget/CursorHandle$ThreadControl;->threadSleep:Z

    if-eqz v1, :cond_1

    .line 714
    monitor-exit v0

    goto :goto_0

    .line 742
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 718
    :cond_1
    :try_start_3
    iget-object v1, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$1500(Landroid/widget/CursorHandle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 721
    iget-object v1, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Landroid/widget/CursorHandle$CheckCursorHandle$1;

    invoke-direct {v2, p0}, Landroid/widget/CursorHandle$CheckCursorHandle$1;-><init>(Landroid/widget/CursorHandle$CheckCursorHandle;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 728
    iget-object v1, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$900(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$CursorHandleMenu;

    move-result-object v1

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$900(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$CursorHandleMenu;

    move-result-object v1

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$900(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$CursorHandleMenu;

    move-result-object v1

    iget-boolean v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsMenuShowing:Z

    if-eqz v1, :cond_2

    .line 730
    iget-object v1, p0, Landroid/widget/CursorHandle$CheckCursorHandle;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Landroid/widget/CursorHandle$CheckCursorHandle$2;

    invoke-direct {v2, p0}, Landroid/widget/CursorHandle$CheckCursorHandle$2;-><init>(Landroid/widget/CursorHandle$CheckCursorHandle;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 742
    :cond_2
    monitor-exit v0

    goto :goto_0

    .line 740
    :cond_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 702
    :catch_0
    move-exception v0

    goto :goto_1
.end method
