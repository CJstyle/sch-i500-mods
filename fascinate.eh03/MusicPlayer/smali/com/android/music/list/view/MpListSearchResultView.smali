.class public Lcom/android/music/list/view/MpListSearchResultView;
.super Landroid/widget/ListView;
.source "MpListSearchResultView.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "mCur"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p1, p0, Lcom/android/music/list/view/MpListSearchResultView;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/android/music/list/view/MpListSearchResultView;->mCursor:Landroid/database/Cursor;

    .line 22
    iget-object v0, p0, Lcom/android/music/list/view/MpListSearchResultView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListSearchResultView;->initAdapter(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected initAdapter(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    new-instance v0, Lcom/android/music/list/adapter/MpListSearchResultAdapter;

    iget-object v1, p0, Lcom/android/music/list/view/MpListSearchResultView;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p1, v1}, Lcom/android/music/list/adapter/MpListSearchResultAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/music/list/view/MpListSearchResultView;->mAdapter:Landroid/widget/ListAdapter;

    .line 29
    iget-object v0, p0, Lcom/android/music/list/view/MpListSearchResultView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListSearchResultView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    return-void
.end method
