.class Lcom/sec/android/app/videoplayer/activity/VideoList$14;
.super Ljava/lang/Object;
.source "VideoList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/VideoList;
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
    .line 1488
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$14;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$14;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$14;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->popupLowBattery(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$600(Lcom/sec/android/app/videoplayer/activity/VideoList;Landroid/content/Context;)V

    .line 1492
    return-void
.end method
