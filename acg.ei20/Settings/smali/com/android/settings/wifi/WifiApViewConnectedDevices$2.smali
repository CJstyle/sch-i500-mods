.class Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;
.super Ljava/lang/Object;
.source "WifiApViewConnectedDevices.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApViewConnectedDevices;->onCreate(Landroid/os/Bundle;)V
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
    .line 145
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-static {v0, p3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$102(Lcom/android/settings/wifi/WifiApViewConnectedDevices;I)I

    .line 149
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$100(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->DeviceName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$202(Lcom/android/settings/wifi/WifiApViewConnectedDevices;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$100(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    iget-object v0, v0, Lcom/android/settings/wifi/ConnectedDevice;->MAC:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$302(Lcom/android/settings/wifi/WifiApViewConnectedDevices;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->showDialog(I)V

    .line 154
    return-void
.end method
