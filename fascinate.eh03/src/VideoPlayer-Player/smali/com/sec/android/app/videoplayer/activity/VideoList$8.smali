.class Lcom/sec/android/app/videoplayer/activity/VideoList$8;
.super Ljava/lang/Object;
.source "VideoList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/VideoList;->inNotifyDataSetChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/VideoList;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$8;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    iput p2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$8;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1201
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$8;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2400(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/widget/ListView;

    move-result-object v1

    .line 1202
    .local v1, twListView:Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1204
    .local v0, firstVisible:I
    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$8;->val$pos:I

    if-lt v2, v0, :cond_0

    iget v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$8;->val$pos:I

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v2, v3, :cond_0

    .line 1205
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$8;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$700(Lcom/sec/android/app/videoplayer/activity/VideoList;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->notifyDataSetChanged()V

    .line 1207
    :cond_0
    return-void
.end method
