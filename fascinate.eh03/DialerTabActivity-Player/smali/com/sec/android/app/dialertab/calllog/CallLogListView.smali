.class public Lcom/sec/android/app/dialertab/calllog/CallLogListView;
.super Landroid/widget/ListView;
.source "CallLogListView.java"


# instance fields
.field private mRefreshObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogListView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogListView$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogListView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListView;->mRefreshObserver:Landroid/database/DataSetObserver;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogListView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogListView$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogListView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListView;->mRefreshObserver:Landroid/database/DataSetObserver;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogListView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogListView$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogListView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListView;->mRefreshObserver:Landroid/database/DataSetObserver;

    .line 24
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogListView;->setEnabled(Z)V

    .line 44
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListView;->mRefreshObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListView;->mRefreshObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 38
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    return-void
.end method
