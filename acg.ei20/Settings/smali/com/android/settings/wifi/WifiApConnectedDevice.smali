.class Lcom/android/settings/wifi/WifiApConnectedDevice;
.super Landroid/preference/Preference;
.source "WifiApConnectedDevice.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApConnectedDevice"


# instance fields
.field private mDeviceName:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mMac:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "DeviceName"
    .parameter "Mac"
    .parameter "Ip"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/android/settings/wifi/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const-string v2, "\""

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private refresh()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 82
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    sub-int v1, v0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 84
    sub-int v1, v0, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .parameter "preference"

    .prologue
    .line 60
    instance-of v2, p1, Lcom/android/settings/wifi/WifiApConnectedDevice;

    if-nez v2, :cond_0

    .line 61
    const/4 v2, 0x1

    .line 64
    :goto_0
    return v2

    .line 63
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/WifiApConnectedDevice;

    move-object v1, v0

    .line 64
    .local v1, other:Lcom/android/settings/wifi/WifiApConnectedDevice;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings/wifi/WifiApConnectedDevice;->mMac:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApConnectedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApConnectedDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApConnectedDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApConnectedDevice;->refresh()V

    .line 55
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 56
    return-void
.end method

.method update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "DeviceName"
    .parameter "Mac"
    .parameter "Ip"

    .prologue
    .line 68
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 69
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApConnectedDevice;->refresh()V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApConnectedDevice;->notifyHierarchyChanged()V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
