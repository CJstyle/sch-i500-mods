.class Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$2;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->storeImage([BLandroid/location/Location;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2404
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$2;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$2;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$2;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$2;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraEngine;->access$1400(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$2;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->updateThumbnail([BILandroid/net/Uri;)V

    .line 2407
    return-void
.end method
