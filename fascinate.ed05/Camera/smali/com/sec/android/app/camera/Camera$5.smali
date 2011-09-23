.class Lcom/sec/android/app/camera/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->resetToDefaultSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2450
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraSettingsToDefault()V

    .line 2452
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->resetDim()V

    .line 2453
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateQuickViewButtonDimmed()V

    .line 2455
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 2460
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2461
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 2463
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$900(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/MenuBase;)V

    .line 2464
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$5;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 2465
    return-void
.end method
