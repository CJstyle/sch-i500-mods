.class Lcom/sec/android/app/dialertab/calllog/LogsListActivity$CallObserver;
.super Landroid/database/ContentObserver;
.source "LogsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "h"

    .prologue
    .line 703
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    .line 704
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 705
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)V

    .line 710
    return-void
.end method
