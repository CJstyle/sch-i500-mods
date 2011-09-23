.class public Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;
.super Landroid/os/Handler;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ThumbNailUpdatingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-string v3, "CameraEngine"

    .line 302
    const-string v0, "CameraEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 305
    const-string v0, "Camera1018"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastCaptureData().getCaptureData() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v0, "CameraEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastOrientation is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$000(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v0, "CameraEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastContentUri is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraEngine;->access$000(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->updateThumbnail([BILandroid/net/Uri;)V

    .line 312
    :cond_0
    return-void
.end method
