.class Lcom/android/settings/wifi/WifiApAllowedDevice;
.super Landroid/preference/Preference;
.source "WifiApAllowedDevice.java"


# instance fields
.field private mMac:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "mac"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private refresh()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .parameter "preference"

    .prologue
    .line 55
    instance-of v2, p1, Lcom/android/settings/wifi/WifiApAllowedDevice;

    if-nez v2, :cond_0

    .line 56
    const/4 v2, 0x1

    .line 59
    :goto_0
    return v2

    .line 58
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/WifiApAllowedDevice;

    move-object v1, v0

    .line 59
    .local v1, other:Lcom/android/settings/wifi/WifiApAllowedDevice;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings/wifi/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApAllowedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApAllowedDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApAllowedDevice;->refresh()V

    .line 50
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 51
    return-void
.end method
