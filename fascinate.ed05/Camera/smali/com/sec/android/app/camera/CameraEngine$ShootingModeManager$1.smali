.class Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

.field final synthetic val$jpegData:[B

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLandroid/location/Location;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2237
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->val$jpegData:[B

    iput-object p3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1900(Lcom/sec/android/app/camera/CameraEngine;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2240
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$2000(Lcom/sec/android/app/camera/CameraEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2241
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->val$jpegData:[B

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->val$location:Landroid/location/Location;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->access$2100(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLandroid/location/Location;)Z

    .line 2242
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$2000(Lcom/sec/android/app/camera/CameraEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2243
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraEngine;->access$1900(Lcom/sec/android/app/camera/CameraEngine;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2245
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1900(Lcom/sec/android/app/camera/CameraEngine;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1900(Lcom/sec/android/app/camera/CameraEngine;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2247
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;->this$1:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1900(Lcom/sec/android/app/camera/CameraEngine;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2249
    const-string v0, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Shot2Shot] - Image saving End::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    return-void

    .line 2245
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
