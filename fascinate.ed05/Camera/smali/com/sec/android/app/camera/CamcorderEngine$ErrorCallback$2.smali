.class Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback$2;
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
    .line 229
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback$2;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback$2;->this$1:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object p0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 231
    return-void
.end method
