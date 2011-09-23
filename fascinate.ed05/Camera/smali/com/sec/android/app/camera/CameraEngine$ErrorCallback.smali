.class public final Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCallback"
.end annotation


# static fields
.field private static final CAMERA_ERROR_MSG_NO_ERROR:I = 0x0

.field private static final CAMERA_ERROR_WRONG_FW:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 8
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "CameraEngine"

    .line 493
    const-string v3, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ErrorCallback.onError ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 498
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 499
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 500
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/CameraEngine;->access$602(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;

    .line 579
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 505
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 576
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->OpenHardwareFailed()V

    goto :goto_0

    .line 514
    :sswitch_1
    const-string v3, "gsm.default.esn"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, isDefaultEsn:Ljava/lang/String;
    const-string v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v5, :cond_2

    move v1, v5

    .line 518
    .local v1, defaultEsnState:Z
    :goto_1
    const-string v3, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onError : CAMERA_ERROR_WRONG_FW ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-boolean v4, v4, Lcom/sec/android/app/camera/CameraEngine;->mInformedAboutFirmwareVersion:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ESN default ? : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-boolean v3, v3, Lcom/sec/android/app/camera/CameraEngine;->mInformedAboutFirmwareVersion:Z

    if-nez v3, :cond_3

    .line 522
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 523
    .local v0, CamFirmwareWarn:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f07010a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 524
    const v3, 0x7f07010d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 525
    const v3, 0x7f07010b

    new-instance v4, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback$1;-><init>(Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 537
    const v3, 0x7f07010c

    new-instance v4, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback$2;-><init>(Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 543
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 544
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 545
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iput-boolean v5, v3, Lcom/sec/android/app/camera/CameraEngine;->mInformedAboutFirmwareVersion:Z

    goto :goto_0

    .end local v0           #CamFirmwareWarn:Landroid/app/AlertDialog$Builder;
    .end local v1           #defaultEsnState:Z
    :cond_2
    move v1, v7

    .line 515
    goto :goto_1

    .line 548
    .restart local v1       #defaultEsnState:Z
    :cond_3
    const-string v3, "CameraEngine"

    const-string v3, "onError : CAMERA_ERROR_WRONG_FW"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 505
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method
