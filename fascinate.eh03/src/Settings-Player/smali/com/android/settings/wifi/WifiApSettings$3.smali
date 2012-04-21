.class Lcom/android/settings/wifi/WifiApSettings$3;
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
    .line 632
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x4

    .line 634
    const-string v0, "WifiApSettings"

    const-string v1, "Turn Wifi off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #setter for: Lcom/android/settings/wifi/WifiApSettings;->wifi_turn_off_processing:I
    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->access$1102(Lcom/android/settings/wifi/WifiApSettings;I)I

    .line 638
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog()V

    .line 639
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 640
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$3;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->setWifiDisable()V

    .line 641
    return-void
.end method
