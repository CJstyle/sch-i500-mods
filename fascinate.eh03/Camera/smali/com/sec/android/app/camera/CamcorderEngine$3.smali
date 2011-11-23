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
    .line 666
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, -0x4

    const-string v4, "CamcorderEngine"

    .line 669
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$500(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/media/MediaRecorder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 670
    const-string v1, "CamcorderEngine"

    const-string v1, "MediaRecorder is not initialized."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 693
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$402(Lcom/sec/android/app/camera/CamcorderEngine;Z)Z

    .line 676
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$600(Lcom/sec/android/app/camera/CamcorderEngine;)V

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$500(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 680
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 681
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v1, "Could not start media recorder. "

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 684
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 685
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 688
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$3;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
