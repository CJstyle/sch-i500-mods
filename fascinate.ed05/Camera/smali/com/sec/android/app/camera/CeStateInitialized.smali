.class public Lcom/sec/android/app/camera/CeStateInitialized;
.super Lcom/sec/android/app/camera/AbstractCeState;
.source "CeStateInitialized.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CeStateInitialized"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V
    .locals 0
    .parameter "cameraEngine"
    .parameter "requestQueue"
    .parameter "id"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/AbstractCeState;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public cancelRequest(Lcom/sec/android/app/camera/CeRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 36
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 39
    const-string v0, "CeStateInitialized"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleMessage - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 42
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 46
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->imageStoringCompleted(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 54
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 58
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 63
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_0
        0x4 -> :sswitch_4
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0x65 -> :sswitch_5
    .end sparse-switch
.end method

.method public handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
    .locals 4
    .parameter "request"

    .prologue
    const/4 v2, 0x1

    const-string v3, "CeStateInitialized"

    .line 70
    const-string v0, "CeStateInitialized"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandleRequest - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 138
    const-string v0, "CeStateInitialized"

    const-string v0, "invalid request id for current state"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 141
    const/4 v0, 0x0

    .end local p0
    :goto_0
    return v0

    .line 73
    .restart local p0
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 75
    goto :goto_0

    .line 77
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPreviewAsync()V

    move v0, v2

    .line 78
    goto :goto_0

    .line 80
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doTakePictureAsync()V

    move v0, v2

    .line 81
    goto :goto_0

    .line 83
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 85
    goto :goto_0

    .line 87
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doPostInitSync()V

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 89
    goto :goto_0

    .line 91
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doSetAllParamsSync()V

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 93
    goto :goto_0

    .line 95
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->doWaitAsync(I)V

    move v0, v2

    .line 96
    goto :goto_0

    .line 98
    .restart local p0
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartContinuousSync()V

    .line 99
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 100
    goto :goto_0

    .line 102
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopContinuousSync()V

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 104
    goto/16 :goto_0

    .line 106
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doShowReviewScreenSync()V

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 108
    goto/16 :goto_0

    .line 110
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doHideReviewScreenSync()V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 112
    goto/16 :goto_0

    .line 114
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doProcessBackSync()V

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 116
    goto/16 :goto_0

    .line 118
    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CeRequest;->getParam()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->doShutterTimerAsync(I)V

    move v0, v2

    .line 119
    goto/16 :goto_0

    .line 122
    .restart local p0
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->doPrepareVideoRecordingAsync()V

    move v0, v2

    .line 123
    goto/16 :goto_0

    .line 125
    .restart local p0
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartVideoRecordingAsync()V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    move v0, v2

    .line 127
    goto/16 :goto_0

    .line 129
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    move v0, v2

    .line 132
    goto/16 :goto_0

    .line 134
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CeStateInitialized;->getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->doWaitForSurfaceAsync()V

    move v0, v2

    .line 135
    goto/16 :goto_0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_c
        0x9 -> :sswitch_5
        0xc -> :sswitch_6
        0xd -> :sswitch_7
        0xe -> :sswitch_8
        0x14 -> :sswitch_9
        0x15 -> :sswitch_a
        0x16 -> :sswitch_b
        0x65 -> :sswitch_d
        0x66 -> :sswitch_e
        0x69 -> :sswitch_f
        0x6b -> :sswitch_10
    .end sparse-switch
.end method
