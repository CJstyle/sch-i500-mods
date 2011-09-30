.class Lcom/sec/android/app/camera/CameraEngine$1;
.super Landroid/os/CountDownTimer;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraEngine;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$1;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$1;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$1;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object p0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setShutterButtonLocked(Z)V

    .line 331
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 325
    return-void
.end method
