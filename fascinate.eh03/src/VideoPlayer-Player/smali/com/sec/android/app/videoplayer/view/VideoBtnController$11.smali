.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;
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
    .line 1486
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1489
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1490
    .local v0, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1492
    .local v1, y:F
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionX:F
    invoke-static {v2, v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2302(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F

    .line 1493
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$11;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mVieoBtnSeekBarPosionY:F
    invoke-static {v2, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2402(Lcom/sec/android/app/videoplayer/view/VideoBtnController;F)F

    .line 1495
    const/4 v2, 0x0

    return v2
.end method
