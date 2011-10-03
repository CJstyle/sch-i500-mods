.class Lcom/android/settings/wifi/WifiApSettings$43;
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
    .line 1550
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$43;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0xb

    .line 1552
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$43;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$2600(Lcom/android/settings/wifi/WifiApSettings;)V

    .line 1553
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$43;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1556
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$43;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->access$2700(Lcom/android/settings/wifi/WifiApSettings;I)V

    .line 1559
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$43;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$43;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 1574
    :goto_0
    return-void

    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$43;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1600(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$43;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 1564
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$43;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$1600(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1565
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$43;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 1568
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$43;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1569
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$43;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 1571
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$43;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0
.end method
