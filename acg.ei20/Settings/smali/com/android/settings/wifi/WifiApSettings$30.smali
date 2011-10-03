.class Lcom/android/settings/wifi/WifiApSettings$30;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1281
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1286
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 1288
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$2100(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$2000(Lcom/android/settings/wifi/WifiApSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSsidText(Ljava/lang/String;)V

    .line 1289
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$2100(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$2200(Lcom/android/settings/wifi/WifiApSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$2100(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings$30;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApSettings;->access$2300(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    .line 1292
    return-void
.end method
