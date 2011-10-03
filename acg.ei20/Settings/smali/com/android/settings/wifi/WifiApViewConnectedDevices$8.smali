.class Lcom/android/settings/wifi/WifiApViewConnectedDevices$8;
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
    .line 390
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$8;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$8;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$1002(Lcom/android/settings/wifi/WifiApViewConnectedDevices;Z)Z

    .line 393
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$8;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$500(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$8;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->dismissDialog(I)V

    .line 395
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$8;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->showDialog(I)V

    .line 396
    return-void
.end method
