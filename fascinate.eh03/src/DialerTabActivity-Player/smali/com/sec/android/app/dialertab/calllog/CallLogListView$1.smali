.class Lcom/sec/android/app/dialertab/calllog/CallLogListView$1;
.super Landroid/database/DataSetObserver;
.source "CallLogListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogListView;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListView$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 17
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListView$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogListView;->setEnabled(Z)V

    .line 19
    return-void
.end method
