.class public Lcom/verizon/settings/SecureSettings;
.super Ljava/lang/Object;
.source "SecureSettings.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SecureSettings"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/verizon/settings/SecureSettings;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public final putFloat(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Float;)Z
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/verizon/settings/SecureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/settings/SecureSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 31
    iget-object v0, p0, Lcom/verizon/settings/SecureSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.verizon.permissions.securesettings"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->checkVerizonAPIPermission(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public final putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/verizon/settings/SecureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/settings/SecureSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 37
    iget-object v0, p0, Lcom/verizon/settings/SecureSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.verizon.permissions.securesettings"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->checkVerizonAPIPermission(Ljava/lang/String;)V

    .line 38
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/verizon/settings/SecureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/settings/SecureSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 43
    iget-object v0, p0, Lcom/verizon/settings/SecureSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.verizon.permissions.securesettings"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->checkVerizonAPIPermission(Ljava/lang/String;)V

    .line 44
    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public final putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/verizon/settings/SecureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/settings/SecureSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 49
    iget-object v0, p0, Lcom/verizon/settings/SecureSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.verizon.permissions.securesettings"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->checkVerizonAPIPermission(Ljava/lang/String;)V

    .line 50
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
