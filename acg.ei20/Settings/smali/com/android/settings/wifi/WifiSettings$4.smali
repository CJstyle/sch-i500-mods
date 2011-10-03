.class Lcom/android/settings/wifi/WifiSettings$4;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

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

    .line 477
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 478
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 479
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 480
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v2, v0}, Lcom/android/settings/wifi/WifiSettings;->access$400(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 481
    .local v1, networkId:I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 482
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v2, v1}, Lcom/android/settings/wifi/WifiSettings;->access$600(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 483
    const-string v2, " "

    sput-object v2, Lcom/android/settings/wifi/WifiDialog;->ConnectedPassword:Ljava/lang/String;

    .line 484
    return-void
.end method
