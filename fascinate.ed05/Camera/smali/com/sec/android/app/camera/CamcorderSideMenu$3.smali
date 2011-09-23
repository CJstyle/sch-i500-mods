.class Lcom/sec/android/app/camera/CamcorderSideMenu$3;
.super Ljava/lang/Object;
.source "CamcorderSideMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CamcorderSideMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderSideMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$3;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$3;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setAnimationEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$3;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenu()V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$3;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setAnimationEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu$3;->this$0:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopHideMenuTimer()V

    .line 152
    return-void
.end method
