.class final Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbstractCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraFirmwareUpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 821
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/app/camera/AbstractCameraActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 821
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 824
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.camerafirmware.CameraFirmwareService.UPDATE_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 829
    :cond_0
    return-void
.end method
