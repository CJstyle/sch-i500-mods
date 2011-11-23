.class Lcom/sec/android/app/carcradle/CarCradleMain$5;
.super Landroid/content/BroadcastReceiver;
.source "CarCradleMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/carcradle/CarCradleMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/carcradle/CarCradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/carcradle/CarCradleMain;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sec/android/app/carcradle/CarCradleMain$5;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain$5;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-virtual {v0}, Lcom/sec/android/app/carcradle/CarCradleMain;->releaseReceiver()V

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain$5;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-virtual {v0}, Lcom/sec/android/app/carcradle/CarCradleMain;->finish()V

    .line 320
    return-void
.end method
