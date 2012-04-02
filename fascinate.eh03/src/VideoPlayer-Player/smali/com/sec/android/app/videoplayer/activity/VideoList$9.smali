.class Lcom/sec/android/app/videoplayer/activity/VideoList$9;
.super Ljava/lang/Object;
.source "VideoList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/VideoList;->inNotifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V
    .locals 0
    .parameter

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$9;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$9;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$700(Lcom/sec/android/app/videoplayer/activity/VideoList;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$9;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$700(Lcom/sec/android/app/videoplayer/activity/VideoList;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->notifyDataSetChanged()V

    .line 1217
    :cond_0
    return-void
.end method
