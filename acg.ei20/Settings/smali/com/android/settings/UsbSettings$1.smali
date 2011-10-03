.class Lcom/android/settings/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/settings/UsbSettings$1;->this$0:Lcom/android/settings/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/settings/UsbSettings$1;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v1}, Lcom/android/settings/UsbSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/UsbSettings$1;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v2}, Lcom/android/settings/UsbSettings;->getApplicationContext()Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 292
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getPlugType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/settings/UsbSettings$1;->this$0:Lcom/android/settings/UsbSettings;

    invoke-virtual {v1}, Lcom/android/settings/UsbSettings;->finish()V

    .line 295
    :cond_0
    return-void
.end method
