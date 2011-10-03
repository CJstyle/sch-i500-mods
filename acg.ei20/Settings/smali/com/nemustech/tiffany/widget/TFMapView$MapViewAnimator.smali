.class public Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;
.super Ljava/lang/Object;
.source "TFMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapViewAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;,
        Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:J = 0x5dcL

.field private static final NORMAL_PROGRESS:I = 0xa0

.field private static final STOP_PROGRESS:I = 0xa1


# instance fields
.field private mDuration:J

.field private mHandler:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;

.field private mListener:Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;

.field private mMsg:Landroid/os/Message;

.field private mScaleFactor:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;

.field private mStartTimeMil:J

.field private mView:Lcom/nemustech/tiffany/widget/TFMapView;

.field private startPos:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

.field private targetPos:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFMapView;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFMapView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 419
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mStartTimeMil:J

    .line 417
    iput-object v2, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mMsg:Landroid/os/Message;

    .line 420
    new-instance v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;-><init>(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->startPos:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    .line 421
    new-instance v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;-><init>(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->targetPos:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    .line 422
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mDuration:J

    .line 423
    new-instance v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;

    invoke-direct {v0, p0, v2}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;-><init>(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;Lcom/nemustech/tiffany/widget/TFMapView$1;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mHandler:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;

    .line 424
    return-void
.end method

.method static synthetic access$100(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 400
    iget-wide v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mStartTimeMil:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 400
    iget-wide v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mListener:Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->targetPos:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->startPos:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mScaleFactor:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)Lcom/nemustech/tiffany/widget/TFMapView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mView:Lcom/nemustech/tiffany/widget/TFMapView;

    return-object v0
.end method

.method private resetStartTime()V
    .locals 2

    .prologue
    .line 598
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mStartTimeMil:J

    .line 599
    return-void
.end method


# virtual methods
.method public setAnimationListener(Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mListener:Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;

    .line 500
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 434
    iput-wide p1, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mDuration:J

    .line 435
    return-void
.end method

.method public setEndPoint(FF)V
    .locals 1
    .parameter "endX"
    .parameter "endY"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->targetPos:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->axis:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 457
    return-void
.end method

.method public setEndScale(FF)V
    .locals 1
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->targetPos:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    iput p1, v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->scaleX:F

    .line 478
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->targetPos:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    iput p2, v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->scaleY:F

    .line 479
    return-void
.end method

.method public setScaleFactor(Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;)V
    .locals 0
    .parameter "scaleFactor"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mScaleFactor:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;

    .line 527
    return-void
.end method

.method public setStartPoint(FF)V
    .locals 1
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->startPos:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->axis:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 446
    return-void
.end method

.method public setStartScale(FF)V
    .locals 1
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->startPos:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    iput p1, v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->scaleX:F

    .line 467
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->startPos:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;

    iput p2, v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$PointState;->scaleY:F

    .line 468
    return-void
.end method

.method public startAnimation(Lcom/nemustech/tiffany/widget/TFMapView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->stopAnimation()V

    .line 510
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mView:Lcom/nemustech/tiffany/widget/TFMapView;

    .line 511
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mListener:Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mListener:Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;

    invoke-interface {v0, p0}, Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;->onAnimationStart(Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;)V

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->resetStartTime()V

    .line 516
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mHandler:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mMsg:Landroid/os/Message;

    .line 517
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mHandler:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 518
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mHandler:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator$AnimationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;->mMsg:Landroid/os/Message;

    .line 489
    return-void
.end method
