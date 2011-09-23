.class Lcom/sec/android/app/camera/CamcorderEngine$3;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderEngine;->doStartVideoRecordingAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x4

    const-string v6, "Could not start media recorder. "

    const-string v5, "CamcorderEngine"

    .line 666
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$400(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/media/MediaRecorder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 667
    const-string v1, "CamcorderEngine"

    const-string v1, "MediaRecorder is not initialized."

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 703
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$502(Lcom/sec/android/app/camera/CamcorderEngine;Z)Z

    .line 673
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$600(Lcom/sec/android/app/camera/CamcorderEngine;)V

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$400(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 702
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 678
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 679
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v1, "Could not start media recorder. "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 682
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 683
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 684
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 690
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 691
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v1, "Could not start media recorder. "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 694
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 695
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 698
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
