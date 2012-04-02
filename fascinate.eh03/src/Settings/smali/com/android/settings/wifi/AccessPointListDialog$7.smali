.class Lcom/android/settings/wifi/AccessPointListDialog$7;
.super Ljava/lang/Object;
.source "AccessPointListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AccessPointListDialog;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AccessPointListDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AccessPointListDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog$7;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 375
    sget-object v0, Lcom/android/settings/wifi/WifiDialog;->ConnectedPassword:Ljava/lang/String;

    const-string v1, " "

    if-eq v0, v1, :cond_0

    const-string v0, ""

    sput-object v0, Lcom/android/settings/wifi/WifiDialog;->ConnectedPassword:Ljava/lang/String;

    .line 376
    :cond_0
    const-string v0, "AccessPointListDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " netowrk id 1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog$7;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    #getter for: Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v2}, Lcom/android/settings/wifi/AccessPointListDialog;->access$300(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v2

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$7;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    #getter for: Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$300(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$7;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog$7;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    #getter for: Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/settings/wifi/AccessPointListDialog;->access$300(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v1

    #calls: Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->access$700(Lcom/android/settings/wifi/AccessPointListDialog;Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 386
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$7;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    #getter for: Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$500(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog$7;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    #getter for: Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/settings/wifi/AccessPointListDialog;->access$300(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v1

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 382
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$7;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog$7;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    #getter for: Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/settings/wifi/AccessPointListDialog;->access$300(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v1

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    #calls: Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->access$600(Lcom/android/settings/wifi/AccessPointListDialog;I)V

    goto :goto_0
.end method
