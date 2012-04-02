.class Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;
.super Ljava/lang/Object;
.source "WifiApViewConnectedDevices.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApViewConnectedDevices;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->dismissDialog(I)V

    .line 237
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    const-class v2, Lcom/android/settings/wifi/WifiApViewDeviceDetail;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    const-string v2, "IPADDR"

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->selected_position:I
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$100(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->IP:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v2, "MACADDR"

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->selected_position:I
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$100(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->MAC:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v2, "CON_TIME"

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->selected_position:I
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$100(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->Connected:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v2, "CON_DUR"

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->selected_position:I
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$100(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->Connection_duration:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->startActivity(Landroid/content/Intent;)V

    .line 245
    return-void
.end method
