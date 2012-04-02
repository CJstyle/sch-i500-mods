.class Lcom/android/settings/wifi/WifiApSettings$34;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1347
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const-class v2, Lcom/android/settings/wifi/WifiApManageAllowedDevice;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1348
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiApSettings;->startActivity(Landroid/content/Intent;)V

    .line 1349
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$34;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1350
    return-void
.end method
