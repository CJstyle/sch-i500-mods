.class Lcom/sec/android/app/videoplayer/activity/VideoList$5;
.super Ljava/lang/Object;
.source "VideoList.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/VideoList;->removeFileToListInfoArray()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V
    .locals 0
    .parameter

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$5;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/VideoList$5;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1004
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSelectedIdList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1006
    .local v0, checkedIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1008
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1010
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$5;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2000(Lcom/sec/android/app/videoplayer/activity/VideoList;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-virtual {v3, v4, v5, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->setRemoveFlag(JI)I

    .line 1011
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$5;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2000(Lcom/sec/android/app/videoplayer/activity/VideoList;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->deleteAll()I

    .line 1012
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1013
    add-int/lit8 v1, v1, -0x1

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1016
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1019
    .end local v1           #j:I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
