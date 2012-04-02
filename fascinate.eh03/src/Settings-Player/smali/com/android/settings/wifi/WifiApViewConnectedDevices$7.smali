.class Lcom/android/settings/wifi/WifiApViewConnectedDevices$7;
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
    .line 371
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$7;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$7;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->cRemove:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$500(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$7;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->dismissDialog(I)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$7;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->showDialog(I)V

    .line 377
    :cond_0
    return-void
.end method
