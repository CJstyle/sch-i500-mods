.class Lcom/sec/android/app/camera/CameraEngine$ErrorCallback$1;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->onError(ILcom/sec/android/seccamera/SecCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 561
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 564
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 565
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.camerafirmware"

    const-string v2, "com.sec.android.app.camerafirmware.CameraFirmware_user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v1, "fromCamera"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 568
    return-void
.end method
