.class Lcom/sec/android/app/dialertab/calllog/LogsListActivity$3;
.super Ljava/lang/Object;
.source "LogsListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 641
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 632
    const-string v0, "CallLogCursorAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->setScroll(I)V

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v0, p2}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$802(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;I)I

    .line 637
    return-void
.end method
