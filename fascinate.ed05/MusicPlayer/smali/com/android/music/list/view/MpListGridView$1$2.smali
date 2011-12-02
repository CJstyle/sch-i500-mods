.class Lcom/android/music/list/view/MpListGridView$1$2;
.super Ljava/lang/Object;
.source "MpListGridView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/view/MpListGridView$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/list/view/MpListGridView$1;


# direct methods
.method constructor <init>(Lcom/android/music/list/view/MpListGridView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/music/list/view/MpListGridView$1$2;->this$1:Lcom/android/music/list/view/MpListGridView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    .line 227
    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView$1$2;->this$1:Lcom/android/music/list/view/MpListGridView$1;

    iget-object v3, v3, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    invoke-static {v3}, Lcom/android/music/list/view/MpListGridView;->access$100(Lcom/android/music/list/view/MpListGridView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v2

    .line 229
    .local v2, musicDB:Lcom/android/music/common/data/MusicDB;
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView$1$2;->this$1:Lcom/android/music/list/view/MpListGridView$1;

    iget-object v3, v3, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget v3, v3, Lcom/android/music/list/view/MpListGridView;->mListType:I

    invoke-direct {v0, v3, v7}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 230
    .local v0, filter:Lcom/android/music/common/data/MpListFilter;
    const/4 v1, 0x0

    .line 231
    .local v1, mCon:I
    iget-object v3, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v7, v1, v6}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v5, v3, v4

    .line 232
    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView$1$2;->this$1:Lcom/android/music/list/view/MpListGridView$1;

    iget v3, v3, Lcom/android/music/list/view/MpListGridView$1;->val$iPlaylistID:I

    invoke-virtual {v2, v0, v3}, Lcom/android/music/common/data/MusicDB;->removeItem(Lcom/android/music/common/data/MpListFilter;I)Z

    .line 233
    return-void
.end method
