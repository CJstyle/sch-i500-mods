.class Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$7;
.super Ljava/lang/Object;
.source "BookMarkDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->inNotifyDataSetChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$7;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    iput p2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$7;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 544
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$7;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$1400(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Landroid/widget/GridView;

    move-result-object v1

    .line 545
    .local v1, grid:Landroid/widget/GridView;
    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 546
    .local v0, firstVisible:I
    iget v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$7;->val$pos:I

    if-lt v2, v0, :cond_0

    iget v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$7;->val$pos:I

    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v2, v3, :cond_0

    .line 547
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$7;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->m_tag:Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$200(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->notifyDataSetChanged()V

    .line 548
    :cond_0
    return-void
.end method
