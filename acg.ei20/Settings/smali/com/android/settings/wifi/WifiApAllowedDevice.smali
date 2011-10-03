.class Lcom/android/settings/wifi/WifiApAllowedDevice;
.super Landroid/preference/Preference;
.source "WifiApAllowedDevice.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessPoint"


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

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const-string v2, "\""

    .line 83
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
    .line 88
    return-void
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 75
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

    .line 77
    sub-int v1, v0, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 79
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

.method update(Ljava/lang/String;)Z
    .locals 1
    .parameter "mac"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApAllowedDevice;->refresh()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApAllowedDevice;->notifyHierarchyChanged()V

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
