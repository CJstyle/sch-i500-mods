.class Lcom/android/settings/wifi/WifiApSettings$22;
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
    .line 1154
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 1157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #setter for: Lcom/android/settings/wifi/WifiApSettings;->displayToastFlag:Z
    invoke-static {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->access$1202(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    .line 1159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$2100(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$2000(Lcom/android/settings/wifi/WifiApSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSsidText(Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$2100(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$2200(Lcom/android/settings/wifi/WifiApSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$2100(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$22;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    #getter for: Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$2300(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    .line 1166
    return-void
.end method
