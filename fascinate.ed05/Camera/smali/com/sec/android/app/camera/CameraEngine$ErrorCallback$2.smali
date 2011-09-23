.class Lcom/sec/android/app/camera/CameraEngine$ErrorCallback$2;
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
    .line 539
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback$2;->this$1:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback$2;->this$1:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object p0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 541
    return-void
.end method
