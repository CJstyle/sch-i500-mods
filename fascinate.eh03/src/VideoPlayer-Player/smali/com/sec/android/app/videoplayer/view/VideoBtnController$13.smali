.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .locals 0
    .parameter

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1600
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 1601
    .local v0, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 1603
    .local v1, y:F
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionX:F
    invoke-static {v2, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2702(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F

    .line 1604
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVolumeSeekBarPosionY:F
    invoke-static {v2, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2802(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F

    .line 1606
    const/4 v2, 0x0

    return v2
.end method
