.class Lcom/sec/android/app/videoplayer/activity/VideoList$2;
.super Ljava/lang/Object;
.source "VideoList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/VideoList;->setTouchListenr()V
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
    .line 556
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$2;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$2;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$800(Lcom/sec/android/app/videoplayer/activity/VideoList;)I

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$2;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->createListInfoArrayList()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$900(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    .line 564
    const/16 v0, 0x14

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    .line 565
    invoke-static {p3}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setMediaVideoList(I)V

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$2;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$2;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1000(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->startActivity(Landroid/content/Intent;)V

    .line 568
    :cond_0
    return-void
.end method
