.class Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$7;
.super Ljava/lang/Object;
.source "LogDetailDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->startCheckProcessing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 431
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    const-wide/16 v1, 0x96

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 433
    const/4 v0, 0x1

    .line 434
    .local v0, first:Z
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->areAllItemsEnabled()Z

    move-result v0

    .line 437
    :cond_1
    if-eqz v0, :cond_0

    .line 438
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 439
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$702(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;Z)Z

    goto :goto_0

    .line 442
    .end local v0           #first:Z
    :cond_2
    return-void
.end method
