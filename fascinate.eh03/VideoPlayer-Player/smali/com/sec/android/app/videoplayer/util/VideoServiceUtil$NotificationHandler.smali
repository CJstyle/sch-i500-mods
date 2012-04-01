.class Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$NotificationHandler;
.super Landroid/os/Handler;
.source "VideoServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1694
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1694
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$NotificationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1696
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 1697
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->handleNotification(II)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->access$200(II)V

    .line 1699
    :cond_0
    return-void
.end method
