.class public Lcom/android/music/list/view/MpListGroupView;
.super Lcom/android/music/list/view/AbstractMpListView;
.source "MpListGroupView.java"


# instance fields
.field private mAdapter:Lcom/android/music/list/adapter/MpListGroupAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZI[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "listType"
    .parameter "hasCheck"
    .parameter "checkListType"
    .parameter "con"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/android/music/list/view/AbstractMpListView;-><init>(Landroid/content/Context;IZI[Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListGroupView;->setChoiceMode(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public getColumn()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 40
    .local v0, string:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    .line 41
    return-object v0
.end method

.method protected initAdapter(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "hasCheck"

    .prologue
    .line 28
    new-instance v0, Lcom/android/music/list/adapter/MpListGroupAdapter;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/music/list/adapter/MpListGroupAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/android/music/list/view/MpListGroupView;->mAdapter:Lcom/android/music/list/adapter/MpListGroupAdapter;

    .line 29
    iget-object v0, p0, Lcom/android/music/list/view/MpListGroupView;->mAdapter:Lcom/android/music/list/adapter/MpListGroupAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/MpListGroupView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    return-void
.end method
