.class Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback$1;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->onError(ILandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 222
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    const-string v2, "android_secret_code://7412365"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback$1;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object p0, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    return-void
.end method
