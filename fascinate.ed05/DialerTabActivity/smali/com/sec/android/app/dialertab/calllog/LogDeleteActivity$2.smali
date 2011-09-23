.class Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$2;
.super Ljava/lang/Object;
.source "LogDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->startCheckProcessing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 251
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 253
    const/4 v0, 0x1

    .line 254
    .local v0, first:Z
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->areAllItemsEnabled()Z

    move-result v0

    .line 257
    :cond_1
    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$102(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;Z)Z

    goto :goto_0

    .line 262
    .end local v0           #first:Z
    :cond_2
    return-void
.end method
