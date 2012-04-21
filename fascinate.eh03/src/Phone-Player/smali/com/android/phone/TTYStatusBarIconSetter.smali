.class public Lcom/android/phone/TTYStatusBarIconSetter;
.super Landroid/content/BroadcastReceiver;
.source "TTYStatusBarIconSetter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 24
    .local v0, settingsTtyMode:I
    if-eqz v0, :cond_0

    .line 25
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/phone/TTYSettingsUtil;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 27
    :cond_0
    return-void
.end method
